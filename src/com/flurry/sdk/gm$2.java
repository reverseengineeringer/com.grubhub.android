package com.flurry.sdk;

import java.util.List;

class gm$2
  implements ii.a<byte[], byte[]>
{
  gm$2(gm paramgm, long paramLong, boolean paramBoolean) {}
  
  public void a(ii<byte[], byte[]> paramii, byte[] paramArrayOfByte)
  {
    int i = paramii.f();
    ib.a(3, gm.e(), "Proton config request: HTTP status code is:" + i);
    if ((i == 400) || (i == 406) || (i == 412) || (i == 415))
    {
      gm.a(c, 10000L);
      return;
    }
    if ((paramii.d()) && (paramArrayOfByte != null)) {
      gm.a(c, a, b, paramArrayOfByte);
    }
    for (;;)
    {
      try
      {
        paramArrayOfByte = (gc)gm.d(c).d(paramArrayOfByte);
        arrayOfByte = paramArrayOfByte;
        if (paramArrayOfByte != null)
        {
          gm.a(c, 10000L);
          gm.b(c, a);
          gm.a(c, b);
          gm.a(c, paramArrayOfByte);
          gm.e(c);
          arrayOfByte = paramArrayOfByte;
        }
        if (arrayOfByte != null) {
          break;
        }
        l1 = gm.f(c);
        if (i == 429)
        {
          paramii = paramii.b("Retry-After");
          if (!paramii.isEmpty())
          {
            paramii = (String)paramii.get(0);
            ib.a(3, gm.e(), "Server returned retry time: " + paramii);
          }
        }
      }
      catch (Exception paramArrayOfByte)
      {
        long l1;
        try
        {
          long l2 = Long.parseLong(paramii);
          l1 = l2 * 1000L;
          gm.a(c, l1);
          ib.a(3, gm.e(), "Proton config request failed, backing off: " + gm.f(c) + "ms");
          hn.a().b(gm.g(c), gm.f(c));
          return;
        }
        catch (NumberFormatException paramii)
        {
          ib.a(3, gm.e(), "Server returned nonsensical retry time");
        }
        paramArrayOfByte = paramArrayOfByte;
        ib.a(5, gm.e(), "Failed to decode proton config response: " + paramArrayOfByte);
        paramArrayOfByte = null;
        continue;
        l1 <<= 1;
        continue;
      }
      byte[] arrayOfByte = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gm.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */