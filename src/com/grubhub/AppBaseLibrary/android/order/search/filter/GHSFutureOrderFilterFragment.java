package com.grubhub.AppBaseLibrary.android.order.search.filter;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.SpannableString;
import android.text.style.UnderlineSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.order.l;
import com.grubhub.AppBaseLibrary.android.views.GHSTextView;

public class GHSFutureOrderFilterFragment
  extends Fragment
  implements b, c
{
  private boolean a;
  private long b;
  private GHSFutureOrderDialogFragment c;
  private ImageView d;
  private ImageView e;
  private GHSTextView f;
  private GHSTextView g;
  
  private void a()
  {
    if ((c == null) || (!c.isAdded()))
    {
      c = GHSFutureOrderDialogFragment.a(b);
      c.show(getChildFragmentManager(), GHSFutureOrderDialogFragment.class.getSimpleName());
    }
  }
  
  private void b()
  {
    if (getView() == null) {
      return;
    }
    Object localObject = null;
    if (a)
    {
      localObject = new SpannableString(com.grubhub.AppBaseLibrary.android.utils.b.a(b, "EEEE, MMM d, h:mm a", false));
      ((SpannableString)localObject).setSpan(new UnderlineSpan(), 0, ((SpannableString)localObject).length(), 0);
    }
    d.setActivated(a);
    e.setActivated(a);
    f.setActivated(a);
    GHSTextView localGHSTextView = f;
    int i;
    if (a)
    {
      i = 2131231910;
      localGHSTextView.setText(i);
      g.setActivated(a);
      localGHSTextView = g;
      if (!a) {
        break label159;
      }
      i = 0;
      label130:
      localGHSTextView.setVisibility(i);
      localGHSTextView = g;
      if (!a) {
        break label165;
      }
    }
    for (;;)
    {
      localGHSTextView.setText((CharSequence)localObject);
      return;
      i = 2131231909;
      break;
      label159:
      i = 8;
      break label130;
      label165:
      localObject = "";
    }
  }
  
  public void a(long paramLong)
  {
    b = paramLong;
    a = true;
    b();
  }
  
  public void a(GHSFilterSortCriteria paramGHSFilterSortCriteria)
  {
    l locall;
    if (a)
    {
      locall = l.FUTURE;
      paramGHSFilterSortCriteria.setSubOrderType(locall);
      paramGHSFilterSortCriteria.setWhenFor(b);
      if ((!paramGHSFilterSortCriteria.getHasUserSelectedRefinements()) && (!a)) {
        break label53;
      }
    }
    label53:
    for (boolean bool = true;; bool = false)
    {
      paramGHSFilterSortCriteria.setHasUserSelectedRefinements(bool);
      return;
      locall = l.DEFAULT;
      break;
    }
  }
  
  public void d()
  {
    a = false;
    b();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getArguments();
    if (paramBundle != null)
    {
      b = paramBundle.getLong("savedFutureOrderTime", 0L);
      if ((l)paramBundle.getSerializable("savedSubOrder") != l.FUTURE) {
        break label48;
      }
    }
    label48:
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903125, null);
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    d = ((ImageView)paramView.findViewById(2131689864));
    e = ((ImageView)paramView.findViewById(2131689868));
    f = ((GHSTextView)paramView.findViewById(2131689865));
    g = ((GHSTextView)paramView.findViewById(2131689866));
    paramView.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (GHSFutureOrderFilterFragment.a(GHSFutureOrderFilterFragment.this))
        {
          GHSFutureOrderFilterFragment.b(GHSFutureOrderFilterFragment.this);
          return;
        }
        if (GHSFutureOrderFilterFragment.c(GHSFutureOrderFilterFragment.this) != 0L)
        {
          GHSFutureOrderFilterFragment.a(GHSFutureOrderFilterFragment.this, true);
          GHSFutureOrderFilterFragment.d(GHSFutureOrderFilterFragment.this);
          return;
        }
        GHSFutureOrderFilterFragment.b(GHSFutureOrderFilterFragment.this);
      }
    });
    paramView.findViewById(2131689867).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (GHSFutureOrderFilterFragment.a(GHSFutureOrderFilterFragment.this))
        {
          GHSFutureOrderFilterFragment.a(GHSFutureOrderFilterFragment.this, false);
          GHSFutureOrderFilterFragment.d(GHSFutureOrderFilterFragment.this);
          return;
        }
        if (GHSFutureOrderFilterFragment.c(GHSFutureOrderFilterFragment.this) != 0L)
        {
          GHSFutureOrderFilterFragment.a(GHSFutureOrderFilterFragment.this, true);
          GHSFutureOrderFilterFragment.d(GHSFutureOrderFilterFragment.this);
          return;
        }
        GHSFutureOrderFilterFragment.b(GHSFutureOrderFilterFragment.this);
      }
    });
    b();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.filter.GHSFutureOrderFilterFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */