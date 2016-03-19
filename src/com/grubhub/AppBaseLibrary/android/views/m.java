package com.grubhub.AppBaseLibrary.android.views;

import android.content.Context;
import android.content.res.Resources;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSAmount;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAmount;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRange;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel.GHSIDateTime;
import com.grubhub.AppBaseLibrary.android.dataServices.net.images.GHSNetworkImageView;
import com.grubhub.AppBaseLibrary.android.dataServices.net.images.a;
import com.grubhub.AppBaseLibrary.android.order.g;
import com.grubhub.AppBaseLibrary.android.order.j;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.Locale;

public class m
  extends RelativeLayout
{
  private TextView A;
  private TextView B;
  private GHSIRestaurantDataModel C;
  private g D;
  private ArrayList<GHSIRestaurantDataModel.GHSIDateTime> E;
  private LinkedHashSet<String> F;
  private q G;
  private boolean H;
  private boolean I;
  private boolean J;
  private int K;
  private p L;
  private View a;
  private View b;
  private View c;
  private GHSNetworkImageView d;
  private ImageView e;
  private GHSRatingStarView f;
  private TextView g;
  private TextView h;
  private TextView i;
  private TextView j;
  private TextView k;
  private TextView l;
  private TextView m;
  private TextView n;
  private TextView o;
  private TextView p;
  private TextView q;
  private TextView r;
  private View s;
  private View t;
  private View u;
  private View v;
  private View w;
  private TextView x;
  private TextView y;
  private View z;
  
  public m(Context paramContext)
  {
    super(paramContext);
    a(paramContext, null);
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    paramAttributeSet = LayoutInflater.from(paramContext).inflate(2130903221, this, true);
    K = getResources().getDimensionPixelSize(2131427517);
    a = paramAttributeSet.findViewById(2131690279);
    b = paramAttributeSet.findViewById(2131690311);
    d = ((GHSNetworkImageView)paramAttributeSet.findViewById(2131690282));
    e = ((ImageView)paramAttributeSet.findViewById(2131690283));
    e.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (m.a(m.this) != null) {
          m.a(m.this).d();
        }
      }
    });
    f = ((GHSRatingStarView)paramAttributeSet.findViewById(2131690286));
    g = ((TextView)paramAttributeSet.findViewById(2131690288));
    h = ((TextView)paramAttributeSet.findViewById(2131690299));
    i = ((TextView)paramAttributeSet.findViewById(2131690284));
    j = ((TextView)paramAttributeSet.findViewById(2131690300));
    k = ((TextView)paramAttributeSet.findViewById(2131690296));
    l = ((TextView)paramAttributeSet.findViewById(2131690298));
    m = ((TextView)paramAttributeSet.findViewById(2131690285));
    z = paramAttributeSet.findViewById(2131690290);
    A = ((TextView)paramAttributeSet.findViewById(2131690307));
    n = ((TextView)paramAttributeSet.findViewById(2131690306));
    o = ((TextView)paramAttributeSet.findViewById(2131690302));
    s = paramAttributeSet.findViewById(2131690289);
    t = paramAttributeSet.findViewById(2131690297);
    u = paramAttributeSet.findViewById(2131690293);
    v = paramAttributeSet.findViewById(2131690303);
    w = paramAttributeSet.findViewById(2131690305);
    q = ((TextView)paramAttributeSet.findViewById(2131690292));
    p = ((TextView)paramAttributeSet.findViewById(2131690294));
    r = ((TextView)paramAttributeSet.findViewById(2131690304));
    paramAttributeSet.findViewById(2131690312).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (m.a(m.this) != null) {
          m.a(m.this).a();
        }
      }
    });
    z.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (m.a(m.this) != null) {
          m.a(m.this).b();
        }
      }
    });
    B = ((TextView)paramAttributeSet.findViewById(2131690313));
    B.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (m.a(m.this) != null) {
          m.a(m.this).c();
        }
      }
    });
    c = paramAttributeSet.findViewById(2131690308);
    x = ((TextView)paramAttributeSet.findViewById(2131690309));
    y = ((TextView)paramAttributeSet.findViewById(2131690310));
    setBackgroundColor(paramContext.getResources().getColor(2131558468));
  }
  
  private void b()
  {
    if ((o != null) && (n != null) && (r != null) && (v != null) && (w != null))
    {
      if ((o.getVisibility() != 0) || ((n.getVisibility() != 0) && (r.getVisibility() != 0))) {
        break label102;
      }
      v.setVisibility(0);
    }
    while ((n.getVisibility() == 0) && (r.getVisibility() == 0))
    {
      w.setVisibility(0);
      return;
      label102:
      v.setVisibility(8);
    }
    w.setVisibility(8);
  }
  
  private void c()
  {
    if ((k != null) && (l != null) && (t != null))
    {
      if ((k.getVisibility() == 0) && (l.getVisibility() == 0)) {
        t.setVisibility(0);
      }
    }
    else {
      return;
    }
    t.setVisibility(8);
  }
  
  private void d()
  {
    if ((q != null) && (p != null) && (u != null))
    {
      if ((q.getVisibility() == 0) && (p.getVisibility() == 0)) {
        u.setVisibility(0);
      }
    }
    else {
      return;
    }
    u.setVisibility(8);
  }
  
  private void e()
  {
    if ((H) && (I))
    {
      z.setVisibility(0);
      return;
    }
    z.setVisibility(8);
  }
  
  private void setDescriptionByMode(GHSIRestaurantDataModel paramGHSIRestaurantDataModel)
  {
    if (m != null)
    {
      if (G == q.FULL)
      {
        m.setMaxLines(2);
        setDescription(paramGHSIRestaurantDataModel.getRestaurantDescription());
      }
    }
    else {
      return;
    }
    setDescription(paramGHSIRestaurantDataModel.getRestaurantDescriptionCondensed());
    m.setMaxLines(1);
  }
  
  private void setMatchingItems(int paramInt)
  {
    x.setText(String.valueOf(paramInt));
    y.setText(getContext().getResources().getQuantityString(2131755008, paramInt));
  }
  
  public void a()
  {
    if ((C != null) && (D != null) && (E != null)) {
      if (C.isOpen(D)) {
        break label52;
      }
    }
    label52:
    for (boolean bool = true;; bool = false)
    {
      a(bool, j.b(E));
      return;
    }
  }
  
  public void a(GHSIAmount paramGHSIAmount, o paramo, boolean paramBoolean)
  {
    Context localContext;
    if (p != null)
    {
      if ((!paramBoolean) || (paramGHSIAmount == null)) {
        break label149;
      }
      localContext = getContext();
      String str = String.format(Locale.US, localContext.getString(2131231830), new Object[] { paramGHSIAmount.getAmount() });
      switch (5.a[paramo.ordinal()])
      {
      default: 
        paramGHSIAmount = localContext.getString(2131231930);
        p.setText(String.format(Locale.US, paramGHSIAmount, new Object[] { str }));
        p.setVisibility(0);
      }
    }
    for (;;)
    {
      d();
      return;
      paramGHSIAmount = localContext.getString(2131231932);
      break;
      paramGHSIAmount = localContext.getString(2131231931);
      break;
      label149:
      p.setText("");
      p.setVisibility(8);
    }
  }
  
  public void a(GHSIRestaurantDataModel paramGHSIRestaurantDataModel, g paramg)
  {
    r localr;
    if ((paramGHSIRestaurantDataModel != null) && (paramg != null))
    {
      C = paramGHSIRestaurantDataModel;
      D = paramg;
      if (paramg != g.DELIVERY) {
        break label323;
      }
      localr = r.DELIVERY;
      setStyle(localr);
      a(paramGHSIRestaurantDataModel.getRestaurantMediaImage(), null);
      setFavoriteIcon(paramGHSIRestaurantDataModel.getRestaurantId());
      setName(paramGHSIRestaurantDataModel.getRestaurantName());
      setDescriptionByMode(paramGHSIRestaurantDataModel);
      setRatings(Math.round(paramGHSIRestaurantDataModel.getStarRating()));
      setRatingsCount(paramGHSIRestaurantDataModel.getRatingCount());
      setHasCoupons(paramGHSIRestaurantDataModel.hasCoupons());
      setIsNewRestaurant(paramGHSIRestaurantDataModel.isNew());
      setReviewCount(paramGHSIRestaurantDataModel.getRatingCount());
      setIsPhoneOnly(paramGHSIRestaurantDataModel.isPhoneOnly());
      a(paramGHSIRestaurantDataModel.isAcceptingCash(), paramGHSIRestaurantDataModel.isAcceptingCredit());
      setPriceRange(paramGHSIRestaurantDataModel.getRestaurantPriceRating());
      setDistance(String.format("%.1f", new Object[] { Float.valueOf(paramGHSIRestaurantDataModel.getDistanceFromDinerLocationMiles()) }));
      b(paramGHSIRestaurantDataModel.offersDelivery(), paramGHSIRestaurantDataModel.offersPickup());
      E = paramGHSIRestaurantDataModel.getHoursOfOperation(paramg);
      if (paramg != g.DELIVERY) {
        break label560;
      }
      setTime(paramGHSIRestaurantDataModel.getEstimatedDeliveryTime());
      setMinimum(paramGHSIRestaurantDataModel.getDeliveryMinimum());
      if (paramGHSIRestaurantDataModel.getDeliveryFeeExact() == null) {
        break label348;
      }
      if (paramGHSIRestaurantDataModel.getDeliveryFeeExact().getAmount().floatValue() <= 0.0F) {
        break label331;
      }
      a(paramGHSIRestaurantDataModel.getDeliveryFeeExact(), o.EXACT, paramGHSIRestaurantDataModel.offersDelivery());
      label288:
      if (paramGHSIRestaurantDataModel.isOpen(paramg)) {
        break label583;
      }
    }
    label323:
    label331:
    label348:
    label560:
    label583:
    for (boolean bool = true;; bool = false)
    {
      a(bool, j.b(E));
      setMatchingItems(paramGHSIRestaurantDataModel.getMenuItemMatchingCount());
      return;
      localr = r.PICKUP;
      break;
      a(null, o.EXACT, paramGHSIRestaurantDataModel.offersDelivery());
      break label288;
      if ((paramGHSIRestaurantDataModel.getDeliveryFeeMinimum() != null) && (paramGHSIRestaurantDataModel.getDeliveryFeeMaximum() != null) && (paramGHSIRestaurantDataModel.getDeliveryFeeMinimum().getAmount().equals(paramGHSIRestaurantDataModel.getDeliveryFeeMaximum().getAmount())) && (paramGHSIRestaurantDataModel.getDeliveryFeeMinimum().getAmount().floatValue() > 0.0F))
      {
        a(paramGHSIRestaurantDataModel.getDeliveryFeeMinimum(), o.EXACT, paramGHSIRestaurantDataModel.offersDelivery());
        break label288;
      }
      if ((paramGHSIRestaurantDataModel.getDeliveryFeeMinimum() != null) && (paramGHSIRestaurantDataModel.getDeliveryFeeMinimum().getAmount().floatValue() > 0.0F))
      {
        a(paramGHSIRestaurantDataModel.getDeliveryFeeMinimum(), o.MIN, paramGHSIRestaurantDataModel.offersDelivery());
        break label288;
      }
      if ((paramGHSIRestaurantDataModel.getDeliveryFeeMaximum() != null) && (paramGHSIRestaurantDataModel.getDeliveryFeeMaximum().getAmount().floatValue() > 0.0F))
      {
        a(new GHSAmount(Integer.valueOf(0), ""), o.MIN, paramGHSIRestaurantDataModel.offersDelivery());
        break label288;
      }
      a(null, o.EXACT, paramGHSIRestaurantDataModel.offersDelivery());
      break label288;
      setTime(paramGHSIRestaurantDataModel.getEstimatedPickupReadyTime());
      setMinimum(paramGHSIRestaurantDataModel.getPickupMinimum());
      break label288;
    }
  }
  
  public void a(String paramString1, String paramString2)
  {
    if (d != null) {
      a.a(getContext()).a(paramString1, paramString2, d, 2130837922);
    }
  }
  
  public void a(boolean paramBoolean, String paramString)
  {
    Context localContext;
    if (A != null)
    {
      if ((!paramBoolean) || (G != q.FULL)) {
        break label80;
      }
      localContext = getContext();
      if (paramString == null) {
        break label69;
      }
    }
    label69:
    for (paramString = String.format(Locale.US, localContext.getString(2131231927), new Object[] { paramString });; paramString = localContext.getString(2131231926))
    {
      A.setText(paramString);
      A.setVisibility(0);
      return;
    }
    label80:
    A.setVisibility(8);
  }
  
  public void a(boolean paramBoolean, LinkedHashSet<String> paramLinkedHashSet)
  {
    J = paramBoolean;
    F = paramLinkedHashSet;
  }
  
  public void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (n != null)
    {
      if ((!paramBoolean1) || (paramBoolean2)) {
        break label45;
      }
      n.setText(getResources().getString(2131231925));
      n.setVisibility(0);
    }
    for (;;)
    {
      b();
      return;
      label45:
      if ((!paramBoolean1) && (paramBoolean2))
      {
        n.setText(getResources().getString(2131231929));
        n.setVisibility(0);
      }
      else
      {
        n.setVisibility(8);
      }
    }
  }
  
  public void b(boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((paramBoolean1) && (!paramBoolean2))
    {
      r.setText(2131231933);
      r.setVisibility(0);
      b();
      return;
    }
    if ((!paramBoolean1) && (paramBoolean2))
    {
      r.setText(2131231940);
      r.setVisibility(0);
      b();
      return;
    }
    r.setText("");
    r.setVisibility(8);
  }
  
  public void setCouponsVisible(boolean paramBoolean)
  {
    I = paramBoolean;
    e();
  }
  
  public void setDescription(String paramString)
  {
    if (m != null) {
      m.setText(paramString);
    }
  }
  
  public void setDisplayMode(q paramq)
  {
    switch (5.b[paramq.ordinal()])
    {
    default: 
      b.setVisibility(8);
      A.setVisibility(8);
      c.setVisibility(8);
      G = q.CONDENSED;
      return;
    case 1: 
      b.setVisibility(0);
      A.setVisibility(0);
      c.setVisibility(8);
      a.setBackgroundColor(0);
      G = q.FULL;
      return;
    }
    b.setVisibility(8);
    A.setVisibility(8);
    G = q.MATCHING_ITEMS;
  }
  
  public void setDistance(String paramString)
  {
    if (k != null)
    {
      k.setText(paramString + " " + getResources().getString(2131231935));
      c();
    }
  }
  
  public void setFavoriteIcon(String paramString)
  {
    if ((e != null) && (!J))
    {
      e.setVisibility(8);
      return;
    }
    e.setVisibility(0);
    if ((F != null) && (F.contains(paramString)))
    {
      e.setSelected(true);
      e.setTag(n.TRUE);
      return;
    }
    e.setSelected(false);
    e.setTag(n.FALSE);
  }
  
  public void setHasCoupons(boolean paramBoolean)
  {
    H = paramBoolean;
    e();
  }
  
  public void setIsNewRestaurant(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      g.setVisibility(0);
      if (H)
      {
        s.setVisibility(0);
        return;
      }
      s.setVisibility(8);
      return;
    }
    s.setVisibility(8);
    g.setVisibility(8);
  }
  
  public void setIsPhoneOnly(boolean paramBoolean)
  {
    if (o != null)
    {
      if (!paramBoolean) {
        break label24;
      }
      o.setVisibility(0);
    }
    for (;;)
    {
      b();
      return;
      label24:
      o.setVisibility(8);
    }
  }
  
  public void setMatchingItemsAltColorEnabled(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      c.setBackgroundResource(2130837585);
      x.setBackgroundResource(2130837587);
      return;
    }
    c.setBackgroundResource(2130837584);
    x.setBackgroundResource(2130837586);
  }
  
  public void setMinimum(GHSIAmount paramGHSIAmount)
  {
    if ((q != null) && (paramGHSIAmount != null))
    {
      q.setText(String.format(Locale.US, getContext().getString(2131231830), new Object[] { paramGHSIAmount.getAmount() }) + " " + getResources().getString(2131231936));
      d();
    }
  }
  
  public void setName(String paramString)
  {
    if (i != null) {
      i.setText(paramString);
    }
  }
  
  public void setPriceRange(int paramInt)
  {
    int i1;
    if (j != null)
    {
      j.setText("");
      if (paramInt <= 5) {
        break label112;
      }
      i1 = 5;
    }
    for (;;)
    {
      SpannableString localSpannableString = new SpannableString("$$$$$");
      paramInt = getContext().getResources().getColor(2131558481);
      int i2 = getContext().getResources().getColor(2131558485);
      localSpannableString.setSpan(new ForegroundColorSpan(paramInt), 0, i1, 33);
      localSpannableString.setSpan(new ForegroundColorSpan(i2), i1, 5, 33);
      j.setText(localSpannableString);
      return;
      label112:
      i1 = paramInt;
      if (paramInt < 0) {
        i1 = 0;
      }
    }
  }
  
  public void setRatings(int paramInt)
  {
    if (f != null) {
      f.setRatings(paramInt);
    }
  }
  
  public void setRatingsCount(int paramInt)
  {
    if (h != null) {
      h.setText(String.format(getContext().getResources().getQuantityString(2131755009, paramInt), new Object[] { Integer.valueOf(paramInt) }));
    }
  }
  
  public void setRestaurantHeaderViewListener(p paramp)
  {
    L = paramp;
  }
  
  public void setReviewCount(int paramInt)
  {
    LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)B.getLayoutParams();
    if (paramInt > 0)
    {
      leftMargin = K;
      weight = 1.0F;
      B.setVisibility(0);
      return;
    }
    leftMargin = 0;
    weight = 0.0F;
    B.setVisibility(8);
  }
  
  public void setStyle(r paramr)
  {
    switch (5.c[paramr.ordinal()])
    {
    default: 
      u.setVisibility(0);
      q.setVisibility(0);
      return;
    case 1: 
      p.setVisibility(0);
      t.setVisibility(0);
      q.setVisibility(0);
      u.setVisibility(0);
      return;
    }
    t.setVisibility(8);
    p.setVisibility(8);
    u.setVisibility(8);
    q.setVisibility(8);
  }
  
  public void setTime(GHSIRange paramGHSIRange)
  {
    int i1 = paramGHSIRange.getLowIntValue();
    int i2 = paramGHSIRange.getHighIntValue();
    if ((i1 > 0) && (i2 > i1)) {
      setTime(String.valueOf(i1) + " - " + String.valueOf(i2));
    }
    do
    {
      return;
      if (i2 <= i1)
      {
        setTime(String.valueOf(i1));
        return;
      }
    } while (i2 <= 0);
    setTime(String.valueOf(i2));
  }
  
  public void setTime(String paramString)
  {
    if (l != null)
    {
      l.setText(paramString + " " + getResources().getString(2131231937));
      c();
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */