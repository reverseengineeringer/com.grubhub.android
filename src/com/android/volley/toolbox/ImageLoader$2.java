package com.android.volley.toolbox;

import android.graphics.Bitmap;
import com.android.volley.Response.Listener;

class ImageLoader$2
  implements Response.Listener<Bitmap>
{
  ImageLoader$2(ImageLoader paramImageLoader, String paramString) {}
  
  public void onResponse(Bitmap paramBitmap)
  {
    ImageLoader.access$000(this$0, val$cacheKey, paramBitmap);
  }
}

/* Location:
 * Qualified Name:     com.android.volley.toolbox.ImageLoader.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */