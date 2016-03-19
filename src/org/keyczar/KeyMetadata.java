package org.keyczar;

import com.google.gson.Gson;
import com.google.gson.annotations.Expose;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.keyczar.enums.KeyPurpose;
import org.keyczar.enums.KeyStatus;
import org.keyczar.exceptions.NoPrimaryKeyException;
import org.keyczar.interfaces.KeyType;
import org.keyczar.util.Util;

public class KeyMetadata
{
  @Expose
  boolean encrypted = false;
  @Expose
  String name = "";
  @Expose
  KeyPurpose purpose = KeyPurpose.TEST;
  @Expose
  KeyType type = DefaultKeyType.TEST;
  protected Map<Integer, KeyVersion> versionMap = new HashMap();
  @Expose
  List<KeyVersion> versions = new ArrayList();
  
  public KeyMetadata() {}
  
  public KeyMetadata(String paramString, KeyPurpose paramKeyPurpose, KeyType paramKeyType)
  {
    name = paramString;
    purpose = paramKeyPurpose;
    type = paramKeyType;
  }
  
  public static KeyMetadata read(String paramString)
  {
    paramString = (KeyMetadata)Util.gson().fromJson(paramString, KeyMetadata.class);
    Iterator localIterator = paramString.getVersions().iterator();
    while (localIterator.hasNext())
    {
      KeyVersion localKeyVersion = (KeyVersion)localIterator.next();
      versionMap.put(Integer.valueOf(localKeyVersion.getVersionNumber()), localKeyVersion);
    }
    return paramString;
  }
  
  public boolean addVersion(KeyVersion paramKeyVersion)
  {
    int i = paramKeyVersion.getVersionNumber();
    if (!versionMap.containsKey(Integer.valueOf(i)))
    {
      versionMap.put(Integer.valueOf(i), paramKeyVersion);
      versions.add(paramKeyVersion);
      return true;
    }
    return false;
  }
  
  public String getName()
  {
    return name;
  }
  
  public KeyVersion getPrimaryVersion()
    throws NoPrimaryKeyException
  {
    Iterator localIterator = versions.iterator();
    while (localIterator.hasNext())
    {
      KeyVersion localKeyVersion = (KeyVersion)localIterator.next();
      if (localKeyVersion.getStatus() == KeyStatus.PRIMARY) {
        return localKeyVersion;
      }
    }
    throw new NoPrimaryKeyException();
  }
  
  public KeyPurpose getPurpose()
  {
    return purpose;
  }
  
  public KeyType getType()
  {
    return type;
  }
  
  public KeyVersion getVersion(int paramInt)
  {
    return (KeyVersion)versionMap.get(Integer.valueOf(paramInt));
  }
  
  public List<KeyVersion> getVersions()
  {
    return versions;
  }
  
  public boolean isEncrypted()
  {
    return encrypted;
  }
  
  public boolean removeVersion(int paramInt)
  {
    if (versionMap.containsKey(Integer.valueOf(paramInt)))
    {
      KeyVersion localKeyVersion = (KeyVersion)versionMap.get(Integer.valueOf(paramInt));
      versions.remove(localKeyVersion);
      versionMap.remove(Integer.valueOf(paramInt));
      return true;
    }
    return false;
  }
  
  void setEncrypted(boolean paramBoolean)
  {
    encrypted = paramBoolean;
  }
  
  void setType(KeyType paramKeyType)
  {
    type = paramKeyType;
  }
  
  public String toString()
  {
    return Util.gson().toJson(this);
  }
}

/* Location:
 * Qualified Name:     org.keyczar.KeyMetadata
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */