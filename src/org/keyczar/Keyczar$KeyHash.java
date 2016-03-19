package org.keyczar;

import org.keyczar.util.Util;

class Keyczar$KeyHash
{
  private byte[] data;
  
  private Keyczar$KeyHash(Keyczar paramKeyczar, byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length != 4) {
      throw new IllegalArgumentException();
    }
    data = paramArrayOfByte;
  }
  
  public boolean equals(Object paramObject)
  {
    return ((paramObject instanceof KeyHash)) && (paramObject.hashCode() == hashCode());
  }
  
  public int hashCode()
  {
    return Util.toInt(data);
  }
}

/* Location:
 * Qualified Name:     org.keyczar.Keyczar.KeyHash
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */