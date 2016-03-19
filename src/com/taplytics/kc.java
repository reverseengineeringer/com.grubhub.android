package com.taplytics;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import org.json.JSONArray;
import org.json.JSONObject;

public class kc
{
  public static Bitmap a(Drawable paramDrawable)
  {
    int m = 1;
    try
    {
      if ((paramDrawable instanceof BitmapDrawable)) {
        return ((BitmapDrawable)paramDrawable).getBitmap();
      }
      int i;
      int j;
      if (!paramDrawable.getBounds().isEmpty())
      {
        i = paramDrawable.getBounds().width();
        if (paramDrawable.getBounds().isEmpty()) {
          break label111;
        }
        j = paramDrawable.getBounds().height();
        break label124;
      }
      for (;;)
      {
        int k;
        Bitmap localBitmap = Bitmap.createBitmap(k, i, Bitmap.Config.ARGB_8888);
        Canvas localCanvas = new Canvas(localBitmap);
        paramDrawable.setBounds(0, 0, localCanvas.getWidth(), localCanvas.getHeight());
        paramDrawable.draw(localCanvas);
        return localBitmap;
        i = paramDrawable.getIntrinsicWidth();
        break;
        label111:
        j = paramDrawable.getIntrinsicHeight();
        label124:
        do
        {
          i = j;
          break;
          k = i;
          if (i <= 0) {
            k = 1;
          }
        } while (j > 0);
        i = m;
      }
      return null;
    }
    catch (Exception paramDrawable) {}
  }
  
  public static File a(Object paramObject)
  {
    for (;;)
    {
      int j;
      try
      {
        JSONArray localJSONArray1 = (JSONArray)paramObject;
        kf localkf2 = kf.valueOf(a());
        Object localObject = null;
        String str = "";
        paramObject = "";
        int i = 0;
        if (i >= localJSONArray1.length()) {
          break label232;
        }
        JSONObject localJSONObject = fy.e().k().l().optJSONObject(((JSONObject)localJSONArray1.get(i)).optString("image_id"));
        JSONArray localJSONArray2 = localJSONObject.optJSONArray("deviceTags");
        j = 0;
        if (j < localJSONArray2.length())
        {
          kf localkf1 = kf.valueOf(localJSONArray2.optString(j));
          if (localkf1.equals(localkf2))
          {
            paramObject = localJSONObject.optString("filename");
            if (!((String)paramObject).equals(""))
            {
              localObject = paramObject;
              if (((String)paramObject).equals("")) {
                localObject = str;
              }
              return new File(fy.e().p().getFilesDir(), (String)localObject);
            }
          }
          else
          {
            if (localObject == null)
            {
              str = localJSONObject.optString("filename");
              localObject = localkf1;
              break label235;
            }
            if (localkf1.ordinal() <= ((kf)localObject).ordinal()) {
              break label226;
            }
            str = localJSONObject.optString("filename");
            localObject = localkf1;
            break label235;
          }
          i += 1;
          continue;
        }
      }
      catch (Exception paramObject)
      {
        ck.b("error retriving file: ", (Exception)paramObject);
        return new File("sofuh28yr2jkjdkjadal");
      }
      label226:
      continue;
      label232:
      continue;
      label235:
      j += 1;
    }
  }
  
  public static String a()
  {
    String str = "";
    float f = epgetResourcesgetDisplayMetricsdensity;
    if (f >= 0.75D) {
      str = "ldpi";
    }
    do
    {
      return str;
      if (f == 1.0F) {
        return "mdpi";
      }
      if ((f > 1.0F) && (f < 1.5D)) {
        return "tvdpi";
      }
      if (f == 1.5D) {
        return "hdpi";
      }
      if (f == 2.0F) {
        return "xhdpi";
      }
      if (f == 3.0F) {
        return "xxhdpi";
      }
    } while (f != 4.0F);
    return "xxxhdpi";
  }
  
  public static void a(String paramString1, String paramString2)
  {
    localFileOutputStream = null;
    for (;;)
    {
      try
      {
        paramString2 = new File(fy.e().p().getFilesDir(), paramString2);
        if ((!paramString2.exists()) && (!paramString2.isDirectory())) {
          paramString1 = new URL(paramString1).openStream();
        }
      }
      catch (Exception paramString1)
      {
        paramString1 = null;
        paramString2 = localFileOutputStream;
        continue;
      }
      try
      {
        localFileOutputStream = new FileOutputStream(paramString2);
        try
        {
          paramString2 = new byte['ࠀ'];
          int i = paramString1.read(paramString2);
          if (i != -1)
          {
            localFileOutputStream.write(paramString2, 0, i);
            continue;
            if (paramString2 == null) {}
          }
        }
        catch (Exception paramString2)
        {
          paramString2 = paramString1;
          paramString1 = localFileOutputStream;
        }
      }
      catch (Exception paramString2)
      {
        localFileOutputStream = null;
        paramString2 = paramString1;
        paramString1 = localFileOutputStream;
        continue;
      }
      try
      {
        paramString2.close();
        if (paramString1 != null) {
          paramString1.close();
        }
        return;
      }
      catch (Exception paramString1)
      {
        ck.b("something terrible has occurred in our silly nested io catch", paramString1);
        return;
      }
    }
    paramString1.close();
    localFileOutputStream.close();
  }
  
  public static Drawable b()
  {
    try
    {
      Object localObject = fy.e().p().getPackageManager();
      localObject = fy.e().p().getApplicationInfo().loadIcon((PackageManager)localObject);
      if (localObject != null) {
        return (Drawable)localObject;
      }
    }
    catch (Exception localException)
    {
      ck.c("problem getting app icon");
    }
    return null;
  }
  
  public static byte[] c()
  {
    Object localObject2 = null;
    try
    {
      Object localObject3 = b();
      Object localObject1 = localObject2;
      if (localObject3 != null)
      {
        localObject3 = a((Drawable)localObject3);
        ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
        localObject1 = localObject2;
        if (localObject3 != null)
        {
          ((Bitmap)localObject3).compress(Bitmap.CompressFormat.PNG, 100, localByteArrayOutputStream);
          localObject1 = localByteArrayOutputStream.toByteArray();
        }
      }
      return (byte[])localObject1;
    }
    catch (Exception localException) {}
    return null;
  }
}

/* Location:
 * Qualified Name:     com.taplytics.kc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */