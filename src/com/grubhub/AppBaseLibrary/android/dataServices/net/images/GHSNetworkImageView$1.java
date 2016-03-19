package com.grubhub.AppBaseLibrary.android.dataServices.net.images;

import android.text.TextUtils;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.ImageLoader.ImageContainer;
import com.android.volley.toolbox.ImageLoader.ImageListener;

class GHSNetworkImageView$1
  implements ImageLoader.ImageListener
{
  GHSNetworkImageView$1(GHSNetworkImageView paramGHSNetworkImageView, boolean paramBoolean) {}
  
  public void onErrorResponse(VolleyError paramVolleyError)
  {
    if (GHSNetworkImageView.a(b) != 0) {
      b.setImageResource(GHSNetworkImageView.a(b));
    }
    if ((GHSNetworkImageView.b(b) != null) && (!TextUtils.isEmpty(GHSNetworkImageView.c(b))))
    {
      GHSNetworkImageView.a(b, new Runnable()
      {
        public void run()
        {
          b.a(GHSNetworkImageView.c(b), GHSNetworkImageView.d(b));
        }
      });
      b.postDelayed(GHSNetworkImageView.e(b), 50L);
    }
  }
  
  public void onResponse(final ImageLoader.ImageContainer paramImageContainer, boolean paramBoolean)
  {
    if ((paramBoolean) && (a)) {
      b.post(new Runnable()
      {
        public void run()
        {
          onResponse(paramImageContainer, false);
        }
      });
    }
    do
    {
      return;
      if (paramImageContainer.getBitmap() != null)
      {
        b.setImageBitmap(paramImageContainer.getBitmap());
        return;
      }
    } while (GHSNetworkImageView.f(b) == 0);
    b.setImageResource(GHSNetworkImageView.f(b));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.images.GHSNetworkImageView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */