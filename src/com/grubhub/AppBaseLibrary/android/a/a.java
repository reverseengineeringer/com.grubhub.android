package com.grubhub.AppBaseLibrary.android.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.c.a.c;
import java.util.List;

public class a
  extends ArrayAdapter<c>
{
  private Context a;
  private List<c> b;
  
  public a(Context paramContext, List<c> paramList)
  {
    super(paramContext, 2130903110, paramList);
    a = paramContext;
    b = paramList;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramView = a;
    Context localContext = a;
    paramView = ((LayoutInflater)paramView.getSystemService("layout_inflater")).inflate(2130903110, paramViewGroup, false);
    ((TextView)paramView.findViewById(2131689742)).setText(((c)b.get(paramInt)).a());
    return paramView;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */