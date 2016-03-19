package com.google.android.gms.appdatasearch;

import android.accounts.Account;
import java.util.ArrayList;
import java.util.List;

public class a
{
  private List<DocumentSection> a;
  private String b;
  private boolean c;
  private Account d;
  
  public DocumentContents a()
  {
    String str = b;
    boolean bool = c;
    Account localAccount = d;
    if (a != null) {}
    for (DocumentSection[] arrayOfDocumentSection = (DocumentSection[])a.toArray(new DocumentSection[a.size()]);; arrayOfDocumentSection = null) {
      return new DocumentContents(str, bool, localAccount, arrayOfDocumentSection);
    }
  }
  
  public a a(Account paramAccount)
  {
    d = paramAccount;
    return this;
  }
  
  public a a(DocumentSection paramDocumentSection)
  {
    if (a == null) {
      a = new ArrayList();
    }
    a.add(paramDocumentSection);
    return this;
  }
  
  public a a(String paramString)
  {
    b = paramString;
    return this;
  }
  
  public a a(boolean paramBoolean)
  {
    c = paramBoolean;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.appdatasearch.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */