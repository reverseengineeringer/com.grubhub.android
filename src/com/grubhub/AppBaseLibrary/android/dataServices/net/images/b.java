package com.grubhub.AppBaseLibrary.android.dataServices.net.images;

import android.graphics.Bitmap;
import android.util.LruCache;
import com.android.volley.toolbox.ImageLoader.ImageCache;

public class b
  implements ImageLoader.ImageCache
{
  final int a = (int)(Runtime.getRuntime().maxMemory() / 1024L);
  final int b = a / 8;
  private LruCache<String, Bitmap> c = new LruCache(b);
  
  public Bitmap getBitmap(String paramString)
  {
    return (Bitmap)c.get(paramString);
  }
  
  public void putBitmap(String paramString, Bitmap paramBitmap)
  {
    c.put(paramString, paramBitmap);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.images.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */