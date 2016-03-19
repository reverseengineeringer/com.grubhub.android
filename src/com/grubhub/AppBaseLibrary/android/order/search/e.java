package com.grubhub.AppBaseLibrary.android.order.search;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.CheckBox;
import android.widget.ExpandableListView;
import android.widget.RadioButton;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIChoiceGroup;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIOption;
import com.grubhub.AppBaseLibrary.android.views.GHSCaret;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;

class e
  extends BaseExpandableListAdapter
{
  private ArrayList<GHSIFoodMenuDataModel.GHSIChoiceGroup> b;
  private ArrayList<GHSIFoodMenuDataModel.GHSIChoiceGroup> c;
  private HashMap<String, ArrayList<String>> d;
  
  public e(ArrayList<GHSIFoodMenuDataModel.GHSIChoiceGroup> paramArrayList1, ArrayList<GHSIFoodMenuDataModel.GHSIChoiceGroup> paramArrayList2, HashMap<String, ArrayList<String>> paramHashMap)
  {
    b = paramArrayList2;
    c = paramHashMap;
    HashMap localHashMap;
    d = localHashMap;
  }
  
  private boolean a(String paramString)
  {
    if (b != null)
    {
      Iterator localIterator = b.iterator();
      while (localIterator.hasNext())
      {
        GHSIFoodMenuDataModel.GHSIChoiceGroup localGHSIChoiceGroup = (GHSIFoodMenuDataModel.GHSIChoiceGroup)localIterator.next();
        if ((localGHSIChoiceGroup != null) && (localGHSIChoiceGroup.getChoiceId() != null) && (!d.containsKey(localGHSIChoiceGroup.getChoiceId()))) {
          if (localGHSIChoiceGroup.getChoiceId().equals(paramString)) {
            return true;
          }
        }
      }
    }
    return false;
  }
  
  public GHSIFoodMenuDataModel.GHSIChoiceGroup a(int paramInt)
  {
    int j = 1;
    if (getGroupType(paramInt) != 1) {
      return null;
    }
    int i;
    if (b != null)
    {
      i = b.size();
      if (i <= 0) {
        break label58;
      }
    }
    for (;;)
    {
      if (paramInt >= i + j) {
        break label63;
      }
      return (GHSIFoodMenuDataModel.GHSIChoiceGroup)b.get(paramInt - 1);
      i = 0;
      break;
      label58:
      j = 0;
    }
    label63:
    return (GHSIFoodMenuDataModel.GHSIChoiceGroup)c.get(paramInt - i - 1 - j);
  }
  
  public GHSIFoodMenuDataModel.GHSIOption a(int paramInt1, int paramInt2)
  {
    return (GHSIFoodMenuDataModel.GHSIOption)a(paramInt1).getOptions().get(paramInt2);
  }
  
  public long getChildId(int paramInt1, int paramInt2)
  {
    return 0L;
  }
  
  public View getChildView(int paramInt1, int paramInt2, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    Context localContext = paramViewGroup.getContext();
    GHSIFoodMenuDataModel.GHSIChoiceGroup localGHSIChoiceGroup = a(paramInt1);
    GHSIFoodMenuDataModel.GHSIOption localGHSIOption;
    TextView localTextView1;
    TextView localTextView2;
    View localView;
    if (localGHSIChoiceGroup.getMaximum() == 1)
    {
      paramViewGroup = LayoutInflater.from(localContext).inflate(2130903187, null, false);
      localGHSIOption = a(paramInt1, paramInt2);
      localTextView1 = (TextView)paramViewGroup.findViewById(2131690210);
      localTextView2 = (TextView)paramViewGroup.findViewById(2131690211);
      localView = paramViewGroup.findViewById(2131690209);
      if ((localGHSIOption == null) || (TextUtils.isEmpty(localGHSIOption.getOptionId()))) {
        break label547;
      }
      if (localGHSIOption.getOptionDescription() == null) {
        break label417;
      }
      paramView = localGHSIOption.getOptionDescription().trim();
      label120:
      localTextView1.setText(paramView);
      if (GHSMenuItemFragment.r(a) == null) {
        break label604;
      }
    }
    label277:
    label342:
    label361:
    label417:
    label525:
    label536:
    label547:
    label599:
    label604:
    for (Object localObject1 = (ArrayList)d.get(Integer.toString(localGHSIChoiceGroup.getItemVariationId()));; localObject1 = null)
    {
      paramView = null;
      Object localObject2 = null;
      if (localObject1 != null)
      {
        Iterator localIterator = ((ArrayList)localObject1).iterator();
        paramView = (View)localObject2;
        while (localIterator.hasNext())
        {
          localObject1 = localGHSIOption.getVariationalPrice((String)localIterator.next());
          paramView = (View)localObject1;
          if (localObject1 != null) {
            paramView = (View)localObject1;
          }
        }
      }
      if ((paramView != null) && (paramView.floatValue() != 0.0F))
      {
        localTextView2.setText(String.format(Locale.US, localContext.getString(2131231718), new Object[] { Float.valueOf(paramView.floatValue()) }));
        localTextView2.setVisibility(0);
        paramView = localGHSIChoiceGroup.getChoiceId();
        if (!d.containsKey(paramView)) {
          break label599;
        }
      }
      for (paramBoolean = ((ArrayList)d.get(paramView)).contains(a(paramInt1, paramInt2).getOptionId());; paramBoolean = false)
      {
        if ((localView instanceof RadioButton))
        {
          ((RadioButton)localView).setChecked(paramBoolean);
          paramView = localContext.getResources();
          if (!paramBoolean) {
            break label525;
          }
          paramInt1 = paramView.getColor(2131558463);
          localTextView1.setTextColor(paramInt1);
          if (!paramBoolean) {
            break label536;
          }
        }
        for (paramInt1 = paramView.getColor(2131558463);; paramInt1 = paramView.getColor(2131558484))
        {
          localTextView2.setTextColor(paramInt1);
          paramViewGroup.setTag(localGHSIOption.getOptionId());
          return paramViewGroup;
          paramViewGroup = LayoutInflater.from(localContext).inflate(2130903186, null, false);
          break;
          paramView = null;
          break label120;
          if ((localGHSIOption.getOptionPrice() != null) && (localGHSIOption.getOptionPrice().floatValue() != 0.0F))
          {
            localTextView2.setText(String.format(Locale.US, localContext.getString(2131231718), new Object[] { localGHSIOption.getOptionPrice() }));
            localTextView2.setVisibility(0);
            break label277;
          }
          localTextView2.setText(null);
          localTextView2.setVisibility(8);
          break label277;
          if (!(localView instanceof CheckBox)) {
            break label342;
          }
          ((CheckBox)localView).setChecked(paramBoolean);
          break label342;
          paramInt1 = paramView.getColor(2131558481);
          break label361;
        }
        localTextView1.setText(null);
        if ((localView instanceof RadioButton)) {
          ((RadioButton)localView).setChecked(false);
        }
        for (;;)
        {
          paramViewGroup.setTag(null);
          return paramViewGroup;
          if ((localView instanceof CheckBox)) {
            ((CheckBox)localView).setChecked(false);
          }
        }
      }
    }
  }
  
  public int getChildrenCount(int paramInt)
  {
    if (getGroupType(paramInt) != 1) {
      return 0;
    }
    return a(paramInt).getOptions().size();
  }
  
  public int getGroupCount()
  {
    int j = 0;
    int i = j;
    if (b != null)
    {
      i = j;
      if (b.size() > 0) {
        i = 0 + (b.size() + 1);
      }
    }
    j = i;
    if (c != null)
    {
      j = i;
      if (c.size() > 0) {
        j = i + (c.size() + 1);
      }
    }
    return j;
  }
  
  public long getGroupId(int paramInt)
  {
    return 0L;
  }
  
  public int getGroupType(int paramInt)
  {
    if (((paramInt == 0) && (b != null) && (b.size() > 0)) || ((c != null) && (c.size() > 0) && ((paramInt == 0) || ((b != null) && (b.size() > 0) && (paramInt == b.size() + 1))))) {
      return 0;
    }
    return 1;
  }
  
  public int getGroupTypeCount()
  {
    return 2;
  }
  
  public View getGroupView(int paramInt, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    Context localContext = paramViewGroup.getContext();
    switch (getGroupType(paramInt))
    {
    default: 
      return paramView;
    case 0: 
      paramViewGroup = paramView;
      if (paramView == null) {
        paramViewGroup = LayoutInflater.from(localContext).inflate(2130903183, null, false);
      }
      paramView = (TextView)paramViewGroup.findViewById(2131690200);
      if ((paramInt == 0) && (b != null) && (b.size() > 0))
      {
        paramView.setText(2131231682);
        paramView.setContentDescription(localContext.getString(2131231162));
        paramViewGroup.setTag(Integer.valueOf(2131231682));
        return paramViewGroup;
      }
      paramView.setText(2131231678);
      paramView.setContentDescription(localContext.getString(2131231157));
      paramViewGroup.setTag(Integer.valueOf(2131231678));
      return paramViewGroup;
    }
    paramViewGroup = paramView;
    if (paramView == null) {
      paramViewGroup = LayoutInflater.from(localContext).inflate(2130903184, null, false);
    }
    GHSIFoodMenuDataModel.GHSIChoiceGroup localGHSIChoiceGroup = a(paramInt);
    Object localObject = (TextView)paramViewGroup.findViewById(2131690203);
    TextView localTextView = (TextView)paramViewGroup.findViewById(2131690205);
    View localView = paramViewGroup.findViewById(2131690201);
    GHSCaret localGHSCaret = (GHSCaret)paramViewGroup.findViewById(2131690204);
    label268:
    boolean bool;
    if ((localGHSIChoiceGroup != null) && (!TextUtils.isEmpty(localGHSIChoiceGroup.getChoiceId()))) {
      if (localGHSIChoiceGroup.getChoiceName() != null)
      {
        paramView = localGHSIChoiceGroup.getChoiceName().trim();
        ((TextView)localObject).setText(paramView);
        localTextView.setVisibility(0);
        ((TextView)localObject).setTextColor(localContext.getResources().getColor(2131558481));
        if ((localGHSIChoiceGroup.getItemVariationId() == 0) || (d.containsKey(Integer.toString(localGHSIChoiceGroup.getItemVariationId())))) {
          break label426;
        }
        ((TextView)localObject).setTextColor(localContext.getResources().getColor(2131558484));
        if (GHSMenuItemFragment.g(a).isGroupExpanded(paramInt))
        {
          GHSMenuItemFragment.g(a).collapseGroup(paramInt);
          paramBoolean = false;
        }
        localTextView.setVisibility(8);
        localView.setVisibility(8);
        bool = paramBoolean;
        label385:
        paramViewGroup.setTag(localGHSIChoiceGroup.getChoiceId());
        paramBoolean = bool;
      }
    }
    for (;;)
    {
      paramView = paramViewGroup;
      if (localGHSCaret == null) {
        break;
      }
      if (!paramBoolean) {
        break label844;
      }
      localGHSCaret.setOrientation(0);
      return paramViewGroup;
      paramView = null;
      break label268;
      label426:
      if (d.containsKey(localGHSIChoiceGroup.getChoiceId()))
      {
        paramView = (ArrayList)d.get(localGHSIChoiceGroup.getChoiceId());
        localObject = new ArrayList();
        Iterator localIterator = localGHSIChoiceGroup.getOptions().iterator();
        while (localIterator.hasNext())
        {
          GHSIFoodMenuDataModel.GHSIOption localGHSIOption = (GHSIFoodMenuDataModel.GHSIOption)localIterator.next();
          if (paramView.contains(localGHSIOption.getOptionId())) {
            ((ArrayList)localObject).add(localGHSIOption);
          }
        }
        localTextView.setText(localGHSIChoiceGroup.getOptionsDescriptionsString((ArrayList)localObject));
        localTextView.setTextColor(localContext.getResources().getColor(2131558481));
        localView.setVisibility(8);
        bool = paramBoolean;
        break label385;
      }
      int i = localGHSIChoiceGroup.getMaximum();
      int j = localGHSIChoiceGroup.getMinimum();
      if ((j > 0) && (a(localGHSIChoiceGroup.getChoiceId())))
      {
        localView.setVisibility(0);
        label614:
        if (j <= 0) {
          break label680;
        }
        localTextView.setTextColor(localContext.getResources().getColor(2131558466));
      }
      for (;;)
      {
        if (GHSMenuItemFragment.g(a).isGroupExpanded(paramInt)) {
          break label698;
        }
        bool = paramBoolean;
        if (j != 0) {
          break;
        }
        localTextView.setVisibility(8);
        bool = paramBoolean;
        break;
        localView.setVisibility(8);
        break label614;
        label680:
        localTextView.setTextColor(localContext.getResources().getColor(2131558484));
      }
      label698:
      if (i == 1)
      {
        localTextView.setText(2131231674);
        bool = paramBoolean;
        break label385;
      }
      if (i > 0)
      {
        if (i == j)
        {
          localTextView.setText(String.format(a.getString(2131231673), new Object[] { Integer.valueOf(i) }));
          bool = paramBoolean;
          break label385;
        }
        localTextView.setText(String.format(a.getString(2131231675), new Object[] { Integer.valueOf(i) }));
        bool = paramBoolean;
        break label385;
      }
      localTextView.setText(2131231672);
      bool = paramBoolean;
      break label385;
      ((TextView)localObject).setText(null);
      localTextView.setText(null);
      localView.setVisibility(8);
      paramViewGroup.setTag(null);
    }
    label844:
    localGHSCaret.setOrientation(1);
    return paramViewGroup;
  }
  
  public boolean hasStableIds()
  {
    return false;
  }
  
  public boolean isChildSelectable(int paramInt1, int paramInt2)
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */