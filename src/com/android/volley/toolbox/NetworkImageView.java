package com.android.volley.toolbox;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import com.android.volley.VolleyError;

public class NetworkImageView
  extends ImageView
{
  private int mDefaultImageId;
  private int mErrorImageId;
  private ImageLoader.ImageContainer mImageContainer;
  private ImageLoader mImageLoader;
  private String mUrl;
  
  public NetworkImageView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public NetworkImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public NetworkImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private void setDefaultImageOrNull()
  {
    if (mDefaultImageId != 0)
    {
      setImageResource(mDefaultImageId);
      return;
    }
    setImageBitmap(null);
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    invalidate();
  }
  
  void loadImageIfNecessary(final boolean paramBoolean)
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
        if (TextUtils.isEmpty(mUrl))
        {
          if (mImageContainer != null)
          {
            mImageContainer.cancelRequest();
            mImageContainer = null;
          }
          setDefaultImageOrNull();
          return;
        }
        if ((mImageContainer == null) || (mImageContainer.getRequestUrl() == null)) {
          break label172;
        }
      } while (mImageContainer.getRequestUrl().equals(mUrl));
      mImageContainer.cancelRequest();
      setDefaultImageOrNull();
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
        mImageContainer = mImageLoader.get(mUrl, new ImageLoader.ImageListener()
        {
          public void onErrorResponse(VolleyError paramAnonymousVolleyError)
          {
            if (mErrorImageId != 0) {
              setImageResource(mErrorImageId);
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
            } while (mDefaultImageId == 0);
            setImageResource(mDefaultImageId);
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
  
  protected void onDetachedFromWindow()
  {
    if (mImageContainer != null)
    {
      mImageContainer.cancelRequest();
      setImageBitmap(null);
      mImageContainer = null;
    }
    super.onDetachedFromWindow();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    loadImageIfNecessary(true);
  }
  
  public void setDefaultImageResId(int paramInt)
  {
    mDefaultImageId = paramInt;
  }
  
  public void setErrorImageResId(int paramInt)
  {
    mErrorImageId = paramInt;
  }
  
  public void setImageUrl(String paramString, ImageLoader paramImageLoader)
  {
    mUrl = paramString;
    mImageLoader = paramImageLoader;
    loadImageIfNecessary(false);
  }
}

/* Location:
 * Qualified Name:     com.android.volley.toolbox.NetworkImageView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */