import android.util.Log
import java.io.BufferedInputStream
import java.io.BufferedOutputStream
import java.io.File
import java.net.Socket

const val SERVER = "192.168.0.30"
const val PORT = 6000

class FileSenderThread(val outfile : String) : Thread() {
    val TAG = "CommThread"
    override fun run() {
        try {
            Log.i(TAG, outfile)
            val f = File(outfile)

            val socket = Socket(SERVER, PORT)

            val br = BufferedInputStream(socket.getInputStream())
            val bo = BufferedOutputStream(socket.getOutputStream())

            // 데이터 크기 전송

            val size = f.length()
            Log.i(TAG, "size: $size")
            bo.write(size.toString().toByteArray())
            bo.flush()

            // 준비상태 수신
            val ba = ByteArray(10)
            val len = br.read(ba)
            val isReady = String(ba, 0, len)
            Log.i(TAG, "상태: $isReady")

            if(isReady == "ready") {
                Log.i(TAG, "파일 전송 시작")
                f.inputStream().copyTo(bo)
                bo.flush()
                Log.i(TAG, "파일 전송 완료")
            }
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }
}