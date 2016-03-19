package com.grubhub.AppBaseLibrary.android.utils.g;

import android.app.Activity;
import android.content.Intent;
import com.braintreepayments.api.exceptions.ErrorWithResponse;
import com.braintreepayments.api.h;
import com.braintreepayments.api.models.PaymentMethod;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSPaymentTokenEnum;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSSelectedPaymentModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIGetPaymentsModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIPaymentResourceCreatedDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIPaymentTokenModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIVaultedPayPalModel;
import java.util.ArrayList;
import java.util.Iterator;

public class c
  extends e
{
  private com.braintreepayments.api.c e;
  private d f;
  
  public c(Activity paramActivity, f paramf)
  {
    super(paramActivity, GHSPaymentTokenEnum.PAYPAL_EXPRESS, paramf);
  }
  
  public void a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (e == null)
    {
      com.grubhub.AppBaseLibrary.android.utils.e.a.b("Unable to retrieve PayPal payment nonce.", "BrainTree object is null.");
      if (c != null) {
        c.a(new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN));
      }
    }
    do
    {
      return;
      if (paramInt2 != -1) {
        break;
      }
      e.a(b, paramInt2, paramIntent);
    } while (f == null);
    f.a();
    return;
    e();
  }
  
  protected void a(com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    com.grubhub.AppBaseLibrary.android.utils.e.a.b("Unable to retrieve the client token.", "Token type: " + a.toString().toLowerCase());
    if (c != null) {
      c.a(paramb);
    }
  }
  
  protected void a(GHSIPaymentResourceCreatedDataModel paramGHSIPaymentResourceCreatedDataModel)
  {
    if (c != null) {
      c.a(paramGHSIPaymentResourceCreatedDataModel, GHSICartPaymentDataModel.PaymentTypes.PAYPAL_EXPRESS);
    }
  }
  
  protected void a(final GHSIPaymentTokenModel paramGHSIPaymentTokenModel)
  {
    com.braintreepayments.api.c.a(b, paramGHSIPaymentTokenModel.getToken(), new com.braintreepayments.api.d()
    {
      public void a(boolean paramAnonymousBoolean, com.braintreepayments.api.c paramAnonymousc, String paramAnonymousString, Exception paramAnonymousException)
      {
        if (paramAnonymousBoolean)
        {
          c.a(c.this, paramAnonymousc);
          c.a(c.this).a(new h()
          {
            public void a(PaymentMethod paramAnonymous2PaymentMethod)
            {
              if ((paramAnonymous2PaymentMethod != null) && (com.grubhub.AppBaseLibrary.android.utils.f.b(paramAnonymous2PaymentMethod.d()))) {
                a(a.getPaymentId(), paramAnonymous2PaymentMethod.d(), false);
              }
              do
              {
                return;
                com.grubhub.AppBaseLibrary.android.utils.e.a.b("Unable to retrieve PayPal payment nonce.", "Client token: " + a.getToken());
              } while (c == null);
              c.a(new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN));
            }
          });
          c.a(c.this).a(new com.braintreepayments.api.e()
          {
            public void a(ErrorWithResponse paramAnonymous2ErrorWithResponse)
            {
              com.grubhub.AppBaseLibrary.android.utils.e.a.b("Unable to retrieve PayPal payment nonce.", "BrainTree Error: " + paramAnonymous2ErrorWithResponse.getMessage());
              if (c != null) {
                c.a(new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN));
              }
            }
            
            public void a(Throwable paramAnonymous2Throwable)
            {
              com.grubhub.AppBaseLibrary.android.utils.e.a.b("Unable to retrieve PayPal payment nonce.", "BrainTree Error: " + paramAnonymous2Throwable.getMessage());
              if (c != null) {
                c.a(new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN));
              }
            }
          });
          c.a(c.this).a(b, 53655);
        }
        do
        {
          return;
          com.grubhub.AppBaseLibrary.android.utils.e.a.b("BrainTree setup failed.", "Error Msg: " + paramAnonymousString);
        } while (c == null);
        c.a(new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN));
      }
    });
  }
  
  public void a(d paramd)
  {
    f = paramd;
    f();
  }
  
  protected void b(com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    com.grubhub.AppBaseLibrary.android.utils.e.a.b("Vaulting the payment failed.", paramb.getMessage());
    if (c != null) {
      c.a(paramb);
    }
  }
  
  protected void b(final GHSIPaymentResourceCreatedDataModel paramGHSIPaymentResourceCreatedDataModel)
  {
    d = new com.grubhub.AppBaseLibrary.android.dataServices.a.f.c(b, null, null);
    d.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(GHSIGetPaymentsModel paramAnonymousGHSIGetPaymentsModel)
      {
        String str = paramGHSIPaymentResourceCreatedDataModel.getId();
        paramAnonymousGHSIGetPaymentsModel = paramAnonymousGHSIGetPaymentsModel.getPayPals().iterator();
        do
        {
          if (!paramAnonymousGHSIGetPaymentsModel.hasNext()) {
            break;
          }
        } while (!((GHSIVaultedPayPalModel)paramAnonymousGHSIGetPaymentsModel.next()).getId().equals(str));
        for (int i = 1;; i = 0)
        {
          if (i != 0)
          {
            com.grubhub.AppBaseLibrary.android.dataServices.b.b localb = GHSApplication.a().b();
            GHSSelectedPaymentModel localGHSSelectedPaymentModel = localb.s();
            paramAnonymousGHSIGetPaymentsModel = localGHSSelectedPaymentModel;
            if (localGHSSelectedPaymentModel == null) {
              paramAnonymousGHSIGetPaymentsModel = new GHSSelectedPaymentModel();
            }
            paramAnonymousGHSIGetPaymentsModel.setSelectedPayPalId(str);
            localb.a(paramAnonymousGHSIGetPaymentsModel);
            a(paramGHSIPaymentResourceCreatedDataModel);
            return;
          }
          b(new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_PAYMENT_FAILURE));
          return;
        }
      }
    });
    d.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        b(paramAnonymousb);
      }
    });
    d.a();
  }
  
  protected void e()
  {
    com.grubhub.AppBaseLibrary.android.utils.e.a.c("User canceled PayPal processing.", "");
    if (c != null) {
      c.i();
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.g.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */