package com.facebook.login;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.facebook.internal.ap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class LoginClient$Request
  implements Parcelable
{
  public static final Parcelable.Creator<Request> CREATOR = new Parcelable.Creator()
  {
    public LoginClient.Request a(Parcel paramAnonymousParcel)
    {
      return new LoginClient.Request(paramAnonymousParcel, null);
    }
    
    public LoginClient.Request[] a(int paramAnonymousInt)
    {
      return new LoginClient.Request[paramAnonymousInt];
    }
  };
  private final c a;
  private Set<String> b;
  private final a c;
  private final String d;
  private final String e;
  private boolean f = false;
  
  private LoginClient$Request(Parcel paramParcel)
  {
    Object localObject1 = paramParcel.readString();
    if (localObject1 != null)
    {
      localObject1 = c.valueOf((String)localObject1);
      a = ((c)localObject1);
      localObject1 = new ArrayList();
      paramParcel.readStringList((List)localObject1);
      b = new HashSet((Collection)localObject1);
      String str = paramParcel.readString();
      localObject1 = localObject2;
      if (str != null) {
        localObject1 = a.valueOf(str);
      }
      c = ((a)localObject1);
      d = paramParcel.readString();
      e = paramParcel.readString();
      if (paramParcel.readByte() == 0) {
        break label117;
      }
    }
    label117:
    for (boolean bool = true;; bool = false)
    {
      f = bool;
      return;
      localObject1 = null;
      break;
    }
  }
  
  Set<String> a()
  {
    return b;
  }
  
  void a(Set<String> paramSet)
  {
    ap.a(paramSet, "permissions");
    b = paramSet;
  }
  
  c b()
  {
    return a;
  }
  
  a c()
  {
    return c;
  }
  
  String d()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  String e()
  {
    return e;
  }
  
  boolean f()
  {
    return f;
  }
  
  boolean g()
  {
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext()) {
      if (h.a((String)localIterator.next())) {
        return true;
      }
    }
    return false;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    Object localObject2 = null;
    Object localObject1;
    if (a != null)
    {
      localObject1 = a.name();
      paramParcel.writeString((String)localObject1);
      paramParcel.writeStringList(new ArrayList(b));
      localObject1 = localObject2;
      if (c != null) {
        localObject1 = c.name();
      }
      paramParcel.writeString((String)localObject1);
      paramParcel.writeString(d);
      paramParcel.writeString(e);
      if (!f) {
        break label98;
      }
    }
    label98:
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeByte((byte)paramInt);
      return;
      localObject1 = null;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.login.LoginClient.Request
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */