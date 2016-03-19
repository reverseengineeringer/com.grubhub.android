package com.taplytics;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.os.Build.VERSION;
import android.view.View;

public class ax
{
  @TargetApi(12)
  private static int a(Bitmap paramBitmap)
  {
    try
    {
      if (Build.VERSION.SDK_INT < 12) {
        return paramBitmap.getRowBytes() * paramBitmap.getHeight();
      }
      int i = paramBitmap.getByteCount();
      return i;
    }
    catch (Exception paramBitmap)
    {
      ck.b(ax.class.getSimpleName(), paramBitmap);
    }
    return 800000;
  }
  
  /* Error */
  public static String a(View paramView)
    throws org.json.JSONException
  {
    // Byte code:
    //   0: aload_0
    //   1: iconst_1
    //   2: invokevirtual 57	android/view/View:setDrawingCacheEnabled	(Z)V
    //   5: aload_0
    //   6: invokevirtual 61	android/view/View:getDrawingCache	()Landroid/graphics/Bitmap;
    //   9: astore_2
    //   10: aload_2
    //   11: ifnonnull +97 -> 108
    //   14: aload_0
    //   15: invokestatic 64	com/taplytics/ax:b	(Landroid/view/View;)Landroid/graphics/Bitmap;
    //   18: astore_2
    //   19: aload_0
    //   20: iconst_0
    //   21: invokevirtual 57	android/view/View:setDrawingCacheEnabled	(Z)V
    //   24: new 66	java/io/ByteArrayOutputStream
    //   27: dup
    //   28: invokespecial 67	java/io/ByteArrayOutputStream:<init>	()V
    //   31: astore 4
    //   33: aload_0
    //   34: invokevirtual 70	android/view/View:getId	()I
    //   37: iconst_m1
    //   38: if_icmpeq +123 -> 161
    //   41: aload_0
    //   42: invokevirtual 70	android/view/View:getId	()I
    //   45: istore_1
    //   46: aload_2
    //   47: invokestatic 72	com/taplytics/ax:a	(Landroid/graphics/Bitmap;)I
    //   50: ldc 73
    //   52: if_icmple +64 -> 116
    //   55: getstatic 79	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   58: astore_3
    //   59: new 81	java/lang/StringBuilder
    //   62: dup
    //   63: invokespecial 82	java/lang/StringBuilder:<init>	()V
    //   66: iload_1
    //   67: invokestatic 88	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   70: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   73: ldc 94
    //   75: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   78: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   81: astore_0
    //   82: aload_2
    //   83: aload_3
    //   84: bipush 60
    //   86: aload 4
    //   88: invokevirtual 101	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   91: pop
    //   92: aload 4
    //   94: invokevirtual 105	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   97: astore_2
    //   98: invokestatic 111	com/taplytics/gq:h	()Lcom/taplytics/gq;
    //   101: aload_0
    //   102: aload_2
    //   103: invokevirtual 114	com/taplytics/gq:a	(Ljava/lang/String;[B)V
    //   106: aload_0
    //   107: areturn
    //   108: aload_2
    //   109: invokestatic 118	android/graphics/Bitmap:createBitmap	(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    //   112: astore_2
    //   113: goto -94 -> 19
    //   116: getstatic 121	android/graphics/Bitmap$CompressFormat:PNG	Landroid/graphics/Bitmap$CompressFormat;
    //   119: astore_3
    //   120: new 81	java/lang/StringBuilder
    //   123: dup
    //   124: invokespecial 82	java/lang/StringBuilder:<init>	()V
    //   127: iload_1
    //   128: invokestatic 88	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   131: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   134: ldc 123
    //   136: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   139: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   142: astore_0
    //   143: goto -61 -> 82
    //   146: astore_2
    //   147: aconst_null
    //   148: astore_0
    //   149: ldc 125
    //   151: aload_2
    //   152: invokestatic 46	com/taplytics/ck:b	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   155: aload_0
    //   156: areturn
    //   157: astore_2
    //   158: goto -9 -> 149
    //   161: sipush 1010
    //   164: istore_1
    //   165: goto -119 -> 46
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	168	0	paramView	View
    //   45	120	1	i	int
    //   9	104	2	localObject	Object
    //   146	6	2	localException1	Exception
    //   157	1	2	localException2	Exception
    //   58	62	3	localCompressFormat	android.graphics.Bitmap.CompressFormat
    //   31	62	4	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    // Exception table:
    //   from	to	target	type
    //   0	10	146	java/lang/Exception
    //   14	19	146	java/lang/Exception
    //   19	46	146	java/lang/Exception
    //   46	82	146	java/lang/Exception
    //   108	113	146	java/lang/Exception
    //   116	143	146	java/lang/Exception
    //   82	106	157	java/lang/Exception
  }
  
  public static Bitmap b(View paramView)
  {
    Bitmap localBitmap = Bitmap.createBitmap(paramView.getWidth(), paramView.getHeight(), Bitmap.Config.ARGB_8888);
    Canvas localCanvas = new Canvas(localBitmap);
    paramView.layout(0, 0, paramView.getWidth(), paramView.getHeight());
    paramView.draw(localCanvas);
    return localBitmap;
  }
}

/* Location:
 * Qualified Name:     com.taplytics.ax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */