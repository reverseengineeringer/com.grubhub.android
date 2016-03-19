package org.keyczar;

import org.keyczar.annotations.Experimental;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.keyparams.AesKeyParameters;

@Experimental
public class SessionCrypter
{
  private final byte[] sessionMaterial;
  private final Crypter symmetricCrypter;
  
  public SessionCrypter(Crypter paramCrypter, byte[] paramArrayOfByte)
    throws KeyczarException
  {
    symmetricCrypter = new Crypter(new ImportedKeyReader(AesKey.fromPackedKey(paramCrypter.decrypt(paramArrayOfByte))));
    sessionMaterial = paramArrayOfByte;
  }
  
  public SessionCrypter(Encrypter paramEncrypter)
    throws KeyczarException
  {
    AesKey localAesKey = AesKey.generate((AesKeyParameters)DefaultKeyType.AES.applyDefaultParameters(null));
    symmetricCrypter = new Crypter(new ImportedKeyReader(localAesKey));
    sessionMaterial = paramEncrypter.encrypt(localAesKey.getEncoded());
  }
  
  public byte[] decrypt(byte[] paramArrayOfByte)
    throws KeyczarException
  {
    return symmetricCrypter.decrypt(paramArrayOfByte);
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
}

/* Location:
 * Qualified Name:     org.keyczar.SessionCrypter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */