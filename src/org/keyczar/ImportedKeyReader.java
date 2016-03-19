package org.keyczar;

import java.util.ArrayList;
import java.util.List;
import org.keyczar.annotations.Experimental;
import org.keyczar.enums.KeyPurpose;
import org.keyczar.enums.KeyStatus;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.interfaces.KeyczarReader;

@Experimental
public class ImportedKeyReader
  implements KeyczarReader
{
  private final List<KeyczarKey> keys;
  private final KeyMetadata metadata;
  
  ImportedKeyReader(AesKey paramAesKey)
  {
    metadata = new KeyMetadata("Imported AES", KeyPurpose.DECRYPT_AND_ENCRYPT, DefaultKeyType.AES);
    KeyVersion localKeyVersion = new KeyVersion(0, KeyStatus.PRIMARY, false);
    metadata.addVersion(localKeyVersion);
    keys = new ArrayList();
    keys.add(paramAesKey);
  }
  
  ImportedKeyReader(HmacKey paramHmacKey)
  {
    metadata = new KeyMetadata("Imported HMAC", KeyPurpose.SIGN_AND_VERIFY, DefaultKeyType.HMAC_SHA1);
    KeyVersion localKeyVersion = new KeyVersion(0, KeyStatus.PRIMARY, false);
    metadata.addVersion(localKeyVersion);
    keys = new ArrayList();
    keys.add(paramHmacKey);
  }
  
  ImportedKeyReader(KeyMetadata paramKeyMetadata, List<KeyczarKey> paramList)
  {
    metadata = paramKeyMetadata;
    keys = paramList;
  }
  
  public String getKey()
    throws KeyczarException
  {
    return getKey(KeyMetadata.read(getMetadata()).getPrimaryVersion().getVersionNumber());
  }
  
  public String getKey(int paramInt)
  {
    return ((KeyczarKey)keys.get(paramInt)).toString();
  }
  
  public String getMetadata()
  {
    return metadata.toString();
  }
}

/* Location:
 * Qualified Name:     org.keyczar.ImportedKeyReader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */