package com.grubhub.AppBaseLibrary.android.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import java.util.ArrayList;
import java.util.Iterator;

public class GHSReviewRatingView
  extends LinearLayout
{
  private int a;
  private int b;
  private int c;
  private ArrayList<View> d;
  private x e;
  private View.OnClickListener f = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      if (GHSReviewRatingView.a(GHSReviewRatingView.this) != null)
      {
        paramAnonymousView = (Integer)paramAnonymousView.getTag(2131689479);
        setSelectedRating(paramAnonymousView);
      }
    }
  };
  
  public GHSReviewRatingView(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public GHSReviewRatingView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  public GHSReviewRatingView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }
  
  private void a()
  {
    setOrientation(0);
    setGravity(17);
    if (!isInEditMode()) {
      c = ((int)(GHSApplication.o() * 48.0F));
    }
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    removeAllViews();
    b = paramInt1;
    d = new ArrayList();
    paramInt1 = 0;
    while (paramInt1 < paramInt2)
    {
      int i = paramInt1 + 1;
      ImageView localImageView = new ImageView(getContext());
      localImageView.setBackgroundResource(2130837615);
      localImageView.setTag(2131689479, Integer.valueOf(i));
      localImageView.setOnClickListener(f);
      localImageView.setContentDescription(getContext().getString(2131231224) + " " + i);
      localImageView.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0F));
      addView(localImageView);
      d.add(localImageView);
      paramInt1 += 1;
    }
  }
  
  public int getSelectedRating()
  {
    return a;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if ((d != null) && (!d.isEmpty()))
    {
      paramInt2 = getMeasuredWidth() / d.size();
      Iterator localIterator = d.iterator();
      if (localIterator.hasNext())
      {
        LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)((View)localIterator.next()).getLayoutParams();
        if (paramInt2 > c) {}
        for (paramInt1 = c;; paramInt1 = paramInt2)
        {
          height = paramInt1;
          break;
        }
      }
    }
  }
  
  public void setMaxRatingViewHeight(int paramInt)
  {
    float f1 = GHSApplication.o();
    if (paramInt > 0) {}
    for (;;)
    {
      c = ((int)(f1 * paramInt));
      return;
      paramInt = 48;
    }
  }
  
  public void setOnRatingSelectedListener(x paramx)
  {
    e = paramx;
  }
  
  public void setSelectedRating(Integer paramInteger)
  {
    if ((paramInteger != null) && (paramInteger.intValue() >= b))
    {
      a = paramInteger.intValue();
      if (d != null)
      {
        int i = 0;
        if (i < d.size())
        {
          View localView = (View)d.get(i);
          if (localView != null) {
            if (i >= paramInteger.intValue()) {
              break label84;
            }
          }
          label84:
          for (boolean bool = true;; bool = false)
          {
            localView.setSelected(bool);
            i += 1;
            break;
          }
        }
      }
      if (e != null) {
        e.a(paramInteger.intValue());
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSReviewRatingView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */