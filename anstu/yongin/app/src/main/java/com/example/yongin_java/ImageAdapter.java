package com.example.yongin_java;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.ImageView;

public class ImageAdapter extends BaseAdapter {

    private Context mContext;

    public int[] imageArray = {
            R.drawable.images,R.drawable.images_2,
            R.drawable.images_3,R.drawable.images_4,
            R.drawable.images_5,R.drawable.images_6,
            R.drawable.images_7,R.drawable.images_8,
            R.drawable.images_9,R.drawable.images_10,
            R.drawable.images_11,R.drawable.images_12,
            R.drawable.images_13,R.drawable.images_14,
            R.drawable.images_15,R.drawable.images_16,
            R.drawable.images_17,R.drawable.images_18,
            R.drawable.images_19,R.drawable.images_20,
            R.drawable.images_21,

    };


    public ImageAdapter(Context mContext) {
        this.mContext = mContext;
    }

    @Override
    public int getCount() {
        return imageArray.length;
    }

    @Override
    public Object getItem(int position) {
        return imageArray[position];
    }

    @Override
    public long getItemId(int position) {
        return 0;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {


        ImageView imageView = new ImageView(mContext);
        imageView.setImageResource(imageArray[position]);
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        imageView.setLayoutParams(new GridView.LayoutParams(340,350));
        return imageView;
    }
}
