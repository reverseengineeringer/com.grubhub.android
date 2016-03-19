package org.keyczar;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.a.a.c;
import org.keyczar.enums.KeyPurpose;
import org.keyczar.enums.KeyStatus;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.i18n.Messages;
import org.keyczar.interfaces.EncryptedReader;
import org.keyczar.interfaces.KeyType;
import org.keyczar.interfaces.KeyType.Builder;
import org.keyczar.interfaces.KeyczarReader;

public abstract class Keyczar
{
  public static final String DEFAULT_ENCODING = "UTF-8";
  public static final byte[] FORMAT_BYTES = { 0 };
  public static final byte FORMAT_VERSION = 0;
  public static final int HEADER_SIZE = 5;
  public static final int KEY_HASH_SIZE = 4;
  private static final c LOG = c.a(Keyczar.class);
  final HashMap<Keyczar.KeyHash, KeyczarKey> hashMap = new HashMap();
  final KeyMetadata kmd;
  KeyVersion primaryVersion;
  final HashMap<KeyVersion, KeyczarKey> versionMap = new HashMap();
  
  public Keyczar(String paramString)
    throws KeyczarException
  {
    this(new KeyczarFileReader(paramString));
  }
  
  public Keyczar(KeyczarReader paramKeyczarReader)
    throws KeyczarException
  {
    kmd = KeyMetadata.read(paramKeyczarReader.getMetadata());
    if (!isAcceptablePurpose(kmd.getPurpose())) {
      throw new KeyczarException(Messages.getString("Keyczar.UnacceptablePurpose", new Object[] { kmd.getPurpose() }));
    }
    if ((kmd.isEncrypted()) && (!(paramKeyczarReader instanceof EncryptedReader))) {
      throw new KeyczarException(Messages.getString("Keyczar.NeedEncryptedReader", new Object[0]));
    }
    Iterator localIterator = kmd.getVersions().iterator();
    while (localIterator.hasNext())
    {
      KeyVersion localKeyVersion = (KeyVersion)localIterator.next();
      if (localKeyVersion.getStatus() == KeyStatus.PRIMARY)
      {
        if (primaryVersion != null) {
          throw new KeyczarException(Messages.getString("Keyczar.SinglePrimary", new Object[0]));
        }
        primaryVersion = localKeyVersion;
      }
      Object localObject = paramKeyczarReader.getKey(localKeyVersion.getVersionNumber());
      localObject = kmd.getType().getBuilder().read((String)localObject);
      LOG.a(Messages.getString("Keyczar.ReadVersion", new Object[] { localKeyVersion }));
      hashMap.put(new Keyczar.KeyHash(this, ((KeyczarKey)localObject).hash(), null), localObject);
      versionMap.put(localKeyVersion, localObject);
    }
  }
  
  void addKey(KeyVersion paramKeyVersion, KeyczarKey paramKeyczarKey)
  {
    hashMap.put(new Keyczar.KeyHash(this, paramKeyczarKey.hash(), null), paramKeyczarKey);
    versionMap.put(paramKeyVersion, paramKeyczarKey);
    kmd.addVersion(paramKeyVersion);
  }
  
  KeyczarKey getKey(byte[] paramArrayOfByte)
  {
    return (KeyczarKey)hashMap.get(new Keyczar.KeyHash(this, paramArrayOfByte, null));
  }
  
  KeyczarKey getPrimaryKey()
  {
    if (primaryVersion == null) {
      return null;
    }
    return (KeyczarKey)versionMap.get(primaryVersion);
  }
  
  abstract boolean isAcceptablePurpose(KeyPurpose paramKeyPurpose);
  
  public String toString()
  {
    return kmd.toString();
  }
}

/* Location:
 * Qualified Name:     org.keyczar.Keyczar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */