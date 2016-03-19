package com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.q;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSAndroidPayMaskedWalletModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSSelectedPaymentModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIPaymentResourceCreatedDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIVaultedCreditCardModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIVaultedPayPalModel;
import com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.e;
import com.grubhub.AppBaseLibrary.android.utils.g;
import com.grubhub.AppBaseLibrary.android.views.GHSPaymentsSpinner;
import com.grubhub.AppBaseLibrary.android.views.j;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class GHSPaymentSelectionReviewFragment
  extends GHSPaymentSelectionFragment
  implements com.grubhub.AppBaseLibrary.android.utils.g.f
{
  private com.grubhub.AppBaseLibrary.android.utils.g.a g;
  private com.grubhub.AppBaseLibrary.android.utils.g.c h;
  private GHSICartPaymentDataModel.PaymentTypes i;
  
  private void a(GHSSelectedPaymentModel paramGHSSelectedPaymentModel)
  {
    View localView = getView();
    if (localView != null)
    {
      TextView localTextView = (TextView)localView.findViewById(2131689980);
      Button localButton = (Button)localView.findViewById(2131689981);
      final GHSAndroidPayMaskedWalletModel localGHSAndroidPayMaskedWalletModel = paramGHSSelectedPaymentModel.getSelectedMaskedWalletModel();
      StringBuilder localStringBuilder = new StringBuilder(localGHSAndroidPayMaskedWalletModel.getEmail());
      if (localGHSAndroidPayMaskedWalletModel.getPaymentDescriptions() != null)
      {
        localStringBuilder.append("\n");
        int j = 0;
        while (j < localGHSAndroidPayMaskedWalletModel.getPaymentDescriptions().length)
        {
          localStringBuilder.append(localGHSAndroidPayMaskedWalletModel.getPaymentDescriptions()[j]);
          if (j != localGHSAndroidPayMaskedWalletModel.getPaymentDescriptions().length - 1) {
            localStringBuilder.append("\n");
          }
          j += 1;
        }
      }
      localTextView.setText(localStringBuilder.toString());
      localTextView.setTextColor(getResources().getColor(2131558481));
      localButton.setText(getActivity().getString(2131231766));
      localButton.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          GHSPaymentSelectionReviewFragment.a(GHSPaymentSelectionReviewFragment.this, true);
          GHSPaymentSelectionReviewFragment.a(GHSPaymentSelectionReviewFragment.this, new com.grubhub.AppBaseLibrary.android.utils.g.a(getActivity(), jdField_this));
          GHSPaymentSelectionReviewFragment.c(GHSPaymentSelectionReviewFragment.this).a(localGHSAndroidPayMaskedWalletModel.getGoogleTransactionId(), localGHSAndroidPayMaskedWalletModel.getMerchantTransactionId());
        }
      });
      paramGHSSelectedPaymentModel.setSelectedMaskedWalletModel(paramGHSSelectedPaymentModel.getSelectedMaskedWalletModel());
      c.a(paramGHSSelectedPaymentModel);
      a(true, GHSICartPaymentDataModel.PaymentTypes.ANDROID_PAY, i);
      i = GHSICartPaymentDataModel.PaymentTypes.ANDROID_PAY;
      localView.findViewById(2131689979).setVisibility(0);
    }
  }
  
  private void a(boolean paramBoolean)
  {
    q localq = getActivity();
    if ((localq instanceof GHSBaseActivity)) {
      ((GHSBaseActivity)localq).a(paramBoolean);
    }
  }
  
  private void a(boolean paramBoolean, GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes1, GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes2)
  {
    c localc = m();
    if (localc != null) {
      localc.a(paramBoolean, paramPaymentTypes1, paramPaymentTypes2);
    }
  }
  
  private GHSIVaultedCreditCardModel b(GHSSelectedPaymentModel paramGHSSelectedPaymentModel)
  {
    ArrayList localArrayList = c.G();
    if ((localArrayList != null) && (!localArrayList.isEmpty()))
    {
      Iterator localIterator = localArrayList.iterator();
      Object localObject;
      do
      {
        if (!localIterator.hasNext()) {
          break;
        }
        localObject = (GHSIVaultedCreditCardModel)localIterator.next();
      } while ((paramGHSSelectedPaymentModel == null) || (!((GHSIVaultedCreditCardModel)localObject).getId().equals(paramGHSSelectedPaymentModel.getSelectedCreditCardId())));
      for (paramGHSSelectedPaymentModel = (GHSSelectedPaymentModel)localObject;; paramGHSSelectedPaymentModel = null)
      {
        localObject = paramGHSSelectedPaymentModel;
        if (paramGHSSelectedPaymentModel == null) {
          localObject = (GHSIVaultedCreditCardModel)localArrayList.get(0);
        }
        return (GHSIVaultedCreditCardModel)localObject;
      }
    }
    return null;
  }
  
  private GHSIVaultedPayPalModel c(GHSSelectedPaymentModel paramGHSSelectedPaymentModel)
  {
    ArrayList localArrayList = c.S();
    if ((localArrayList != null) && (!localArrayList.isEmpty()))
    {
      Iterator localIterator = localArrayList.iterator();
      Object localObject;
      do
      {
        if (!localIterator.hasNext()) {
          break;
        }
        localObject = (GHSIVaultedPayPalModel)localIterator.next();
      } while ((paramGHSSelectedPaymentModel == null) || (!((GHSIVaultedPayPalModel)localObject).getId().equals(paramGHSSelectedPaymentModel.getSelectedPayPalId())));
      for (paramGHSSelectedPaymentModel = (GHSSelectedPaymentModel)localObject;; paramGHSSelectedPaymentModel = null)
      {
        localObject = paramGHSSelectedPaymentModel;
        if (paramGHSSelectedPaymentModel == null) {
          localObject = (GHSIVaultedPayPalModel)localArrayList.get(0);
        }
        return (GHSIVaultedPayPalModel)localObject;
      }
    }
    return null;
  }
  
  public static GHSPaymentSelectionReviewFragment j()
  {
    GHSPaymentSelectionReviewFragment localGHSPaymentSelectionReviewFragment = new GHSPaymentSelectionReviewFragment();
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("spinnerLocation", j.PAYMENT_INFO);
    localGHSPaymentSelectionReviewFragment.setArguments(localBundle);
    return localGHSPaymentSelectionReviewFragment;
  }
  
  private void l()
  {
    a(false);
    GHSSelectedPaymentModel localGHSSelectedPaymentModel = c.s();
    View localView = getView();
    final c localc = m();
    TextView localTextView;
    Button localButton;
    final GHSIVaultedPayPalModel localGHSIVaultedPayPalModel;
    if (localView != null)
    {
      localTextView = (TextView)localView.findViewById(2131689980);
      localButton = (Button)localView.findViewById(2131689981);
      localGHSIVaultedPayPalModel = c(localGHSSelectedPaymentModel);
      if (localGHSIVaultedPayPalModel == null) {
        break label179;
      }
      localTextView.setText(localGHSIVaultedPayPalModel.getEmail());
      localTextView.setTextColor(getResources().getColor(2131558481));
      localButton.setText(getActivity().getString(2131231766));
      localButton.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if (localc != null) {
            localc.a(GHSICartPaymentDataModel.PaymentTypes.PAYPAL_EXPRESS, localGHSIVaultedPayPalModel.getId());
          }
        }
      });
      if (localGHSSelectedPaymentModel != null) {
        break label253;
      }
      localGHSSelectedPaymentModel = new GHSSelectedPaymentModel();
    }
    label179:
    label253:
    for (;;)
    {
      localGHSSelectedPaymentModel.setSelectedPayPalId(localGHSIVaultedPayPalModel.getId());
      c.a(localGHSSelectedPaymentModel);
      a(true, GHSICartPaymentDataModel.PaymentTypes.PAYPAL_EXPRESS, i);
      for (;;)
      {
        localView.findViewById(2131689979).setVisibility(0);
        i = GHSICartPaymentDataModel.PaymentTypes.PAYPAL_EXPRESS;
        return;
        localTextView.setText(getActivity().getString(2131231765));
        localTextView.setTextColor(getResources().getColor(2131558466));
        localButton.setText(getActivity().getString(2131231764));
        localButton.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            GHSPaymentSelectionReviewFragment.a(GHSPaymentSelectionReviewFragment.this, true);
            GHSPaymentSelectionReviewFragment.a(GHSPaymentSelectionReviewFragment.this, new com.grubhub.AppBaseLibrary.android.utils.g.c(getActivity(), jdField_this));
            GHSPaymentSelectionReviewFragment.e(GHSPaymentSelectionReviewFragment.this).a(new com.grubhub.AppBaseLibrary.android.utils.g.d()
            {
              public void a()
              {
                GHSPaymentSelectionReviewFragment.a(GHSPaymentSelectionReviewFragment.this, true);
              }
            });
          }
        });
        a(false, GHSICartPaymentDataModel.PaymentTypes.PAYPAL_EXPRESS, i);
      }
    }
  }
  
  private c m()
  {
    Fragment localFragment = getParentFragment();
    if ((localFragment != null) && ((localFragment instanceof c))) {
      return (c)localFragment;
    }
    return null;
  }
  
  private void n()
  {
    g = null;
    h = null;
  }
  
  public void a()
  {
    Object localObject = c.s();
    int j;
    int k;
    int m;
    if ((localObject != null) && (((GHSSelectedPaymentModel)localObject).getSelectedPaymentType() != null))
    {
      localObject = ((GHSSelectedPaymentModel)localObject).getSelectedPaymentType();
      b localb = (b)d.getAdapter();
      j = localb.getCount() - 1;
      k = Integer.MAX_VALUE;
      m = Integer.MAX_VALUE;
      label59:
      if (j < 0) {
        break label114;
      }
      if (!((com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.d)localb.getItem(j)).a()) {
        break label144;
      }
      if (((com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.d)localb.getItem(j)).c() != localObject) {
        break label139;
      }
      k = j;
      m = j;
    }
    label114:
    label134:
    label139:
    label144:
    for (;;)
    {
      j -= 1;
      break label59;
      localObject = GHSICartPaymentDataModel.PaymentTypes.CREDIT_CARD;
      break;
      if (m != Integer.MAX_VALUE) {
        if (k == Integer.MAX_VALUE) {
          break label134;
        }
      }
      for (;;)
      {
        a(k);
        return;
        k = m;
      }
      m = j;
    }
  }
  
  public void a(com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    a(false);
    c localc = m();
    if (localc != null) {
      localc.a(paramb);
    }
    n();
  }
  
  public void a(GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes)
  {
    b localb = (b)d.getAdapter();
    int j = 0;
    for (;;)
    {
      if (j < localb.getCount())
      {
        if (((com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.d)localb.getItem(j)).c() == paramPaymentTypes) {
          a(j);
        }
      }
      else {
        return;
      }
      j += 1;
    }
  }
  
  public void a(GHSIPaymentResourceCreatedDataModel paramGHSIPaymentResourceCreatedDataModel, GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes)
  {
    if (paramPaymentTypes != null) {}
    c localc;
    switch (8.a[paramPaymentTypes.ordinal()])
    {
    default: 
      localc = m();
      if (localc != null)
      {
        if (paramGHSIPaymentResourceCreatedDataModel == null) {
          break label90;
        }
        localc.a(paramGHSIPaymentResourceCreatedDataModel.getId(), paramPaymentTypes);
      }
      break;
    }
    for (;;)
    {
      n();
      return;
      a(c.s());
      break;
      l();
      break;
      label90:
      localc.a(null, paramPaymentTypes);
    }
  }
  
  protected com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.d[] b()
  {
    ArrayList localArrayList = new ArrayList();
    Set localSet = h();
    if (localSet.contains(GHSICartPaymentDataModel.PaymentTypes.CREDIT_CARD)) {
      localArrayList.add(c());
    }
    if ((c.q()) && (localSet.contains(GHSICartPaymentDataModel.PaymentTypes.ANDROID_PAY))) {
      localArrayList.add(e());
    }
    if (localSet.contains(GHSICartPaymentDataModel.PaymentTypes.PAYPAL_EXPRESS)) {
      localArrayList.add(f());
    }
    if (localSet.contains(GHSICartPaymentDataModel.PaymentTypes.CASH)) {
      localArrayList.add(d());
    }
    if (localArrayList.isEmpty()) {
      localArrayList.add(c());
    }
    return (com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.d[])localArrayList.toArray(new com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.d[localArrayList.size()]);
  }
  
  protected com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.b c()
  {
    new com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.b(new e()
    {
      public void a()
      {
        GHSPaymentSelectionReviewFragment.a(GHSPaymentSelectionReviewFragment.this, false);
        GHSSelectedPaymentModel localGHSSelectedPaymentModel = c.s();
        View localView = getView();
        final c localc = GHSPaymentSelectionReviewFragment.a(GHSPaymentSelectionReviewFragment.this);
        TextView localTextView;
        Button localButton;
        final GHSIVaultedCreditCardModel localGHSIVaultedCreditCardModel;
        if (localView != null)
        {
          localTextView = (TextView)localView.findViewById(2131689980);
          localButton = (Button)localView.findViewById(2131689981);
          localGHSIVaultedCreditCardModel = GHSPaymentSelectionReviewFragment.a(GHSPaymentSelectionReviewFragment.this, localGHSSelectedPaymentModel);
          if (localGHSIVaultedCreditCardModel == null) {
            break label218;
          }
          localTextView.setText(g.a(localGHSIVaultedCreditCardModel, getResources()));
          localTextView.setTextColor(getResources().getColor(2131558481));
          localButton.setText(getActivity().getString(2131231766));
          localButton.setOnClickListener(new View.OnClickListener()
          {
            public void onClick(View paramAnonymous2View)
            {
              if (localc != null) {
                localc.a(GHSICartPaymentDataModel.PaymentTypes.CREDIT_CARD, localGHSIVaultedCreditCardModel.getId());
              }
            }
          });
          if (localGHSSelectedPaymentModel != null) {
            break label305;
          }
          localGHSSelectedPaymentModel = new GHSSelectedPaymentModel();
        }
        label218:
        label305:
        for (;;)
        {
          localGHSSelectedPaymentModel.setSelectedCreditCardId(localGHSIVaultedCreditCardModel.getId());
          c.a(localGHSSelectedPaymentModel);
          GHSPaymentSelectionReviewFragment.a(GHSPaymentSelectionReviewFragment.this, true, GHSICartPaymentDataModel.PaymentTypes.CREDIT_CARD, GHSPaymentSelectionReviewFragment.b(GHSPaymentSelectionReviewFragment.this));
          for (;;)
          {
            localView.findViewById(2131689979).setVisibility(0);
            GHSPaymentSelectionReviewFragment.a(GHSPaymentSelectionReviewFragment.this, GHSICartPaymentDataModel.PaymentTypes.CREDIT_CARD);
            return;
            localTextView.setText(getActivity().getString(2131230962));
            localTextView.setTextColor(getResources().getColor(2131558466));
            localButton.setText(getActivity().getString(2131231764));
            localButton.setOnClickListener(new View.OnClickListener()
            {
              public void onClick(View paramAnonymous2View)
              {
                if (localc != null) {
                  localc.a(GHSICartPaymentDataModel.PaymentTypes.CREDIT_CARD);
                }
              }
            });
            GHSPaymentSelectionReviewFragment.a(GHSPaymentSelectionReviewFragment.this, false, GHSICartPaymentDataModel.PaymentTypes.CREDIT_CARD, GHSPaymentSelectionReviewFragment.b(GHSPaymentSelectionReviewFragment.this));
          }
        }
      }
    });
  }
  
  protected com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.c d()
  {
    new com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.c(new e()
    {
      public void a()
      {
        GHSPaymentSelectionReviewFragment.a(GHSPaymentSelectionReviewFragment.this, false);
        Object localObject = getView();
        if (localObject != null)
        {
          ((TextView)((View)localObject).findViewById(2131689980)).setText("");
          ((Button)((View)localObject).findViewById(2131689981)).setText("");
          ((View)localObject).findViewById(2131689979).setVisibility(8);
        }
        GHSSelectedPaymentModel localGHSSelectedPaymentModel = c.s();
        localObject = localGHSSelectedPaymentModel;
        if (localGHSSelectedPaymentModel == null) {
          localObject = new GHSSelectedPaymentModel();
        }
        ((GHSSelectedPaymentModel)localObject).setCashPaymentSelected();
        c.a((GHSSelectedPaymentModel)localObject);
        GHSPaymentSelectionReviewFragment.a(GHSPaymentSelectionReviewFragment.this, true, GHSICartPaymentDataModel.PaymentTypes.CASH, GHSPaymentSelectionReviewFragment.b(GHSPaymentSelectionReviewFragment.this));
        GHSPaymentSelectionReviewFragment.a(GHSPaymentSelectionReviewFragment.this, GHSICartPaymentDataModel.PaymentTypes.CASH);
      }
    });
  }
  
  protected com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.a e()
  {
    new com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.a(new e()
    {
      public void a()
      {
        Object localObject = c.s();
        if ((localObject == null) || (((GHSSelectedPaymentModel)localObject).getSelectedMaskedWalletModel() == null))
        {
          localObject = getView();
          if (localObject != null)
          {
            ((TextView)((View)localObject).findViewById(2131689980)).setText("");
            ((Button)((View)localObject).findViewById(2131689981)).setText("");
            ((View)localObject).findViewById(2131689979).setVisibility(8);
          }
          GHSPaymentSelectionReviewFragment.a(GHSPaymentSelectionReviewFragment.this, false, GHSICartPaymentDataModel.PaymentTypes.ANDROID_PAY, GHSPaymentSelectionReviewFragment.b(GHSPaymentSelectionReviewFragment.this));
          GHSPaymentSelectionReviewFragment.a(GHSPaymentSelectionReviewFragment.this, GHSICartPaymentDataModel.PaymentTypes.ANDROID_PAY);
          GHSPaymentSelectionReviewFragment.a(GHSPaymentSelectionReviewFragment.this, true);
          GHSPaymentSelectionReviewFragment.a(GHSPaymentSelectionReviewFragment.this, new com.grubhub.AppBaseLibrary.android.utils.g.a(getActivity(), jdField_this));
          GHSPaymentSelectionReviewFragment.c(GHSPaymentSelectionReviewFragment.this).d();
          return;
        }
        GHSPaymentSelectionReviewFragment.b(GHSPaymentSelectionReviewFragment.this, (GHSSelectedPaymentModel)localObject);
      }
    });
  }
  
  protected com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.f f()
  {
    new com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.f(new e()
    {
      public void a()
      {
        GHSPaymentSelectionReviewFragment.d(GHSPaymentSelectionReviewFragment.this);
      }
    });
  }
  
  public void i()
  {
    a(false);
    a();
  }
  
  public void k()
  {
    GHSSelectedPaymentModel localGHSSelectedPaymentModel = c.s();
    c localc = m();
    if ((localGHSSelectedPaymentModel == null) || (localGHSSelectedPaymentModel.getSelectedPaymentType() == null))
    {
      localc.a(new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_PAYMENT_PAYMENT_METHOD_UNSELECTED));
      return;
    }
    if ((localGHSSelectedPaymentModel.getSelectedPaymentType() == GHSICartPaymentDataModel.PaymentTypes.ANDROID_PAY) && (com.grubhub.AppBaseLibrary.android.utils.f.a(localGHSSelectedPaymentModel.getSelectedPaymentId())))
    {
      g = new com.grubhub.AppBaseLibrary.android.utils.g.a(getActivity(), this);
      g.b(localGHSSelectedPaymentModel.getSelectedMaskedWalletModel().getGoogleTransactionId(), localGHSSelectedPaymentModel.getSelectedMaskedWalletModel().getMerchantTransactionId());
      return;
    }
    localc.a(localGHSSelectedPaymentModel.getSelectedPaymentId(), localGHSSelectedPaymentModel.getSelectedPaymentType());
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
      } while (h == null);
      h.a(paramInt1, paramInt2, paramIntent);
      return;
    } while (g == null);
    g.a(paramInt1, paramInt2, paramIntent);
  }
  
  public void onStop()
  {
    super.onStop();
    if (h != null) {
      h.h_();
    }
    if (g != null) {
      g.h_();
    }
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    paramView.setVisibility(0);
    ((TextView)paramView.findViewById(2131689977)).setText(getResources().getString(2131231964));
    paramBundle = (TextView)paramView.findViewById(2131689980);
    paramBundle.setText(getActivity().getString(2131230962));
    paramBundle.setTextColor(getResources().getColor(2131558466));
    if (f.length == 1)
    {
      if (f[0].c() == GHSICartPaymentDataModel.PaymentTypes.CREDIT_CARD) {
        paramView.findViewById(2131689978).setVisibility(8);
      }
      f[0].b();
      return;
    }
    a();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.GHSPaymentSelectionReviewFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */