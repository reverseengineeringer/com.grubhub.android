package org.keyczar;

import org.keyczar.exceptions.KeyczarException;

@Deprecated
public class SessionDecrypter
{
  private final Crypter symmetricCrypter;
  
  public SessionDecrypter(Crypter paramCrypter, byte[] paramArrayOfByte)
    throws KeyczarException
  {
    symmetricCrypter = new Crypter(new ImportedKeyReader(AesKey.fromPackedKey(paramCrypter.decrypt(paramArrayOfByte))));
  }
  
  public byte[] decrypt(byte[] paramArrayOfByte)
    throws KeyczarException
  {
    return symmetricCrypter.decrypt(paramArrayOfByte);
  }
}

/* Location:
 * Qualified Name:     org.keyczar.SessionDecrypter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */