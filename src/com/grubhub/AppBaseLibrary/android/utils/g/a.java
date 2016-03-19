package com.grubhub.AppBaseLibrary.android.utils.g;

import android.app.Activity;
import android.content.Intent;
import com.braintreepayments.api.c;
import com.braintreepayments.api.d;
import com.braintreepayments.api.exceptions.ErrorWithResponse;
import com.braintreepayments.api.h;
import com.braintreepayments.api.models.PaymentMethod;
import com.google.android.gms.wallet.MaskedWallet;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSAndroidPayMaskedWalletModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSPaymentTokenEnum;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSSelectedPaymentModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIPaymentResourceCreatedDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIPaymentTokenModel;

public class a
  extends e
  implements com.grubhub.AppBaseLibrary.android.utils.d.b
{
  private c e;
  private com.grubhub.AppBaseLibrary.android.utils.d.a f;
  private GHSICartDataModel g = GHSApplication.a().b().X();
  private boolean h;
  private boolean i;
  private boolean j;
  private String k;
  private String l;
  
  public a(Activity paramActivity, f paramf)
  {
    super(paramActivity, GHSPaymentTokenEnum.ANDROID_PAY, paramf);
  }
  
  private void g()
  {
    f.b();
    i = false;
    k = null;
    l = null;
  }
  
  public void a()
  {
    h = true;
    f();
  }
  
  public void a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    }
    label151:
    label235:
    do
    {
      do
      {
        do
        {
          MaskedWallet localMaskedWallet;
          do
          {
            return;
            if (paramInt2 == 0)
            {
              e();
              return;
            }
            if ((paramIntent == null) || (!paramIntent.hasExtra("com.google.android.gms.wallet.EXTRA_MASKED_WALLET"))) {
              break label235;
            }
            localMaskedWallet = (MaskedWallet)paramIntent.getParcelableExtra("com.google.android.gms.wallet.EXTRA_MASKED_WALLET");
            if (!com.grubhub.AppBaseLibrary.android.utils.f.a(localMaskedWallet.b())) {
              break label151;
            }
            if (!paramIntent.hasExtra("com.google.android.gms.wallet.EXTRA_ERROR_CODE")) {
              break;
            }
            com.grubhub.AppBaseLibrary.android.utils.e.a.b("Vaulting the payment failed.", "Unable to retrieve a MaskedWallet.");
            if ((paramIntent != null) && (paramIntent.hasExtra("com.google.android.gms.wallet.EXTRA_ERROR_CODE"))) {
              com.grubhub.AppBaseLibrary.android.utils.e.a.b("Masked Wallet Error Code: ", Integer.toString(paramIntent.getIntExtra("com.google.android.gms.wallet.EXTRA_ERROR_CODE", -1)));
            }
          } while (c == null);
          c.a(new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN));
          return;
          e();
          return;
          if (localMaskedWallet.d() == null)
          {
            e();
            return;
          }
          com.grubhub.AppBaseLibrary.android.dataServices.b.b localb = GHSApplication.a().b();
          GHSSelectedPaymentModel localGHSSelectedPaymentModel = localb.s();
          paramIntent = localGHSSelectedPaymentModel;
          if (localGHSSelectedPaymentModel == null) {
            paramIntent = new GHSSelectedPaymentModel();
          }
          paramIntent.setSelectedMaskedWalletModel(GHSAndroidPayMaskedWalletModel.fromMaskedWallet(localMaskedWallet));
          localb.a(paramIntent);
        } while (c == null);
        c.a(null, GHSICartPaymentDataModel.PaymentTypes.ANDROID_PAY);
        return;
        com.grubhub.AppBaseLibrary.android.utils.e.a.b("Vaulting the payment failed.", "Unable to retrieve a MaskedWallet.");
      } while (c == null);
      c.a(new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN));
      return;
      if (paramInt2 == -1)
      {
        e.b(paramInt2, paramIntent);
        return;
      }
      com.grubhub.AppBaseLibrary.android.utils.e.a.b("Vaulting the payment failed.", "Unable to retrieve a FullWallet.");
      if ((paramIntent != null) && (paramIntent.hasExtra("com.google.android.gms.wallet.EXTRA_ERROR_CODE"))) {
        com.grubhub.AppBaseLibrary.android.utils.e.a.b("Full Wallet Error Code: ", Integer.toString(paramIntent.getIntExtra("com.google.android.gms.wallet.EXTRA_ERROR_CODE", -1)));
      }
    } while (c == null);
    c.a(new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN));
  }
  
  protected void a(com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    com.grubhub.AppBaseLibrary.android.utils.e.a.b("Unable to retrieve the client token.", "Token type: " + a.toString().toLowerCase());
    if (c != null) {
      c.a(paramb);
    }
    f.b();
  }
  
  protected void a(GHSIPaymentResourceCreatedDataModel paramGHSIPaymentResourceCreatedDataModel)
  {
    if (c != null) {
      c.a(paramGHSIPaymentResourceCreatedDataModel, GHSICartPaymentDataModel.PaymentTypes.ANDROID_PAY);
    }
    g();
  }
  
  protected void a(final GHSIPaymentTokenModel paramGHSIPaymentTokenModel)
  {
    c.a(b, paramGHSIPaymentTokenModel.getToken(), new d()
    {
      public void a(boolean paramAnonymousBoolean, c paramAnonymousc, String paramAnonymousString, Exception paramAnonymousException)
      {
        if (paramAnonymousBoolean)
        {
          a.a(a.this, paramAnonymousc);
          a.a(a.this).a(new h()
          {
            public void a(PaymentMethod paramAnonymous2PaymentMethod)
            {
              if ((paramAnonymous2PaymentMethod != null) && (com.grubhub.AppBaseLibrary.android.utils.f.b(paramAnonymous2PaymentMethod.d()))) {
                a(a.getPaymentId(), paramAnonymous2PaymentMethod.d(), false);
              }
              do
              {
                return;
                com.grubhub.AppBaseLibrary.android.utils.e.a.b("Unable to retrieve Android Pay payment nonce.", "Client token: " + a.getToken());
              } while (c == null);
              c.a(new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN));
            }
          });
          a.a(a.this).a(new com.braintreepayments.api.e()
          {
            public void a(ErrorWithResponse paramAnonymous2ErrorWithResponse)
            {
              com.grubhub.AppBaseLibrary.android.utils.e.a.b("Unable to retrieve Android Pay payment nonce.", "BrainTree Error: " + paramAnonymous2ErrorWithResponse.getMessage());
              if (c != null) {
                c.a(new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN));
              }
            }
            
            public void a(Throwable paramAnonymous2Throwable)
            {
              com.grubhub.AppBaseLibrary.android.utils.e.a.b("Unable to retrieve Android Pay payment nonce.", "BrainTree Error: " + paramAnonymous2Throwable.getMessage());
              if (c != null) {
                c.a(new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN));
              }
            }
          });
          if (a.b(a.this)) {}
        }
        do
        {
          return;
          if (a.c(a.this))
          {
            a.f(a.this).a(a.d(a.this), a.e(a.this), 2110);
            return;
          }
          if (a.g(a.this))
          {
            a.f(a.this).a(a.d(a.this), a.h(a.this), 2112);
            return;
          }
          a.f(a.this).a(b, a.h(a.this), a.a(a.this), 2110);
          return;
          com.grubhub.AppBaseLibrary.android.utils.e.a.b("BrainTree setup failed.", "Error Msg: " + paramAnonymousString);
        } while (c == null);
        c.a(new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN));
      }
    });
  }
  
  public void a(String paramString1, String paramString2)
  {
    i = true;
    k = paramString1;
    l = paramString2;
    d();
  }
  
  public void b()
  {
    h = false;
    com.grubhub.AppBaseLibrary.android.utils.e.a.b("Vaulting the payment failed.", "Connection to Google API suspended.");
    if (c != null) {
      c.a(new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN));
    }
  }
  
  protected void b(com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    com.grubhub.AppBaseLibrary.android.utils.e.a.b("Vaulting the payment failed.", paramb.getMessage());
    if (c != null) {
      c.a(paramb);
    }
    g();
  }
  
  public void b(String paramString1, String paramString2)
  {
    j = true;
    k = paramString1;
    l = paramString2;
    d();
  }
  
  public void c()
  {
    h = false;
    com.grubhub.AppBaseLibrary.android.utils.e.a.b("Vaulting the payment failed.", "Connection to Google API failed.");
    if (c != null) {
      c.a(new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN));
    }
  }
  
  public void d()
  {
    f = new com.grubhub.AppBaseLibrary.android.utils.d.a(b, this);
    f.a();
  }
  
  protected void e()
  {
    com.grubhub.AppBaseLibrary.android.utils.e.a.c("User canceled Android Pay/Google Wallet processing.", "");
    if (c != null) {
      c.i();
    }
    g();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.g.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */