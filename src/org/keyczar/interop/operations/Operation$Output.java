package org.keyczar.interop.operations;

import org.keyczar.util.Base64Coder;

class Operation$Output
{
  public final String output;
  
  public Operation$Output(byte[] paramArrayOfByte)
  {
    output = Base64Coder.encodeWebSafe(paramArrayOfByte);
  }
}

/* Location:
 * Qualified Name:     org.keyczar.interop.operations.Operation.Output
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */