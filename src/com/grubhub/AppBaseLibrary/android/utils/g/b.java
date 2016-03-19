package com.grubhub.AppBaseLibrary.android.utils.g;

import android.app.Activity;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.a.f.c;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCreditCardModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSPaymentTokenEnum;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSSelectedPaymentModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIGetPaymentsModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIPaymentResourceCreatedDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIPaymentTokenModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSITokenizeCreditCardDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIVaultedCreditCardModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;

public class b
  extends e
{
  private String e;
  private String f;
  private String g;
  private String h;
  private String i;
  private boolean j;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.f.e k;
  
  public b(Activity paramActivity, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, boolean paramBoolean, f paramf)
  {
    super(paramActivity, GHSPaymentTokenEnum.CREDIT_CARD, paramf);
    e = paramString1;
    f = paramString2;
    g = paramString3;
    h = paramString4;
    i = paramString5;
    j = paramBoolean;
  }
  
  private void a(String paramString)
  {
    GHSCreditCardModel localGHSCreditCardModel = new GHSCreditCardModel();
    localGHSCreditCardModel.setId(paramString);
    localGHSCreditCardModel.setExpired(false);
    localGHSCreditCardModel.setCreateDate(Long.valueOf(new Date().getTime()));
    localGHSCreditCardModel.setExpirationYear(Integer.valueOf(Integer.parseInt(g)));
    localGHSCreditCardModel.setExpirationMonth(Integer.valueOf(Integer.parseInt(f)));
    localGHSCreditCardModel.setCreditCardList4(e.substring(e.length() - 4, e.length()));
    localGHSCreditCardModel.setIsSingleUse(true);
    com.grubhub.AppBaseLibrary.android.dataServices.b.b localb = GHSApplication.a().b();
    ArrayList localArrayList = localb.G();
    paramString = localArrayList;
    if (localArrayList == null) {
      paramString = new ArrayList();
    }
    paramString.add(0, localGHSCreditCardModel);
    localb.a(paramString);
  }
  
  public void a()
  {
    f();
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
    if (j) {
      a(paramGHSIPaymentResourceCreatedDataModel.getId());
    }
    if (c != null) {
      c.a(paramGHSIPaymentResourceCreatedDataModel, GHSICartPaymentDataModel.PaymentTypes.CREDIT_CARD);
    }
  }
  
  protected void a(final GHSIPaymentTokenModel paramGHSIPaymentTokenModel)
  {
    k = new com.grubhub.AppBaseLibrary.android.dataServices.a.f.e(paramGHSIPaymentTokenModel.getToken(), null, e, h, i, f, g, j, b, null, null);
    k.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(GHSITokenizeCreditCardDataModel paramAnonymousGHSITokenizeCreditCardDataModel)
      {
        a(paramGHSIPaymentTokenModel.getPaymentId(), paramAnonymousGHSITokenizeCreditCardDataModel.getNonce(), b.a(b.this));
      }
    });
    k.a(new d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        com.grubhub.AppBaseLibrary.android.utils.e.a.b("Unable to tokenize the credit card.", paramAnonymousb.getMessage());
        if (c != null) {
          c.a(paramAnonymousb);
        }
      }
    });
    k.a();
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
    d = new c(b, null, null);
    d.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(GHSIGetPaymentsModel paramAnonymousGHSIGetPaymentsModel)
      {
        String str = paramGHSIPaymentResourceCreatedDataModel.getId();
        paramAnonymousGHSIGetPaymentsModel = paramAnonymousGHSIGetPaymentsModel.getCreditCards().iterator();
        do
        {
          if (!paramAnonymousGHSIGetPaymentsModel.hasNext()) {
            break;
          }
        } while (!((GHSIVaultedCreditCardModel)paramAnonymousGHSIGetPaymentsModel.next()).getId().equals(str));
        for (int i = 1;; i = 0)
        {
          if ((b.a(b.this)) || (i != 0))
          {
            com.grubhub.AppBaseLibrary.android.dataServices.b.b localb = GHSApplication.a().b();
            GHSSelectedPaymentModel localGHSSelectedPaymentModel = localb.s();
            paramAnonymousGHSIGetPaymentsModel = localGHSSelectedPaymentModel;
            if (localGHSSelectedPaymentModel == null) {
              paramAnonymousGHSIGetPaymentsModel = new GHSSelectedPaymentModel();
            }
            paramAnonymousGHSIGetPaymentsModel.setSelectedCreditCardId(str);
            localb.a(paramAnonymousGHSIGetPaymentsModel);
            a(paramGHSIPaymentResourceCreatedDataModel);
            return;
          }
          b(new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_PAYMENT_FAILURE));
          return;
        }
      }
    });
    d.a(new d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        b(paramAnonymousb);
      }
    });
    d.a();
  }
  
  protected void e() {}
  
  public void h_()
  {
    super.h_();
    if (k != null)
    {
      k.g();
      k = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.g.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */