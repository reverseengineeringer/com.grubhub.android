package com.grubhub.AppBaseLibrary.android.dataServices.net.a;

import android.net.Uri;
import android.net.Uri.Builder;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.ArrayList;
import java.util.Iterator;

public class a
{
  private Uri.Builder a;
  private ArrayList<String> b;
  
  public a(String paramString)
  {
    a = Uri.parse(paramString).buildUpon();
    b = new ArrayList();
  }
  
  public a(String paramString1, String paramString2)
  {
    a = Uri.parse(paramString1 + ":" + paramString2).buildUpon();
    b = new ArrayList();
  }
  
  public void a(String paramString)
  {
    a.appendPath(paramString);
  }
  
  public void a(String paramString1, String paramString2)
  {
    if (f.b(paramString2)) {
      a.appendQueryParameter(paramString1, paramString2);
    }
  }
  
  public void b(String paramString)
  {
    if (f.b(paramString)) {
      b.add(paramString);
    }
  }
  
  public String toString()
  {
    String str1 = a.build().toString();
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      String str2 = (String)localIterator.next();
      str1 = str1 + "&" + str2;
    }
    return str1;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */