package com.mapspeople.mapsindoorsutils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.os.Environment;
import android.util.Log;

import junit.framework.TestCase;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;


import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URL;

public class BadgedIconTest {

    private static final String TAG = "BadgedIconTest";

    @Before
    public void setUp() throws Exception {

    }

    @Test
    public void testBadgedIcon() {

        String expectedBase64 = "iVBORw0KGgoAAAANSUhEUgAAAD8AAAA/CAYAAABXXxDfAAAABHNCSVQICAgIfAhkiAAAAaxJREFU\n" +
                "aIHtm1tuAyEMRT1VlgarDnubflRIaMrDxoaxhc9n0kQ9voTOkNsLDBNCuFvPpZSu0euHP6CRnnSN\n" +
                "1iBMyVOlS2oDMCPPES8ph/CReMPV9MS/3++/x2KMqPdVnzxVvKQ1hJy+WflS/CnZey6TUrp+JH7B\n" +
                "VYzEY4xVOeyy3/yZv5Gb1rV8RYYQ7g3yWOHaa+oJYpMdsVB+RnovC5aXjHQI8+mWe0IPweR1JI0V\n" +
                "BwAQ2u3tiQOILPt14pSlTxUHYCdvM/EMQ962OMC0vH3xycvbfeIptW9cOOKZiQ1vf+rPjW90N1dS\n" +
                "G06+qyMmr2O5cygPMwjJvyvOueIrMSkPwBsA8wzvffkMdQjM01s94k9ag/j7S9E/FzAv36cvr/oY\n" +
                "azWI5K2mnmmnf3TyLn8qLn8qLn8qLn8qfm1/KkfLmzzMwDH+jt+Tx2MlfVyzw5OnoT19fJ/Hk6ej\n" +
                "NX1ai4tRTtA2AHp9jdnM0DKAud6e6loKjvnColAV7a0B8Jqagj283QPgV1TVlhDbyPVyFxZ8pYcg\n" +
                "X0be0LfnDmFdA3vzPxvoqZw7juM4zgH8Ajo+pZDnq98vAAAAAElFTkSuQmCC\n";

        Bitmap expectedBadgedIcon = ImageUtil.convert(expectedBase64);

        Bitmap icon = Bitmap.createBitmap(48, 48, Bitmap.Config.ARGB_8888);

        Canvas canvas = new Canvas(icon);
        Paint p = new Paint();
        p.setColor(Color.BLUE);
        canvas.drawCircle(24,24,24,p);

        Config config = new ConfigBuilder(icon, "2").build();

        Bitmap badgedIcon = BadgedIcon.badgedIcon(config);

        Assert.assertNotNull(badgedIcon);

        Assert.assertTrue(ImageAssert.areBitmapsEqual(badgedIcon, expectedBadgedIcon));

        String base64 = ImageUtil.convert(badgedIcon);

        Log.d(TAG, "testBadgedIcon: Result Image: " + ImageUtil.convert(base64));

    }
}