package ece.ryan.imageprocessor;

import android.graphics.Bitmap;
import android.graphics.Color;

import java.io.ByteArrayOutputStream;

import static java.lang.StrictMath.abs;

public class ImageDecoder {

    BaseDecoder bd;
    int [] pixels;
    int height, width;
    Bitmap mImageBitmap;

    private int colorScale = 500;

    public ImageDecoder() {
        bd = new BaseDecoder();
    }

    public Bitmap CreateImage (String imageStr) {

        height = 120;
        width = 160;

        // check if string is null
        if (imageStr == null || imageStr.length()== 0)
            return null;

        // set the bitmap dimensions based on the string length
        setDimensions(imageStr);

        // set the pixels based on the received characters
        pixels = ConvertStringToPixels(imageStr);

        mImageBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.RGB_565);
        ByteArrayOutputStream stream = new ByteArrayOutputStream();
        mImageBitmap.compress(Bitmap.CompressFormat.PNG, 100, stream);
        mImageBitmap.setPixels(pixels, 0, width,0,0, width, height);

        return mImageBitmap;
    }

    private int [] ConvertStringToPixels (String imageStr) {

        char imageChar [] = imageStr.toCharArray();
        int red, grn, blu;

        int [] pixels = new int[height * width];
        for (Integer i = 0; i < height*width; i+=2) {

            red = abs(bd.DecodeRed(imageChar[i], imageChar[i+1])) * colorScale;
            grn = abs(bd.DecodeGreen(imageChar[i], imageChar[i+1])) * colorScale;
            blu = abs(bd.DecodeBlue(imageChar[i], imageChar[i+1])) * colorScale;

            pixels[i] = Color.rgb(red, grn, blu);
        }

        return pixels;
    }

    private void setDimensions(String imageStr) {
        // Convert the string to pixel data
        // check the length of the string

        while (width*height > imageStr.length()) {
            width--;
            height--;
        }
    }
}
