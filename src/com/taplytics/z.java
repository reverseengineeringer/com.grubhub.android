package com.taplytics;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import org.apache.http.HttpEntity;

public class z
{
  private static final char[] a = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
  private String b = "form-data";
  private q c = q.albatross;
  private String d = null;
  private Charset e = null;
  private List<k> f = null;
  
  public static z a()
  {
    return new z();
  }
  
  private String a(String paramString1, String paramString2, Charset paramCharset)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("multipart/").append(paramString2).append("; boundary=");
    localStringBuilder.append(paramString1);
    if (paramCharset != null)
    {
      localStringBuilder.append("; charset=");
      localStringBuilder.append(paramCharset.name());
    }
    return localStringBuilder.toString();
  }
  
  private String d()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Random localRandom = new Random();
    int j = localRandom.nextInt(11);
    int i = 0;
    while (i < j + 30)
    {
      localStringBuilder.append(a[localRandom.nextInt(a.length)]);
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public z a(k paramk)
  {
    if (paramk == null) {
      return this;
    }
    if (f == null) {
      f = new ArrayList();
    }
    f.add(paramk);
    return this;
  }
  
  public z a(String paramString, af paramaf)
  {
    ao.a(paramString, "Name");
    ao.a(paramaf, "Content body");
    return a(new k(paramString, paramaf));
  }
  
  ab b()
  {
    String str1;
    Charset localCharset;
    String str2;
    label30:
    Object localObject;
    label49:
    q localq;
    if (b != null)
    {
      str1 = b;
      localCharset = e;
      if (d == null) {
        break label132;
      }
      str2 = d;
      if (f == null) {
        break label140;
      }
      localObject = new ArrayList(f);
      if (c == null) {
        break label147;
      }
      localq = c;
      label62:
      switch (aa.a[localq.ordinal()])
      {
      default: 
        localObject = new u(str1, localCharset, str2, (List)localObject);
      }
    }
    for (;;)
    {
      return new ab((j)localObject, a(str2, str1, localCharset), ((j)localObject).c());
      str1 = "form-data";
      break;
      label132:
      str2 = d();
      break label30;
      label140:
      localObject = Collections.emptyList();
      break label49;
      label147:
      localq = q.albatross;
      break label62;
      localObject = new p(str1, localCharset, str2, (List)localObject);
      continue;
      localObject = new t(str1, localCharset, str2, (List)localObject);
    }
  }
  
  public HttpEntity c()
  {
    return b();
  }
}

/* Location:
 * Qualified Name:     com.taplytics.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */