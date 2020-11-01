package com.example.test

import android.content.Context
import android.view.View
import android.view.ViewGroup
import android.widget.AbsListView
import android.widget.BaseAdapter
import android.widget.ImageView


class ImageAdapter(private val mContext: Context) : BaseAdapter() {
    var imageArray = intArrayOf(
        R.drawable.images, R.drawable.images_2,
        R.drawable.images_3, R.drawable.images_4,
        R.drawable.images_5, R.drawable.images_6,
        R.drawable.images_7, R.drawable.images_8,
        R.drawable.images_9, R.drawable.images_10,
        R.drawable.images_1, R.drawable.images_12,
        R.drawable.images_13, R.drawable.images_14,
        R.drawable.images_15, R.drawable.images_16,
        R.drawable.images_17, R.drawable.images_18,
        R.drawable.images_19, R.drawable.images_20,
        R.drawable.images_21
    )

    override fun getCount(): Int {
        return imageArray.size
    }

    override fun getItem(position: Int): Any {
        return imageArray[position]
    }

    override fun getItemId(position: Int): Long {
        return 0
    }

    override fun getView(
        position: Int,
        convertView: View,
        parent: ViewGroup
    ): View {
        val imageView = ImageView(mContext)
        imageView.setImageResource(imageArray[position])
        imageView.scaleType = ImageView.ScaleType.CENTER_CROP
        imageView.layoutParams = AbsListView.LayoutParams(340, 350)
        return imageView
    }

}