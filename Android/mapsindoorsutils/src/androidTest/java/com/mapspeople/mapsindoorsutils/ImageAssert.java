package com.mapspeople.mapsindoorsutils;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;

import java.io.ByteArrayOutputStream;

public class ImageAssert {

    private static Bitmap getBitmapOfDrawable(Drawable drawable) {
        BitmapDrawable bd = (BitmapDrawable) drawable;
        Bitmap bitmap = bd.getBitmap();
        return bitmap;
    }

    public static boolean areBitmapsEqual(Bitmap bitmap1, Bitmap bitmap2) {
        // compare two bitmaps by their bytes
        byte[] array1 = BitmapToByteArray(bitmap1);
        byte[] array2 = BitmapToByteArray(bitmap2);
        if (java.util.Arrays.equals(array1, array2)) {
            return true;
        }
        return false;
    }

    private static byte[] BitmapToByteArray(Bitmap bitmap) {
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, bos);
        byte[] result = bos.toByteArray();
        return result;
    }

}
