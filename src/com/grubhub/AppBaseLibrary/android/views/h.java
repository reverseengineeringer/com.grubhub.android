package com.grubhub.AppBaseLibrary.android.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.n;
import com.grubhub.AppBaseLibrary.android.utils.e.a;
import java.util.HashMap;

public class h
{
  private static final String a = h.class.getSimpleName();
  private static final HashMap<String, Typeface> b = new HashMap();
  
  public static Typeface a(Context paramContext, String paramString)
  {
    Typeface localTypeface2 = (Typeface)b.get(paramString);
    Typeface localTypeface1 = localTypeface2;
    if (localTypeface2 == null)
    {
      localTypeface1 = Typeface.createFromAsset(paramContext.getAssets(), "fonts/" + paramString);
      b.put(paramString, localTypeface1);
    }
    return localTypeface1;
  }
  
  public static String a(Context paramContext, TextView paramTextView, AttributeSet paramAttributeSet)
  {
    String str = null;
    if (!paramTextView.isInEditMode())
    {
      paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, n.com_grubhub_AppBaseLibrary_android_views_GHSFontFactory);
      str = paramAttributeSet.getString(0);
      if (str != null) {
        a(paramContext, paramTextView, str);
      }
      paramAttributeSet.recycle();
    }
    return str;
  }
  
  public static void a(Context paramContext, TextView paramTextView, String paramString)
  {
    if (!paramTextView.isInEditMode()) {}
    try
    {
      paramContext = a(paramContext, paramString);
      if (paramContext != null) {
        paramTextView.setTypeface(paramContext);
      }
      return;
    }
    catch (Exception paramContext)
    {
      a.b(a, paramContext.getMessage());
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */