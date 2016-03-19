package com.flurry.sdk;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class is<ObjectType>
  implements iv<ObjectType>
{
  protected final iv<ObjectType> a;
  
  public is(iv<ObjectType> paramiv)
  {
    a = paramiv;
  }
  
  public void a(OutputStream paramOutputStream, ObjectType paramObjectType)
    throws IOException
  {
    if ((a != null) && (paramOutputStream != null) && (paramObjectType != null)) {
      a.a(paramOutputStream, paramObjectType);
    }
  }
  
  public ObjectType b(InputStream paramInputStream)
    throws IOException
  {
    if ((a != null) && (paramInputStream != null)) {
      return (ObjectType)a.b(paramInputStream);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.is
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */