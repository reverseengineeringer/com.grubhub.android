package com.grubhub.AppBaseLibrary.android.views;

import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.style.TypefaceSpan;

public class GHSTypefaceSpan
  extends TypefaceSpan
{
  private Typeface a;
  private int b;
  
  public GHSTypefaceSpan(String paramString, Typeface paramTypeface)
  {
    this(paramString, paramTypeface, -1);
  }
  
  public GHSTypefaceSpan(String paramString, Typeface paramTypeface, int paramInt)
  {
    super(paramString);
    a = paramTypeface;
    b = paramInt;
  }
  
  public void updateDrawState(TextPaint paramTextPaint)
  {
    paramTextPaint.setTypeface(a);
    if (b != -1) {
      paramTextPaint.setTextSize(b);
    }
  }
  
  public void updateMeasureState(TextPaint paramTextPaint)
  {
    paramTextPaint.setTypeface(a);
    if (b != -1) {
      paramTextPaint.setTextSize(b);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSTypefaceSpan
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */