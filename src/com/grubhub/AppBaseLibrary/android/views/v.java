package com.grubhub.AppBaseLibrary.android.views;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.text.Layout;
import android.text.TextUtils.TruncateAt;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIReviewsDataModel.GHSIReview;
import java.text.SimpleDateFormat;
import java.util.Date;

public class v
  extends RelativeLayout
{
  private GHSRatingStarView a;
  private TextView b;
  private TextView c;
  private TextView d;
  private View e;
  
  public v(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }
  
  private void a(Context paramContext)
  {
    setWillNotDraw(false);
    paramContext = LayoutInflater.from(paramContext).inflate(2130903225, this, true);
    a = ((GHSRatingStarView)paramContext.findViewById(2131690321));
    b = ((TextView)paramContext.findViewById(2131690322));
    c = ((TextView)paramContext.findViewById(2131690323));
    d = ((TextView)paramContext.findViewById(2131690324));
    e = paramContext.findViewById(2131690325);
  }
  
  public void a(GHSIReviewsDataModel.GHSIReview paramGHSIReview)
  {
    e.setVisibility(8);
    if (paramGHSIReview != null)
    {
      setRatings(Math.round(paramGHSIReview.getStarRating()));
      setReviewerName(paramGHSIReview.getReviewer());
      setReviewDate(paramGHSIReview.getReviewCreatedDate());
      setContent(paramGHSIReview.getContent());
    }
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (d.getLayout().getEllipsisCount(1) > 0)
    {
      e.setVisibility(0);
      return;
    }
    e.setVisibility(8);
  }
  
  public void setContent(String paramString)
  {
    if (d != null) {
      d.setText(paramString);
    }
  }
  
  public void setContentExpanded(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      e.setVisibility(8);
      d.setMaxLines(Integer.MAX_VALUE);
      d.setEllipsize(null);
      return;
    }
    d.setMaxLines(2);
    d.setEllipsize(TextUtils.TruncateAt.END);
  }
  
  public void setRatings(int paramInt)
  {
    if (a != null) {
      a.setRatings(paramInt);
    }
  }
  
  public void setReviewDate(long paramLong)
  {
    if (c != null)
    {
      SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("MMM d, y");
      Date localDate = new Date(paramLong);
      c.setText(localSimpleDateFormat.format(localDate));
    }
  }
  
  public void setReviewerName(String paramString)
  {
    if ((b != null) && (paramString != null) && (paramString.length() > 0))
    {
      b.setText(getResources().getString(2131231976) + " " + paramString + ",");
      return;
    }
    b.setText(null);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */