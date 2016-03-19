package org.keyczar;

import com.google.gson.Gson;
import java.util.HashMap;
import java.util.Map;
import org.keyczar.enums.KeyPurpose;
import org.keyczar.enums.KeyStatus;
import org.keyczar.exceptions.BadVersionException;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.interfaces.KeyType;
import org.keyczar.interfaces.KeyType.Builder;
import org.keyczar.interfaces.KeyczarReader;
import org.keyczar.keyparams.KeyParameters;
import org.keyczar.util.Util;

public class MockKeyczarReader
  implements KeyczarReader
{
  private final Map<Integer, KeyczarKey> keys;
  private KeyMetadata kmd;
  private final Map<Integer, KeyczarKey> publicKeys;
  private KeyMetadata publicKmd;
  
  public MockKeyczarReader(String paramString, KeyPurpose paramKeyPurpose, KeyType paramKeyType)
  {
    kmd = new KeyMetadata(paramString, paramKeyPurpose, paramKeyType);
    publicKmd = null;
    keys = new HashMap();
    publicKeys = new HashMap();
  }
  
  public boolean addKey(int paramInt, KeyStatus paramKeyStatus)
    throws KeyczarException
  {
    Object localObject = kmd.getType();
    localObject = ((KeyType)localObject).getBuilder().generate(((KeyType)localObject).applyDefaultParameters(null));
    keys.put(Integer.valueOf(paramInt), localObject);
    return kmd.addVersion(new KeyVersion(paramInt, paramKeyStatus, false));
  }
  
  public boolean addKey(int paramInt, KeyStatus paramKeyStatus, KeyParameters paramKeyParameters)
    throws KeyczarException
  {
    paramKeyParameters = kmd.getType().getBuilder().generate(paramKeyParameters);
    keys.put(Integer.valueOf(paramInt), paramKeyParameters);
    return kmd.addVersion(new KeyVersion(paramInt, paramKeyStatus, false));
  }
  
  public boolean existsVersion(int paramInt)
  {
    return keys.containsKey(Integer.valueOf(paramInt));
  }
  
  public boolean exportedPublicKeySet()
  {
    return publicKmd != null;
  }
  
  public String getKey()
    throws KeyczarException
  {
    return getKey(KeyMetadata.read(getMetadata()).getPrimaryVersion().getVersionNumber());
  }
  
  public String getKey(int paramInt)
    throws KeyczarException
  {
    if (keys.containsKey(Integer.valueOf(paramInt))) {
      return ((KeyczarKey)keys.get(Integer.valueOf(paramInt))).toString();
    }
    throw new BadVersionException((byte)paramInt);
  }
  
  public int getKeySize(int paramInt)
  {
    return ((KeyczarKey)keys.get(Integer.valueOf(paramInt))).size();
  }
  
  public String getMetadata()
  {
    return Util.gson().toJson(kmd);
  }
  
  public KeyStatus getStatus(int paramInt)
  {
    return kmd.getVersion(paramInt).getStatus();
  }
  
  public boolean hasPublicKey(int paramInt)
  {
    KeyczarPrivateKey localKeyczarPrivateKey = (KeyczarPrivateKey)keys.get(Integer.valueOf(paramInt));
    KeyczarPublicKey localKeyczarPublicKey = (KeyczarPublicKey)publicKeys.get(Integer.valueOf(paramInt));
    return (localKeyczarPrivateKey != null) && (localKeyczarPublicKey != null) && (localKeyczarPublicKey.equals(localKeyczarPrivateKey.getPublic()));
  }
  
  public String name()
  {
    return kmd.getName();
  }
  
  public int numKeys()
  {
    return keys.size();
  }
  
  public KeyPurpose purpose()
  {
    return kmd.getPurpose();
  }
  
  public void removeKey(int paramInt)
  {
    keys.remove(Integer.valueOf(paramInt));
  }
  
  public void setKey(int paramInt, KeyczarKey paramKeyczarKey)
  {
    keys.put(Integer.valueOf(paramInt), paramKeyczarKey);
  }
  
  public void setMetadata(KeyMetadata paramKeyMetadata)
  {
    kmd = paramKeyMetadata;
  }
  
  public void setPublicKey(int paramInt, KeyczarKey paramKeyczarKey)
  {
    publicKeys.put(Integer.valueOf(paramInt), paramKeyczarKey);
  }
  
  public void setPublicKeyMetadata(KeyMetadata paramKeyMetadata)
  {
    publicKmd = paramKeyMetadata;
  }
  
  public KeyType type()
  {
    return kmd.getType();
  }
}

/* Location:
 * Qualified Name:     org.keyczar.MockKeyczarReader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */