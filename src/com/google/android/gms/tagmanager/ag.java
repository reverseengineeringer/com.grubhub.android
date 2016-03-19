package com.google.android.gms.tagmanager;

import com.google.android.gms.d.a;
import com.google.android.gms.d.b;
import com.google.android.gms.d.o;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;

class ag
  extends ab
{
  private static final String a = a.zzbK.toString();
  private static final String b = b.zzdw.toString();
  private static final String c = b.zzdn.toString();
  private static final String d = b.zzfq.toString();
  
  public ag()
  {
    super(a, new String[] { b });
  }
  
  private byte[] a(String paramString, byte[] paramArrayOfByte)
    throws NoSuchAlgorithmException
  {
    paramString = MessageDigest.getInstance(paramString);
    paramString.update(paramArrayOfByte);
    return paramString.digest();
  }
  
  public o a(Map<String, o> paramMap)
  {
    Object localObject = (o)paramMap.get(b);
    if ((localObject == null) || (localObject == dm.f())) {
      return dm.f();
    }
    String str = dm.a((o)localObject);
    localObject = (o)paramMap.get(c);
    if (localObject == null)
    {
      localObject = "MD5";
      paramMap = (o)paramMap.get(d);
      if (paramMap != null) {
        break label110;
      }
      paramMap = "text";
      label73:
      if (!"text".equals(paramMap)) {
        break label118;
      }
      paramMap = str.getBytes();
    }
    for (;;)
    {
      try
      {
        paramMap = dm.e(dy.a(a((String)localObject, paramMap)));
        return paramMap;
      }
      catch (NoSuchAlgorithmException paramMap)
      {
        label110:
        label118:
        ba.a("Hash: unknown algorithm: " + (String)localObject);
      }
      localObject = dm.a((o)localObject);
      break;
      paramMap = dm.a(paramMap);
      break label73;
      if ("base16".equals(paramMap))
      {
        paramMap = dy.a(str);
      }
      else
      {
        ba.a("Hash: unknown input format: " + paramMap);
        return dm.f();
      }
    }
    return dm.f();
  }
  
  public boolean a()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */