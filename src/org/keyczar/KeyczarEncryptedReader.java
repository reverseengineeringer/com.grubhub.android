package org.keyczar;

import org.keyczar.exceptions.KeyczarException;
import org.keyczar.interfaces.EncryptedReader;
import org.keyczar.interfaces.KeyczarReader;

public class KeyczarEncryptedReader
  implements EncryptedReader
{
  private Crypter crypter;
  private KeyczarReader reader;
  
  public KeyczarEncryptedReader(KeyczarReader paramKeyczarReader, Crypter paramCrypter)
  {
    reader = paramKeyczarReader;
    crypter = paramCrypter;
  }
  
  public String getKey()
    throws KeyczarException
  {
    String str = reader.getKey();
    return crypter.decrypt(str);
  }
  
  public String getKey(int paramInt)
    throws KeyczarException
  {
    return crypter.decrypt(reader.getKey(paramInt));
  }
  
  public String getMetadata()
    throws KeyczarException
  {
    return reader.getMetadata();
  }
}

/* Location:
 * Qualified Name:     org.keyczar.KeyczarEncryptedReader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */