package com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSSelectedPaymentModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIPaymentResourceCreatedDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIVaultedPayPalModel;
import com.grubhub.AppBaseLibrary.android.views.j;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

public class GHSPaymentSelectionInfoFragment
  extends GHSPaymentSelectionFragment
  implements com.grubhub.AppBaseLibrary.android.utils.g.f
{
  private com.grubhub.AppBaseLibrary.android.account.e g;
  private com.grubhub.AppBaseLibrary.android.utils.g.b h;
  private com.grubhub.AppBaseLibrary.android.utils.g.c i;
  private com.grubhub.AppBaseLibrary.android.utils.g.a j;
  
  public static GHSPaymentSelectionInfoFragment a(com.grubhub.AppBaseLibrary.android.account.e parame)
  {
    GHSPaymentSelectionInfoFragment localGHSPaymentSelectionInfoFragment = new GHSPaymentSelectionInfoFragment();
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("spinnerLocation", j.PAYMENT_INFO);
    localBundle.putSerializable("paymentInfoType", parame);
    localGHSPaymentSelectionInfoFragment.setArguments(localBundle);
    return localGHSPaymentSelectionInfoFragment;
  }
  
  private void j()
  {
    h = null;
    i = null;
    j = null;
  }
  
  public void a(com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    if (g() != null) {
      g().a(paramb);
    }
    j();
  }
  
  public void a(GHSIPaymentResourceCreatedDataModel paramGHSIPaymentResourceCreatedDataModel, GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes)
  {
    if (g() != null) {
      g().a(paramGHSIPaymentResourceCreatedDataModel, paramPaymentTypes);
    }
    j();
  }
  
  public void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, boolean paramBoolean)
  {
    h = new com.grubhub.AppBaseLibrary.android.utils.g.b(getActivity(), paramString1, paramString2, paramString3, paramString4, paramString5, paramBoolean, this);
    h.a();
  }
  
  protected com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.d[] b()
  {
    ArrayList localArrayList = new ArrayList();
    if (g == com.grubhub.AppBaseLibrary.android.account.e.ADD)
    {
      localArrayList.add(c());
      localArrayList.add(f());
    }
    for (;;)
    {
      return (com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.d[])localArrayList.toArray(new com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.d[localArrayList.size()]);
      if (g == com.grubhub.AppBaseLibrary.android.account.e.ENTER)
      {
        Set localSet = h();
        if (localSet.isEmpty())
        {
          localArrayList.add(c());
        }
        else
        {
          localArrayList.add(c());
          if ((c.q()) && (localSet.contains(GHSICartPaymentDataModel.PaymentTypes.ANDROID_PAY))) {
            localArrayList.add(e());
          }
          if (localSet.contains(GHSICartPaymentDataModel.PaymentTypes.PAYPAL_EXPRESS)) {
            localArrayList.add(f());
          }
          if (localSet.contains(GHSICartPaymentDataModel.PaymentTypes.CASH)) {
            localArrayList.add(d());
          }
        }
      }
    }
  }
  
  protected com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.c d()
  {
    new com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.c(new com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.e()
    {
      public void a()
      {
        GHSSelectedPaymentModel localGHSSelectedPaymentModel2 = c.s();
        GHSSelectedPaymentModel localGHSSelectedPaymentModel1 = localGHSSelectedPaymentModel2;
        if (localGHSSelectedPaymentModel2 == null) {
          localGHSSelectedPaymentModel1 = new GHSSelectedPaymentModel();
        }
        localGHSSelectedPaymentModel1.setCashPaymentSelected();
        c.a(localGHSSelectedPaymentModel1);
        if (g() != null) {
          g().a(null, GHSICartPaymentDataModel.PaymentTypes.CASH);
        }
      }
    });
  }
  
  protected com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.a e()
  {
    new com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.a(new com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.e()
    {
      public void a()
      {
        if (g() != null) {
          g().b();
        }
        GHSPaymentSelectionInfoFragment.a(GHSPaymentSelectionInfoFragment.this, new com.grubhub.AppBaseLibrary.android.utils.g.a(getActivity(), jdField_this));
        GHSPaymentSelectionInfoFragment.a(GHSPaymentSelectionInfoFragment.this).d();
      }
    });
  }
  
  protected com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.f f()
  {
    new com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.f(new com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.e()
    {
      public void a()
      {
        final ArrayList localArrayList = c.S();
        GHSSelectedPaymentModel localGHSSelectedPaymentModel;
        if ((GHSPaymentSelectionInfoFragment.b(GHSPaymentSelectionInfoFragment.this) == com.grubhub.AppBaseLibrary.android.account.e.ENTER) && (localArrayList != null) && (!localArrayList.isEmpty()))
        {
          localGHSSelectedPaymentModel = c.s();
          if (localGHSSelectedPaymentModel != null) {
            break label198;
          }
          localGHSSelectedPaymentModel = new GHSSelectedPaymentModel();
        }
        label198:
        for (;;)
        {
          localGHSSelectedPaymentModel.setSelectedPayPalId(((GHSIVaultedPayPalModel)localArrayList.get(0)).getId());
          c.a(localGHSSelectedPaymentModel);
          if (g() != null) {
            g().a(new GHSIPaymentResourceCreatedDataModel()
            {
              public boolean getAlreadyExists()
              {
                return false;
              }
              
              public String getId()
              {
                return ((GHSIVaultedPayPalModel)localArrayList.get(0)).getId();
              }
              
              public String getUri()
              {
                return null;
              }
            }, GHSICartPaymentDataModel.PaymentTypes.PAYPAL_EXPRESS);
          }
          return;
          if (g() != null) {
            g().b();
          }
          GHSPaymentSelectionInfoFragment.a(GHSPaymentSelectionInfoFragment.this, new com.grubhub.AppBaseLibrary.android.utils.g.c(getActivity(), jdField_this));
          GHSPaymentSelectionInfoFragment.c(GHSPaymentSelectionInfoFragment.this).a(new com.grubhub.AppBaseLibrary.android.utils.g.d()
          {
            public void a()
            {
              if (g() != null) {
                g().b();
              }
            }
          });
          return;
        }
      }
    });
  }
  
  public void i()
  {
    if (g() != null) {
      g().c();
    }
    j();
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    switch (paramInt1)
    {
    }
    do
    {
      do
      {
        return;
      } while (i == null);
      i.a(paramInt1, paramInt2, paramIntent);
      return;
    } while (j == null);
    j.a(paramInt1, paramInt2, paramIntent);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    g = ((com.grubhub.AppBaseLibrary.android.account.e)getArguments().getSerializable("paymentInfoType"));
  }
  
  public void onStop()
  {
    super.onStop();
    if (h != null) {
      h.h_();
    }
    if (i != null) {
      i.h_();
    }
    if (j != null) {
      j.h_();
    }
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    ((TextView)paramView.findViewById(2131689977)).setText(getResources().getString(2131232024));
    paramView.findViewById(2131689979).setVisibility(8);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.GHSPaymentSelectionInfoFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */