package com.android.volley.toolbox;

import com.android.volley.Response.ErrorListener;
import com.android.volley.VolleyError;

class ImageLoader$3
  implements Response.ErrorListener
{
  ImageLoader$3(ImageLoader paramImageLoader, String paramString) {}
  
  public void onErrorResponse(VolleyError paramVolleyError)
  {
    ImageLoader.access$100(this$0, val$cacheKey, paramVolleyError);
  }
}

/* Location:
 * Qualified Name:     com.android.volley.toolbox.ImageLoader.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */