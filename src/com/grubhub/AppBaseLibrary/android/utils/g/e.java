package com.grubhub.AppBaseLibrary.android.utils.g;

import android.app.Activity;
import com.grubhub.AppBaseLibrary.android.dataServices.a.f.c;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSPaymentTokenEnum;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIGetPaymentsModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIPaymentResourceCreatedDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIPaymentTokenModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;

public abstract class e
{
  protected GHSPaymentTokenEnum a;
  protected Activity b;
  protected f c;
  protected c d;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.f.b e;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.f.f f;
  
  protected e(Activity paramActivity, GHSPaymentTokenEnum paramGHSPaymentTokenEnum, f paramf)
  {
    b = paramActivity;
    a = paramGHSPaymentTokenEnum;
    c = paramf;
  }
  
  private void c(final com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    d = new c(b, null, null);
    d.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(GHSIGetPaymentsModel paramAnonymousGHSIGetPaymentsModel)
      {
        b(paramb);
      }
    });
    d.a(new d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        b(paramb);
      }
    });
    d.a();
  }
  
  protected abstract void a(com.grubhub.AppBaseLibrary.android.b.b paramb);
  
  protected abstract void a(GHSIPaymentResourceCreatedDataModel paramGHSIPaymentResourceCreatedDataModel);
  
  protected abstract void a(GHSIPaymentTokenModel paramGHSIPaymentTokenModel);
  
  protected void a(String paramString1, String paramString2, boolean paramBoolean)
  {
    f = new com.grubhub.AppBaseLibrary.android.dataServices.a.f.f(paramString1, paramString2, paramBoolean, a, b, null, null);
    f.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(GHSIPaymentResourceCreatedDataModel paramAnonymousGHSIPaymentResourceCreatedDataModel)
      {
        b(paramAnonymousGHSIPaymentResourceCreatedDataModel);
      }
    });
    f.a(new d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        e.a(e.this, paramAnonymousb);
      }
    });
    f.a();
  }
  
  protected abstract void b(com.grubhub.AppBaseLibrary.android.b.b paramb);
  
  protected void b(final GHSIPaymentResourceCreatedDataModel paramGHSIPaymentResourceCreatedDataModel)
  {
    d = new c(b, null, null);
    d.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(GHSIGetPaymentsModel paramAnonymousGHSIGetPaymentsModel)
      {
        a(paramGHSIPaymentResourceCreatedDataModel);
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
  
  protected abstract void e();
  
  protected void f()
  {
    e = new com.grubhub.AppBaseLibrary.android.dataServices.a.f.b(a, b, null, null);
    e.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(GHSIPaymentTokenModel paramAnonymousGHSIPaymentTokenModel)
      {
        e.this.a(paramAnonymousGHSIPaymentTokenModel);
      }
    });
    e.a(new d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        e.this.a(paramAnonymousb);
      }
    });
    e.a();
  }
  
  public void h_()
  {
    if (e != null)
    {
      e.g();
      e = null;
    }
    if (f != null)
    {
      f.g();
      f = null;
    }
    if (d != null)
    {
      d.g();
      d = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.g.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */