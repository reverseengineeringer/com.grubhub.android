package org.keyczar;

import org.keyczar.exceptions.KeyczarException;
import org.keyczar.keyparams.AesKeyParameters;

@Deprecated
public class SessionEncrypter
{
  private final byte[] sessionMaterial;
  private final Crypter symmetricCrypter;
  
  public SessionEncrypter(Encrypter paramEncrypter)
    throws KeyczarException
  {
    AesKey localAesKey = AesKey.generate((AesKeyParameters)DefaultKeyType.AES.applyDefaultParameters(null));
    symmetricCrypter = new Crypter(new ImportedKeyReader(localAesKey));
    sessionMaterial = paramEncrypter.encrypt(localAesKey.getEncoded());
  }
  
  public byte[] encrypt(byte[] paramArrayOfByte)
    throws KeyczarException
  {
    return symmetricCrypter.encrypt(paramArrayOfByte);
  }
  
  public byte[] getSessionMaterial()
  {
    return sessionMaterial;
  }
  
  protected Crypter getSymmetricCrypter()
  {
    return symmetricCrypter;
  }
}

/* Location:
 * Qualified Name:     org.keyczar.SessionEncrypter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */