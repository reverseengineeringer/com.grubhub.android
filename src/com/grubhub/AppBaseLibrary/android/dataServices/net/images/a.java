package com.grubhub.AppBaseLibrary.android.dataServices.net.images;

import android.content.Context;
import com.android.volley.toolbox.HurlStack;
import com.android.volley.toolbox.ImageLoader;
import com.android.volley.toolbox.Volley;

public class a
{
  private static a a;
  private ImageLoader b;
  
  private a(Context paramContext)
  {
    b = new ImageLoader(Volley.newRequestQueue(paramContext, new HurlStack()), new b());
  }
  
  public static a a(Context paramContext)
  {
    if (a == null) {
      a = new a(paramContext);
    }
    return a;
  }
  
  public GHSNetworkImageView a(String paramString1, String paramString2, GHSNetworkImageView paramGHSNetworkImageView, int paramInt)
  {
    paramGHSNetworkImageView.setDefaultImageResId(paramInt);
    paramGHSNetworkImageView.setFallbackImageUrl(paramString2);
    paramGHSNetworkImageView.a(paramString1, b);
    return paramGHSNetworkImageView;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.images.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */