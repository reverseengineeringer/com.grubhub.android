package com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.d;
import com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.e;
import com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.f;
import com.grubhub.AppBaseLibrary.android.views.GHSPaymentsSpinner;
import com.grubhub.AppBaseLibrary.android.views.j;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public abstract class GHSPaymentSelectionFragment
  extends Fragment
{
  protected boolean a;
  protected String b;
  protected com.grubhub.AppBaseLibrary.android.dataServices.b.b c;
  protected GHSPaymentsSpinner d;
  protected j e;
  protected d[] f;
  
  private void a(GHSPaymentsSpinner paramGHSPaymentsSpinner)
  {
    a = true;
    paramGHSPaymentsSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener()
    {
      public void onItemSelected(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = (d)paramAnonymousAdapterView.getSelectedItem();
        if (a) {
          paramAnonymousAdapterView.a(b);
        }
        for (;;)
        {
          a = true;
          return;
          paramAnonymousAdapterView.b();
        }
      }
      
      public void onNothingSelected(AdapterView<?> paramAnonymousAdapterView)
      {
        a = true;
      }
    });
  }
  
  public void a()
  {
    a(0);
  }
  
  protected void a(int paramInt)
  {
    a = false;
    if (d != null)
    {
      d.setSelection(paramInt, false);
      return;
    }
    a = true;
  }
  
  protected d[] b()
  {
    ArrayList localArrayList = new ArrayList();
    Object localObject1 = h();
    localArrayList.add(c());
    if (GHSApplication.a().b().q())
    {
      localObject2 = e();
      if (localObject2 != null) {
        localArrayList.add(localObject2);
      }
    }
    Object localObject2 = f();
    if (localObject2 != null) {
      localArrayList.add(localObject2);
    }
    if (((Set)localObject1).contains(GHSICartPaymentDataModel.PaymentTypes.CASH))
    {
      localObject1 = d();
      if (localObject1 != null) {
        localArrayList.add(localObject1);
      }
    }
    return (d[])localArrayList.toArray(new d[localArrayList.size()]);
  }
  
  protected com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.b c()
  {
    new com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.b(new e()
    {
      public void a() {}
    });
  }
  
  protected com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.c d()
  {
    new com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.c(new e()
    {
      public void a() {}
    });
  }
  
  protected com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.a e()
  {
    new com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.a(new e()
    {
      public void a() {}
    });
  }
  
  protected f f()
  {
    new f(new e()
    {
      public void a() {}
    });
  }
  
  protected a g()
  {
    Fragment localFragment = getParentFragment();
    if ((localFragment != null) && ((localFragment instanceof a))) {
      return (a)localFragment;
    }
    return null;
  }
  
  protected Set<GHSICartPaymentDataModel.PaymentTypes> h()
  {
    Set localSet = com.grubhub.AppBaseLibrary.android.utils.c.a(c, true);
    Object localObject;
    if (localSet != null)
    {
      localObject = localSet;
      if (!localSet.isEmpty()) {}
    }
    else
    {
      localObject = new HashSet();
    }
    return (Set<GHSICartPaymentDataModel.PaymentTypes>)localObject;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    c = GHSApplication.a().b();
    paramBundle = getArguments();
    e = ((j)paramBundle.getSerializable("spinnerLocation"));
    b = paramBundle.getString("googleEventCategory");
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903142, paramViewGroup, false);
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    paramBundle = (GHSPaymentsSpinner)paramView.findViewById(2131689978);
    paramBundle.setLocation(e);
    f = b();
    paramBundle.setAdapter(new b(this, getActivity(), f));
    a(paramBundle);
    d = paramBundle;
    if (f.length == 1) {
      paramView.setVisibility(8);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.GHSPaymentSelectionFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */