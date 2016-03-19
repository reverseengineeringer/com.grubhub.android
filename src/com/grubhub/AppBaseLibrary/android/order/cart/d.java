package com.grubhub.AppBaseLibrary.android.order.cart;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.GHSIItemOptionSelection;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.GHSIOrderItem;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIMenuItem;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIOption;
import com.grubhub.AppBaseLibrary.android.views.GHSTextView;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;

class d
  extends FrameLayout
{
  private TextView b;
  private TextView c;
  private LinearLayout d;
  private TextView e;
  private TextView f;
  
  public d(GHSCartFragment paramGHSCartFragment, Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }
  
  private void a(Context paramContext)
  {
    paramContext = LayoutInflater.from(paramContext).inflate(2130903167, this, true);
    b = ((TextView)paramContext.findViewById(2131690166));
    d = ((LinearLayout)paramContext.findViewById(2131690167));
    c = ((TextView)paramContext.findViewById(2131690168));
    e = ((TextView)paramContext.findViewById(2131690169));
    f = ((TextView)paramContext.findViewById(2131690170));
  }
  
  public void a(float paramFloat)
  {
    e.setText(String.format(Locale.US, a.getString(2131231830), new Object[] { Float.valueOf(paramFloat) }));
  }
  
  public void a(int paramInt)
  {
    b.setText(String.valueOf(paramInt));
  }
  
  public void a(GHSICartDataModel.GHSIOrderItem paramGHSIOrderItem)
  {
    a(paramGHSIOrderItem.getItemName());
    while (d.getChildAt(1) != null) {
      d.removeViewAt(1);
    }
    int i;
    float f1;
    label71:
    float f2;
    if (paramGHSIOrderItem.getItemQuantity() != null)
    {
      i = paramGHSIOrderItem.getItemQuantity().intValue();
      if (paramGHSIOrderItem.getDinerTotal() == null) {
        break label152;
      }
      f1 = paramGHSIOrderItem.getDinerTotal().floatValue();
      if (paramGHSIOrderItem.getItemPrice() == null) {
        break label157;
      }
      f2 = paramGHSIOrderItem.getItemPrice().floatValue();
      label90:
      a(i);
      a(f1);
      if (i <= 1) {
        break label162;
      }
      f.setVisibility(0);
      b(f2);
    }
    for (;;)
    {
      if ((GHSCartFragment.m(a) != null) && (!GHSCartFragment.m(a).isEmpty())) {
        break label173;
      }
      return;
      i = 0;
      break;
      label152:
      f1 = 0.0F;
      break label71;
      label157:
      f2 = 0.0F;
      break label90;
      label162:
      f.setVisibility(4);
    }
    label173:
    Object localObject1 = paramGHSIOrderItem.getSelectedItemOptions();
    Object localObject2;
    label254:
    GHSIFoodMenuDataModel.GHSIOption localGHSIOption;
    if (localObject1 != null)
    {
      HashSet localHashSet = new HashSet();
      localObject2 = ((ArrayList)localObject1).iterator();
      Object localObject3;
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (GHSICartDataModel.GHSIItemOptionSelection)((Iterator)localObject2).next();
        if (localObject3 != null) {
          localHashSet.add(((GHSICartDataModel.GHSIItemOptionSelection)localObject3).optionRefId());
        }
      }
      Iterator localIterator1 = ((ArrayList)localObject1).iterator();
      for (;;)
      {
        if (localIterator1.hasNext())
        {
          localObject1 = (GHSICartDataModel.GHSIItemOptionSelection)localIterator1.next();
          localObject2 = GHSCartFragment.a(a, GHSCartFragment.m(a), paramGHSIOrderItem.getOriginalItemId());
          if ((localObject2 != null) && (localObject1 != null))
          {
            localGHSIOption = ((GHSIFoodMenuDataModel.GHSIMenuItem)localObject2).getMenuItemChoiceGroupOption(((GHSICartDataModel.GHSIItemOptionSelection)localObject1).optionRefId());
            if (localGHSIOption != null)
            {
              localObject2 = localGHSIOption.getOptionDescription();
              if (localGHSIOption.hasPriceDependency())
              {
                localObject1 = null;
                Iterator localIterator2 = localHashSet.iterator();
                while (localIterator2.hasNext())
                {
                  localObject3 = localGHSIOption.getVariationalPrice((String)localIterator2.next());
                  localObject1 = localObject3;
                  if (localObject3 != null) {
                    localObject1 = localObject3;
                  }
                }
                if ((localObject1 == null) || (((Float)localObject1).floatValue() <= 0.0F)) {
                  break label613;
                }
                localObject1 = (String)localObject2 + " (+ " + String.format(Locale.US, a.getString(2131231830), new Object[] { Float.valueOf(((Float)localObject1).floatValue()) }) + ")";
              }
            }
          }
        }
      }
    }
    for (;;)
    {
      b((String)localObject1);
      break label254;
      localObject1 = localObject2;
      if (localGHSIOption.getOptionPrice() != null)
      {
        localObject1 = localObject2;
        if (localGHSIOption.getOptionPrice().floatValue() > 0.0F)
        {
          localObject1 = (String)localObject2 + " (+ " + String.format(Locale.US, a.getString(2131231830), new Object[] { localGHSIOption.getOptionPrice() }) + ")";
          continue;
          if ((paramGHSIOrderItem.getItemSpecialInstructions() == null) || (paramGHSIOrderItem.getItemSpecialInstructions().length() <= 0)) {
            break;
          }
          c(paramGHSIOrderItem.getItemSpecialInstructions());
          return;
          label613:
          localObject1 = localObject2;
        }
      }
    }
  }
  
  public void a(String paramString)
  {
    c.setText(paramString);
  }
  
  public void b(float paramFloat)
  {
    f.setText("ea " + String.format(Locale.US, a.getString(2131231830), new Object[] { Float.valueOf(paramFloat) }));
  }
  
  public void b(String paramString)
  {
    GHSTextView localGHSTextView = new GHSTextView(a.getActivity());
    localGHSTextView.setTextColor(getResources().getColor(2131558484));
    localGHSTextView.setText(paramString);
    localGHSTextView.setTextSize(0, getResources().getDimension(2131427416));
    localGHSTextView.setFont(a.getString(2131231648));
    d.addView(localGHSTextView);
  }
  
  public void c(String paramString)
  {
    GHSTextView localGHSTextView = new GHSTextView(a.getActivity());
    localGHSTextView.setText("\"" + paramString + "\"");
    localGHSTextView.setTextSize(0, getResources().getDimension(2131427417));
    localGHSTextView.setFont(a.getString(2131231649));
    d.addView(localGHSTextView);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */