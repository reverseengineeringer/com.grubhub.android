package com.grubhub.AppBaseLibrary.android.dataServices.net.images;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.ImageLoader;
import com.android.volley.toolbox.ImageLoader.ImageContainer;
import com.android.volley.toolbox.ImageLoader.ImageListener;

public class GHSNetworkImageView
  extends ImageView
{
  private String a;
  private String b;
  private int c;
  private int d;
  private ImageLoader e;
  private ImageLoader.ImageContainer f;
  private Runnable g;
  
  public GHSNetworkImageView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public GHSNetworkImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public GHSNetworkImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private void a()
  {
    if (c != 0)
    {
      setImageResource(c);
      return;
    }
    setImageBitmap(null);
  }
  
  public void a(String paramString, ImageLoader paramImageLoader)
  {
    a = paramString;
    e = paramImageLoader;
    if (g != null)
    {
      removeCallbacks(g);
      g = null;
    }
    a(false);
  }
  
  void a(final boolean paramBoolean)
  {
    int k = 1;
    int m = 0;
    int i1 = getWidth();
    int n = getHeight();
    int j;
    int i;
    if (getLayoutParams() != null) {
      if (getLayoutParamswidth == -2)
      {
        j = 1;
        if (getLayoutParamsheight != -2) {
          break label82;
        }
        i = 1;
      }
    }
    for (;;)
    {
      label53:
      if ((j != 0) && (i != 0)) {
        label61:
        if ((i1 != 0) || (n != 0) || (k != 0)) {
          break label93;
        }
      }
      label82:
      label93:
      do
      {
        return;
        j = 0;
        break;
        i = 0;
        break label53;
        k = 0;
        break label61;
        if (TextUtils.isEmpty(a))
        {
          if (f != null)
          {
            f.cancelRequest();
            f = null;
          }
          a();
          return;
        }
        if ((f == null) || (f.getRequestUrl() == null)) {
          break label172;
        }
      } while (f.getRequestUrl().equals(a));
      f.cancelRequest();
      a();
      label172:
      if (j != 0)
      {
        j = 0;
        if (i == 0) {
          break label218;
        }
      }
      label218:
      for (i = m;; i = n)
      {
        f = e.get(a, new ImageLoader.ImageListener()
        {
          public void onErrorResponse(VolleyError paramAnonymousVolleyError)
          {
            if (GHSNetworkImageView.a(GHSNetworkImageView.this) != 0) {
              setImageResource(GHSNetworkImageView.a(GHSNetworkImageView.this));
            }
            if ((GHSNetworkImageView.b(GHSNetworkImageView.this) != null) && (!TextUtils.isEmpty(GHSNetworkImageView.c(GHSNetworkImageView.this))))
            {
              GHSNetworkImageView.a(GHSNetworkImageView.this, new Runnable()
              {
                public void run()
                {
                  a(GHSNetworkImageView.c(GHSNetworkImageView.this), GHSNetworkImageView.d(GHSNetworkImageView.this));
                }
              });
              postDelayed(GHSNetworkImageView.e(GHSNetworkImageView.this), 50L);
            }
          }
          
          public void onResponse(final ImageLoader.ImageContainer paramAnonymousImageContainer, boolean paramAnonymousBoolean)
          {
            if ((paramAnonymousBoolean) && (paramBoolean)) {
              post(new Runnable()
              {
                public void run()
                {
                  onResponse(paramAnonymousImageContainer, false);
                }
              });
            }
            do
            {
              return;
              if (paramAnonymousImageContainer.getBitmap() != null)
              {
                setImageBitmap(paramAnonymousImageContainer.getBitmap());
                return;
              }
            } while (GHSNetworkImageView.f(GHSNetworkImageView.this) == 0);
            setImageResource(GHSNetworkImageView.f(GHSNetworkImageView.this));
          }
        }, j, i);
        return;
        j = i1;
        break;
      }
      i = 0;
      j = 0;
    }
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    invalidate();
  }
  
  protected void onDetachedFromWindow()
  {
    if (f != null)
    {
      f.cancelRequest();
      setImageBitmap(null);
      f = null;
    }
    if (g != null)
    {
      removeCallbacks(g);
      g = null;
    }
    super.onDetachedFromWindow();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    a(true);
  }
  
  public void setDefaultImageResId(int paramInt)
  {
    c = paramInt;
  }
  
  public void setErrorImageResId(int paramInt)
  {
    d = paramInt;
  }
  
  public void setFallbackImageUrl(String paramString)
  {
    b = paramString;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.images.GHSNetworkImageView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */