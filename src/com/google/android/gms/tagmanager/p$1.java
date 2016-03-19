package com.google.android.gms.tagmanager;

import com.google.android.gms.a.a.a;
import com.google.android.gms.a.a.b;
import com.google.android.gms.common.c;
import com.google.android.gms.common.d;
import java.io.IOException;

class p$1
  implements q
{
  p$1(p paramp) {}
  
  public b a()
  {
    try
    {
      b localb = a.b(p.a(a));
      return localb;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      ba.b("IllegalStateException getting Advertising Id Info");
      return null;
    }
    catch (d locald)
    {
      ba.b("GooglePlayServicesRepairableException getting Advertising Id Info");
      return null;
    }
    catch (IOException localIOException)
    {
      ba.b("IOException getting Ad Id Info");
      return null;
    }
    catch (c localc)
    {
      ba.b("GooglePlayServicesNotAvailableException getting Advertising Id Info");
      return null;
    }
    catch (Exception localException)
    {
      ba.b("Unknown exception. Could not get the Advertising Id Info.");
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.p.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */