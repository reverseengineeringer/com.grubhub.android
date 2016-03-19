package com.google.android.gms.tagmanager;

import com.google.android.gms.d.o;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

class dq
{
  private static bq<o> a(bq<o> parambq)
  {
    try
    {
      bq localbq = new bq(dm.e(a(dm.a((o)parambq.a()))), parambq.b());
      return localbq;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      ba.a("Escape URI: unsupported encoding", localUnsupportedEncodingException);
    }
    return parambq;
  }
  
  private static bq<o> a(bq<o> parambq, int paramInt)
  {
    if (!a((o)parambq.a()))
    {
      ba.a("Escaping can only be applied to strings.");
      return parambq;
    }
    switch (paramInt)
    {
    default: 
      ba.a("Unsupported Value Escaping: " + paramInt);
      return parambq;
    }
    return a(parambq);
  }
  
  static bq<o> a(bq<o> parambq, int... paramVarArgs)
  {
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      parambq = a(parambq, paramVarArgs[i]);
      i += 1;
    }
    return parambq;
  }
  
  static String a(String paramString)
    throws UnsupportedEncodingException
  {
    return URLEncoder.encode(paramString, "UTF-8").replaceAll("\\+", "%20");
  }
  
  private static boolean a(o paramo)
  {
    return dm.e(paramo) instanceof String;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.dq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */