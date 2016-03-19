package com.google.android.gms.appdatasearch;

import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.b.e;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.d.bi;
import com.google.android.gms.d.bj;
import com.google.android.gms.d.ek;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.zip.CRC32;

public class UsageInfo
  implements SafeParcelable
{
  public static final m CREATOR = new m();
  final int a;
  final DocumentId b;
  final long c;
  int d;
  public final String e;
  final DocumentContents f;
  final boolean g;
  int h;
  int i;
  
  UsageInfo(int paramInt1, DocumentId paramDocumentId, long paramLong, int paramInt2, String paramString, DocumentContents paramDocumentContents, boolean paramBoolean, int paramInt3, int paramInt4)
  {
    a = paramInt1;
    b = paramDocumentId;
    c = paramLong;
    d = paramInt2;
    e = paramString;
    f = paramDocumentContents;
    g = paramBoolean;
    h = paramInt3;
    i = paramInt4;
  }
  
  private UsageInfo(DocumentId paramDocumentId, long paramLong, int paramInt1, String paramString, DocumentContents paramDocumentContents, boolean paramBoolean, int paramInt2, int paramInt3)
  {
    this(1, paramDocumentId, paramLong, paramInt1, paramString, paramDocumentContents, paramBoolean, paramInt2, paramInt3);
  }
  
  public static DocumentId a(String paramString, Intent paramIntent)
  {
    return a(paramString, a(paramIntent));
  }
  
  private static DocumentId a(String paramString1, String paramString2)
  {
    return new DocumentId(paramString1, "", paramString2);
  }
  
  private static DocumentSection a(Uri paramUri)
  {
    return new DocumentSection(paramUri.toString(), new b("web_url").a(4).a(true).b("url").a());
  }
  
  private static DocumentSection a(String paramString)
  {
    return new DocumentSection(paramString, new b("title").a(1).b(true).b("name").a(), "text1");
  }
  
  private static DocumentSection a(List<e> paramList)
  {
    bi localbi = new bi();
    bj[] arrayOfbj = new bj[paramList.size()];
    int j = 0;
    while (j < arrayOfbj.length)
    {
      arrayOfbj[j] = new bj();
      e locale = (e)paramList.get(j);
      a = a.toString();
      c = c;
      if (b != null) {
        b = b.toString();
      }
      j += 1;
    }
    a = arrayOfbj;
    return new DocumentSection(ek.a(localbi), new b("outlinks").a(true).b(".private:outLinks").a("blob").a());
  }
  
  public static a a(Intent paramIntent, String paramString1, Uri paramUri, String paramString2, List<e> paramList)
  {
    a locala = new a();
    locala.a(a(paramString1));
    if (paramUri != null) {
      locala.a(a(paramUri));
    }
    if (paramList != null) {
      locala.a(a(paramList));
    }
    paramString1 = paramIntent.getAction();
    if (paramString1 != null) {
      locala.a(b("intent_action", paramString1));
    }
    paramString1 = paramIntent.getDataString();
    if (paramString1 != null) {
      locala.a(b("intent_data", paramString1));
    }
    paramString1 = paramIntent.getComponent();
    if (paramString1 != null) {
      locala.a(b("intent_activity", paramString1.getClassName()));
    }
    paramIntent = paramIntent.getExtras();
    if (paramIntent != null)
    {
      paramIntent = paramIntent.getString("intent_extra_data_key");
      if (paramIntent != null) {
        locala.a(b("intent_extra_data", paramIntent));
      }
    }
    return locala.a(paramString2).a(true);
  }
  
  private static String a(Intent paramIntent)
  {
    paramIntent = paramIntent.toUri(1);
    CRC32 localCRC32 = new CRC32();
    try
    {
      localCRC32.update(paramIntent.getBytes("UTF-8"));
      return Long.toHexString(localCRC32.getValue());
    }
    catch (UnsupportedEncodingException paramIntent)
    {
      throw new IllegalStateException(paramIntent);
    }
  }
  
  private static DocumentSection b(String paramString1, String paramString2)
  {
    return new DocumentSection(paramString2, new b(paramString1).a(true).a(), paramString1);
  }
  
  public int describeContents()
  {
    m localm = CREATOR;
    return 0;
  }
  
  public String toString()
  {
    return String.format("UsageInfo[documentId=%s, timestamp=%d, usageType=%d, status=%d]", new Object[] { b, Long.valueOf(c), Integer.valueOf(d), Integer.valueOf(i) });
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    m localm = CREATOR;
    m.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.appdatasearch.UsageInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */