package com.grubhub.AppBaseLibrary.android.order.cart;

import android.app.Activity;
import android.content.Context;
import android.graphics.Typeface;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.w;
import android.text.SpannableString;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSTipModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.order.g;
import com.grubhub.AppBaseLibrary.android.utils.j.a;
import com.grubhub.AppBaseLibrary.android.views.GHSTypefaceSpan;
import com.grubhub.AppBaseLibrary.android.views.h;
import java.util.Locale;

public class GHSTipFragment
  extends Fragment
  implements j
{
  private Button a;
  private Button b;
  private Button c;
  private Button d;
  private Button e;
  private boolean f;
  private float g;
  private String h;
  private n i;
  private Button[] j;
  private GHSICartDataModel k;
  private GHSIRestaurantDataModel l;
  private o m;
  private View.OnClickListener n = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      if (paramAnonymousView.getId() == 2131690126)
      {
        paramAnonymousView = (Float)paramAnonymousView.getTag(2131232029);
        localObject = getChildFragmentManager();
        if (((w)localObject).a(GHSCustomTipDialogFragment.class.getSimpleName()) == null) {
          GHSCustomTipDialogFragment.a(paramAnonymousView).show((w)localObject, GHSCustomTipDialogFragment.class.getSimpleName());
        }
        return;
      }
      Object localObject = h.a(GHSTipFragment.a(GHSTipFragment.this).getContext(), getString(2131231647));
      String str = GHSTipFragment.a(GHSTipFragment.this).getContext().getString(2131232034);
      SpannableString localSpannableString = new SpannableString(str);
      localSpannableString.setSpan(new GHSTypefaceSpan(null, (Typeface)localObject, (int)GHSTipFragment.a(GHSTipFragment.this).getTextSize()), 0, str.length(), 33);
      GHSTipFragment.a(GHSTipFragment.this).setText(localSpannableString);
      GHSTipFragment.a(GHSTipFragment.this).setTag(2131232029, null);
      if ((paramAnonymousView.getId() == 2131690122) && (GHSTipFragment.b(GHSTipFragment.this) != null) && (GHSTipFragment.b(GHSTipFragment.this).isCashTipAllowed()))
      {
        GHSTipFragment.a(GHSTipFragment.this, 0.0F);
        GHSTipFragment.a(GHSTipFragment.this, true);
      }
      for (;;)
      {
        GHSTipFragment.a(GHSTipFragment.this, paramAnonymousView.getTag(2131232030).toString());
        GHSTipFragment.a(GHSTipFragment.this, paramAnonymousView.getId());
        GHSTipFragment.c(GHSTipFragment.this);
        GHSTipFragment.d(GHSTipFragment.this);
        return;
        if (paramAnonymousView.getId() != 2131690126)
        {
          GHSTipFragment.a(GHSTipFragment.this, ((Float)paramAnonymousView.getTag(2131232029)).floatValue());
          GHSTipFragment.a(GHSTipFragment.this, false);
        }
      }
    }
  };
  
  private void a(int paramInt)
  {
    if (j != null)
    {
      Button[] arrayOfButton = j;
      int i2 = arrayOfButton.length;
      int i1 = 0;
      if (i1 < i2)
      {
        Button localButton = arrayOfButton[i1];
        if (localButton.getId() == paramInt)
        {
          localButton.setSelected(true);
          i = n.fromInt(localButton.getId());
        }
        for (;;)
        {
          i1 += 1;
          break;
          localButton.setSelected(false);
        }
      }
    }
  }
  
  private void a(Button paramButton, float paramFloat, boolean paramBoolean)
  {
    if ((paramButton != null) && (k != null))
    {
      Object localObject = paramButton.getContext();
      float f1 = paramFloat;
      if (paramBoolean) {
        f1 = paramFloat * 100.0F / 100.0F;
      }
      paramFloat = a.a(k, f1);
      String str = String.format("%.0f%%", new Object[] { Float.valueOf(100.0F * f1) });
      localObject = h.a((Context)localObject, getString(2131231647));
      SpannableString localSpannableString = new SpannableString(str + "\n" + String.format(Locale.US, paramButton.getContext().getString(2131231830), new Object[] { Float.valueOf(paramFloat) }));
      localSpannableString.setSpan(new GHSTypefaceSpan(null, (Typeface)localObject, (int)paramButton.getTextSize()), 0, str.length(), 33);
      paramButton.setText(localSpannableString);
      paramButton.setTag(2131232029, Float.valueOf(paramFloat));
      paramButton.setTag(2131232030, str);
    }
  }
  
  private void b()
  {
    if (m != null) {
      m.a(f, g, h);
    }
  }
  
  private void c()
  {
    GHSTipModel localGHSTipModel = new GHSTipModel();
    localGHSTipModel.setIsCash(Boolean.valueOf(f));
    localGHSTipModel.setSelectedTip(i);
    localGHSTipModel.setTipAmount(g);
    GHSApplication.a().b().a(localGHSTipModel);
  }
  
  public void a()
  {
    l = GHSApplication.a().b().U();
    k = GHSApplication.a().b().X();
    if (a != null)
    {
      if ((l != null) && (!l.isCashTipAllowed())) {
        a(a, a.a(l, k), false);
      }
    }
    else
    {
      if (b != null) {
        a(b, a.b(l, k), true);
      }
      if (c != null) {
        a(c, a.c(l, k), true);
      }
      if (d != null) {
        a(d, a.d(l, k), true);
      }
      if (e != null)
      {
        e.setTag(2131232030, getString(2131232033));
        localObject1 = e.getContext().getString(2131232034);
        localObject2 = h.a(e.getContext(), getString(2131231647));
        if (i != n.TIP_BUTTON_CUSTOM) {
          break label471;
        }
        if (((String)localObject1).indexOf("$") != ((String)localObject1).length() - 1) {
          break label462;
        }
        i1 = ((String)localObject1).length() - 1;
        label247:
        localObject1 = new SpannableString((String)localObject1 + String.format(Locale.US, e.getContext().getString(2131231832), new Object[] { Float.valueOf(g) }));
        ((SpannableString)localObject1).setSpan(new GHSTypefaceSpan(null, (Typeface)localObject2, (int)e.getTextSize()), 0, i1, 33);
        e.setTag(2131232029, Float.valueOf(g));
      }
    }
    for (;;)
    {
      e.setText((CharSequence)localObject1);
      if ((i != null) || (k == null) || (k.getOrderType() != g.DELIVERY)) {
        break label528;
      }
      a(c.getId());
      g = ((Float)c.getTag(2131232029)).floatValue();
      h = c.getTag(2131232030).toString();
      c();
      b();
      return;
      a.setTag(2131232030, getString(2131232031));
      break;
      label462:
      i1 = ((String)localObject1).length();
      break label247;
      label471:
      i1 = ((String)localObject1).length();
      localObject1 = new SpannableString((CharSequence)localObject1);
      ((SpannableString)localObject1).setSpan(new GHSTypefaceSpan(null, (Typeface)localObject2, (int)e.getTextSize()), 0, i1, 33);
      e.setTag(2131232029, null);
    }
    label528:
    Object localObject2 = j;
    int i2 = localObject2.length;
    int i1 = 0;
    label540:
    float f1;
    if (i1 < i2)
    {
      localObject1 = localObject2[i1];
      if ((i != null) && (((Button)localObject1).getId() == i.toInt()))
      {
        a(i.toInt());
        if (((Button)localObject1).getTag(2131232029) == null) {
          break label648;
        }
        f1 = ((Float)((Button)localObject1).getTag(2131232029)).floatValue();
        label608:
        g = f1;
        if (((Button)localObject1).getTag(2131232030) == null) {
          break label653;
        }
      }
    }
    label648:
    label653:
    for (Object localObject1 = ((Button)localObject1).getTag(2131232030).toString();; localObject1 = null)
    {
      h = ((String)localObject1);
      i1 += 1;
      break label540;
      break;
      f1 = 0.0F;
      break label608;
    }
  }
  
  public void a(float paramFloat)
  {
    Object localObject;
    String str;
    if (e != null)
    {
      f = false;
      localObject = e.getContext();
      str = ((Context)localObject).getString(2131232034);
      if (str.indexOf("$") != str.length() - 1) {
        break label210;
      }
    }
    label210:
    for (int i1 = str.length() - 1;; i1 = str.length())
    {
      Typeface localTypeface = h.a((Context)localObject, ((Context)localObject).getString(2131231647));
      localObject = new SpannableString(str + String.format(Locale.US, ((Context)localObject).getString(2131231832), new Object[] { Float.valueOf(paramFloat) }));
      ((SpannableString)localObject).setSpan(new GHSTypefaceSpan(null, localTypeface, (int)e.getTextSize()), 0, i1, 33);
      e.setText((CharSequence)localObject);
      e.setTag(2131232029, Float.valueOf(paramFloat));
      g = paramFloat;
      h = e.getTag(2131232030).toString();
      a(e.getId());
      c();
      b();
      return;
    }
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if ((getParentFragment() != null) && ((getParentFragment() instanceof o))) {
      m = ((o)getParentFragment());
    }
    while (!(paramActivity instanceof o)) {
      return;
    }
    m = ((o)paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = GHSApplication.a().b().aa();
    if (paramBundle != null)
    {
      i = paramBundle.getSelectedTip();
      f = paramBundle.getIsCash();
      g = paramBundle.getTipAmount();
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903160, null);
    a = ((Button)paramLayoutInflater.findViewById(2131690122));
    a.setOnClickListener(n);
    b = ((Button)paramLayoutInflater.findViewById(2131690123));
    b.setOnClickListener(n);
    c = ((Button)paramLayoutInflater.findViewById(2131690124));
    c.setOnClickListener(n);
    d = ((Button)paramLayoutInflater.findViewById(2131690125));
    d.setOnClickListener(n);
    e = ((Button)paramLayoutInflater.findViewById(2131690126));
    e.setOnClickListener(n);
    j = new Button[] { a, b, c, d, e };
    a();
    return paramLayoutInflater;
  }
  
  public void onDetach()
  {
    super.onDetach();
    m = null;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSTipFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */