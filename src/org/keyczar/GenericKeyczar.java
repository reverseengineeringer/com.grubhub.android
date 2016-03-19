package org.keyczar;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import org.a.a.c;
import org.keyczar.enums.KeyPurpose;
import org.keyczar.enums.KeyStatus;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.i18n.Messages;
import org.keyczar.interfaces.KeyType;
import org.keyczar.interfaces.KeyType.Builder;
import org.keyczar.interfaces.KeyczarReader;
import org.keyczar.keyparams.KeyParameters;

public class GenericKeyczar
  extends Keyczar
{
  private static final c LOG = c.a(GenericKeyczar.class);
  
  public GenericKeyczar(String paramString)
    throws KeyczarException
  {
    super(paramString);
  }
  
  public GenericKeyczar(KeyczarReader paramKeyczarReader)
    throws KeyczarException
  {
    super(paramKeyczarReader);
  }
  
  private boolean haveKeyWithId(byte[] paramArrayOfByte)
  {
    return getKey(paramArrayOfByte) != null;
  }
  
  private int maxVersion()
  {
    Iterator localIterator = getVersions().iterator();
    int i = 0;
    if (localIterator.hasNext())
    {
      KeyVersion localKeyVersion = (KeyVersion)localIterator.next();
      if (localKeyVersion.getVersionNumber() <= i) {
        break label49;
      }
      i = localKeyVersion.getVersionNumber();
    }
    label49:
    for (;;)
    {
      break;
      return i;
    }
  }
  
  private int numVersions()
  {
    return versionMap.size();
  }
  
  public void addVersion(KeyStatus paramKeyStatus)
    throws KeyczarException
  {
    addVersion(paramKeyStatus, kmd.getType().applyDefaultParameters(null));
  }
  
  public void addVersion(KeyStatus paramKeyStatus, KeyczarKey paramKeyczarKey)
  {
    KeyVersion localKeyVersion = new KeyVersion(maxVersion() + 1, paramKeyStatus, false);
    if (paramKeyStatus == KeyStatus.PRIMARY)
    {
      if (primaryVersion != null) {
        primaryVersion.setStatus(KeyStatus.ACTIVE);
      }
      primaryVersion = localKeyVersion;
    }
    addKey(localKeyVersion, paramKeyczarKey);
    LOG.a(Messages.getString("Keyczar.NewVersion", new Object[] { localKeyVersion }));
  }
  
  public void addVersion(KeyStatus paramKeyStatus, KeyParameters paramKeyParameters)
    throws KeyczarException
  {
    KeyType localKeyType = kmd.getType();
    KeyczarKey localKeyczarKey;
    do
    {
      localKeyczarKey = localKeyType.getBuilder().generate(paramKeyParameters);
    } while (haveKeyWithId(localKeyczarKey.hash()));
    addVersion(paramKeyStatus, localKeyczarKey);
  }
  
  public void demote(int paramInt)
    throws KeyczarException
  {
    KeyVersion localKeyVersion = getVersion(paramInt);
    LOG.a(Messages.getString("Keyczar.DemotingVersion", new Object[] { localKeyVersion }));
    switch (1.$SwitchMap$org$keyczar$enums$KeyStatus[localKeyVersion.getStatus().ordinal()])
    {
    default: 
      return;
    case 1: 
      localKeyVersion.setStatus(KeyStatus.ACTIVE);
      primaryVersion = null;
      return;
    case 2: 
      localKeyVersion.setStatus(KeyStatus.INACTIVE);
      return;
    }
    throw new KeyczarException(Messages.getString("Keyczar.CantDemoteScheduled", new Object[0]));
  }
  
  public KeyczarKey getKey(KeyVersion paramKeyVersion)
  {
    return (KeyczarKey)versionMap.get(paramKeyVersion);
  }
  
  public KeyMetadata getMetadata()
  {
    return kmd;
  }
  
  public KeyVersion getVersion(int paramInt)
    throws KeyczarException
  {
    KeyVersion localKeyVersion = kmd.getVersion(paramInt);
    if (localKeyVersion == null) {
      throw new KeyczarException(Messages.getString("Keyczar.NoSuchVersion", new Object[] { Integer.valueOf(paramInt) }));
    }
    return localKeyVersion;
  }
  
  public Set<KeyVersion> getVersions()
  {
    return Collections.unmodifiableSet(versionMap.keySet());
  }
  
  public boolean isAcceptablePurpose(KeyPurpose paramKeyPurpose)
  {
    return true;
  }
  
  public void promote(int paramInt)
    throws KeyczarException
  {
    KeyVersion localKeyVersion = getVersion(paramInt);
    LOG.a(Messages.getString("Keyczar.PromotedVersion", new Object[] { localKeyVersion }));
    switch (1.$SwitchMap$org$keyczar$enums$KeyStatus[localKeyVersion.getStatus().ordinal()])
    {
    default: 
      return;
    case 1: 
      throw new KeyczarException(Messages.getString("Keyczar.CantPromotePrimary", new Object[0]));
    case 2: 
      localKeyVersion.setStatus(KeyStatus.PRIMARY);
      if (primaryVersion != null) {
        primaryVersion.setStatus(KeyStatus.ACTIVE);
      }
      primaryVersion = localKeyVersion;
      return;
    }
    localKeyVersion.setStatus(KeyStatus.ACTIVE);
  }
  
  void publicKeyExport(String paramString)
    throws KeyczarException
  {
    String str = paramString;
    if (paramString != null)
    {
      str = paramString;
      if (!paramString.endsWith(File.separator)) {
        str = paramString + File.separator;
      }
    }
    Object localObject = getMetadata();
    if (((KeyMetadata)localObject).getType() == DefaultKeyType.DSA_PRIV)
    {
      if (((KeyMetadata)localObject).getPurpose() != KeyPurpose.SIGN_AND_VERIFY) {
        break label160;
      }
      paramString = new KeyMetadata(((KeyMetadata)localObject).getName(), KeyPurpose.VERIFY, DefaultKeyType.DSA_PUB);
    }
    while (paramString == null)
    {
      throw new KeyczarException(Messages.getString("KeyczarTool.CannotExportPubKey", new Object[] { ((KeyMetadata)localObject).getType(), ((KeyMetadata)localObject).getPurpose() }));
      if (((KeyMetadata)localObject).getType() == DefaultKeyType.RSA_PRIV) {}
      switch (1.$SwitchMap$org$keyczar$enums$KeyPurpose[localObject.getPurpose().ordinal()])
      {
      default: 
        paramString = null;
        break;
      case 1: 
        paramString = new KeyMetadata(((KeyMetadata)localObject).getName(), KeyPurpose.ENCRYPT, DefaultKeyType.RSA_PUB);
        break;
      case 2: 
        label160:
        paramString = new KeyMetadata(((KeyMetadata)localObject).getName(), KeyPurpose.VERIFY, DefaultKeyType.RSA_PUB);
      }
    }
    localObject = getVersions().iterator();
    if (((Iterator)localObject).hasNext())
    {
      KeyVersion localKeyVersion = (KeyVersion)((Iterator)localObject).next();
      KeyczarPublicKey localKeyczarPublicKey = ((KeyczarPrivateKey)getKey(localKeyVersion)).getPublic();
      if (KeyczarTool.getMock() == null) {
        writeFile(localKeyczarPublicKey.toString(), str + localKeyVersion.getVersionNumber());
      }
      for (;;)
      {
        paramString.addVersion(localKeyVersion);
        break;
        KeyczarTool.getMock().setPublicKey(localKeyVersion.getVersionNumber(), localKeyczarPublicKey);
      }
    }
    if (KeyczarTool.getMock() == null)
    {
      writeFile(paramString.toString(), str + "meta");
      return;
    }
    KeyczarTool.getMock().setPublicKeyMetadata(paramString);
  }
  
  public void revoke(int paramInt)
    throws KeyczarException
  {
    if (getVersion(paramInt).getStatus() == KeyStatus.INACTIVE)
    {
      kmd.removeVersion(paramInt);
      return;
    }
    throw new KeyczarException(Messages.getString("Keyczar.CantRevoke", new Object[0]));
  }
  
  void write(String paramString)
    throws KeyczarException
  {
    Iterator localIterator = getVersions().iterator();
    while (localIterator.hasNext())
    {
      KeyVersion localKeyVersion = (KeyVersion)localIterator.next();
      writeFile(getKey(localKeyVersion).toString(), paramString + localKeyVersion.getVersionNumber());
    }
    writeFile(kmd.toString(), paramString + "meta");
  }
  
  void writeEncrypted(String paramString, Encrypter paramEncrypter)
    throws KeyczarException
  {
    KeyMetadata localKeyMetadata = getMetadata();
    localKeyMetadata.setEncrypted(true);
    Iterator localIterator = getVersions().iterator();
    while (localIterator.hasNext())
    {
      KeyVersion localKeyVersion = (KeyVersion)localIterator.next();
      writeFile(paramEncrypter.encrypt(getKey(localKeyVersion).toString()), paramString + localKeyVersion.getVersionNumber());
    }
    writeFile(localKeyMetadata.toString(), paramString + "meta");
  }
  
  void writeFile(String paramString1, String paramString2)
    throws KeyczarException
  {
    paramString2 = new File(paramString2);
    try
    {
      FileWriter localFileWriter = new FileWriter(paramString2);
      localFileWriter.write(paramString1);
      localFileWriter.close();
      return;
    }
    catch (IOException paramString1)
    {
      throw new KeyczarException(Messages.getString("KeyczarTool.UnableToWrite", new Object[] { paramString2.toString() }), paramString1);
    }
  }
}

/* Location:
 * Qualified Name:     org.keyczar.GenericKeyczar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */