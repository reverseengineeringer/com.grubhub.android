package com.flurry.sdk;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public abstract interface iv<ObjectType>
{
  public abstract void a(OutputStream paramOutputStream, ObjectType paramObjectType)
    throws IOException;
  
  public abstract ObjectType b(InputStream paramInputStream)
    throws IOException;
}

/* Location:
 * Qualified Name:     com.flurry.sdk.iv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */