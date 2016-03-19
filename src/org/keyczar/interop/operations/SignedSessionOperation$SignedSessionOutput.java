package org.keyczar.interop.operations;

import org.keyczar.util.Base64Coder;

class SignedSessionOperation$SignedSessionOutput
{
  public final String output;
  public final String sessionMaterial;
  
  public SignedSessionOperation$SignedSessionOutput(byte[] paramArrayOfByte, String paramString)
  {
    output = Base64Coder.encodeWebSafe(paramArrayOfByte);
    sessionMaterial = paramString;
  }
}

/* Location:
 * Qualified Name:     org.keyczar.interop.operations.SignedSessionOperation.SignedSessionOutput
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */