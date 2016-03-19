package org.keyczar;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.security.cert.CertificateException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import org.keyczar.enums.Command;
import org.keyczar.enums.Flag;
import org.keyczar.enums.KeyPurpose;
import org.keyczar.enums.KeyStatus;
import org.keyczar.enums.RsaPadding;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.i18n.Messages;
import org.keyczar.keyparams.KeyParameters;

public class KeyczarTool
{
  private static MockKeyczarReader mock = null;
  
  private static void addKey(String paramString1, KeyStatus paramKeyStatus, String paramString2, KeyParameters paramKeyParameters)
    throws KeyczarException
  {
    GenericKeyczar localGenericKeyczar = createGenericKeyczar(paramString1, paramString2);
    localGenericKeyczar.addVersion(paramKeyStatus, paramKeyParameters);
    updateGenericKeyczar(localGenericKeyczar, paramString2, paramString1);
  }
  
  private static void create(String paramString1, String paramString2, KeyPurpose paramKeyPurpose, String paramString3)
    throws KeyczarException
  {
    Object localObject = null;
    if (paramKeyPurpose == null) {
      throw new KeyczarException(Messages.getString("KeyczarTool.MustDefinePurpose", new Object[0]));
    }
    switch (1.$SwitchMap$org$keyczar$enums$KeyPurpose[paramKeyPurpose.ordinal()])
    {
    default: 
      paramString2 = (String)localObject;
    }
    while (paramString2 == null)
    {
      throw new KeyczarException(Messages.getString("KeyczarTool.UnsupportedPurpose", new Object[] { paramKeyPurpose }));
      paramString2 = new KeyMetadata(paramString2, KeyPurpose.TEST, DefaultKeyType.TEST);
      continue;
      if (paramString3 != null)
      {
        if (paramString3.equalsIgnoreCase("rsa")) {
          paramString2 = new KeyMetadata(paramString2, KeyPurpose.SIGN_AND_VERIFY, DefaultKeyType.RSA_PRIV);
        } else if (paramString3.equalsIgnoreCase("ec")) {
          paramString2 = new KeyMetadata(paramString2, KeyPurpose.SIGN_AND_VERIFY, DefaultKeyType.EC_PRIV);
        } else {
          paramString2 = new KeyMetadata(paramString2, KeyPurpose.SIGN_AND_VERIFY, DefaultKeyType.DSA_PRIV);
        }
      }
      else
      {
        paramString2 = new KeyMetadata(paramString2, KeyPurpose.SIGN_AND_VERIFY, DefaultKeyType.HMAC_SHA1);
        continue;
        if (paramString3 != null) {
          paramString2 = new KeyMetadata(paramString2, KeyPurpose.DECRYPT_AND_ENCRYPT, DefaultKeyType.RSA_PRIV);
        } else {
          paramString2 = new KeyMetadata(paramString2, KeyPurpose.DECRYPT_AND_ENCRYPT, DefaultKeyType.AES);
        }
      }
    }
    if (mock == null)
    {
      if (paramString1 == null) {
        throw new KeyczarException(Messages.getString("KeyczarTool.MustDefineLocation", new Object[0]));
      }
      paramString1 = new File(paramString1 + "meta");
      if (paramString1.exists()) {
        throw new KeyczarException(Messages.getString("KeyczarTool.FileExists", new Object[] { paramString1 }));
      }
      try
      {
        paramKeyPurpose = new FileOutputStream(paramString1);
        paramKeyPurpose.write(paramString2.toString().getBytes("UTF-8"));
        paramKeyPurpose.close();
        return;
      }
      catch (IOException paramString2)
      {
        throw new KeyczarException(Messages.getString("KeyczarTool.UnableToWrite", new Object[] { paramString1.toString() }), paramString2);
      }
    }
    mock.setMetadata(paramString2);
  }
  
  private static GenericKeyczar createGenericKeyczar(String paramString)
    throws KeyczarException
  {
    return createGenericKeyczar(paramString, null);
  }
  
  private static GenericKeyczar createGenericKeyczar(String paramString1, String paramString2)
    throws KeyczarException
  {
    if (mock != null) {
      return new GenericKeyczar(mock);
    }
    if (paramString1 == null) {
      throw new KeyczarException(Messages.getString("KeyczarTool.NeedLocation", new Object[] { Messages.getString("KeyczarTool.Location", new Object[0]) }));
    }
    paramString1 = new KeyczarFileReader(paramString1);
    if (paramString2 != null) {
      paramString1 = new KeyczarEncryptedReader(paramString1, new Crypter(paramString2));
    }
    for (;;)
    {
      return new GenericKeyczar(paramString1);
    }
  }
  
  private static void demote(String paramString, int paramInt)
    throws KeyczarException
  {
    if (paramInt < 0) {
      throw new KeyczarException(Messages.getString("KeyczarTool.MissingVersion", new Object[0]));
    }
    GenericKeyczar localGenericKeyczar = createGenericKeyczar(paramString);
    localGenericKeyczar.demote(paramInt);
    updateGenericKeyczar(localGenericKeyczar, paramString);
  }
  
  private static void exportKey(String paramString1, String paramString2, int paramInt, String paramString3, String paramString4)
    throws KeyczarException
  {
    if (paramInt < 0) {
      throw new KeyczarException(Messages.getString("KeyczarTool.MissingVersion", new Object[0]));
    }
    paramString1 = createGenericKeyczar(paramString1, paramString2);
    paramString1 = paramString1.getKey(paramString1.getVersion(paramInt)).getPemString(paramString4);
    try
    {
      paramString2 = new File(paramString3);
      if (!paramString2.createNewFile()) {
        throw new KeyczarException(Messages.getString("", new Object[] { paramString2 }));
      }
    }
    catch (IOException paramString1)
    {
      throw new KeyczarException(Messages.getString("", new Object[0]), paramString1);
    }
    new FileOutputStream(paramString2).write(paramString1.getBytes("UTF8"));
  }
  
  private static InputStream getFileStream(String paramString)
    throws KeyczarException
  {
    try
    {
      FileInputStream localFileInputStream = new FileInputStream(paramString);
      return localFileInputStream;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      throw new KeyczarException(Messages.getString("KeyczarTool.FileNotFound", new Object[] { paramString }));
    }
  }
  
  private static GenericKeyczar getImportingKeyczar(String paramString1, String paramString2, String paramString3, KeyPurpose paramKeyPurpose)
    throws KeyczarException, IOException
  {
    RsaPadding localRsaPadding = getPadding(paramString2);
    InputStream localInputStream = getFileStream(paramString1);
    paramString2 = localInputStream;
    try
    {
      GenericKeyczar localGenericKeyczar = new GenericKeyczar(new X509CertificateReader(paramKeyPurpose, localInputStream, localRsaPadding));
      return localGenericKeyczar;
    }
    catch (KeyczarException localKeyczarException)
    {
      paramString2 = localInputStream;
      if ((localKeyczarException.getCause() instanceof CertificateException))
      {
        paramString2 = localInputStream;
        localInputStream.close();
        paramString2 = localInputStream;
        paramString1 = getFileStream(paramString1);
        paramString2 = paramString1;
        paramString3 = new GenericKeyczar(new PkcsKeyReader(paramKeyPurpose, paramString1, localRsaPadding, paramString3));
        return paramString3;
      }
      paramString2 = localInputStream;
      throw localKeyczarException;
    }
    finally
    {
      paramString2.close();
    }
  }
  
  public static MockKeyczarReader getMock()
  {
    return mock;
  }
  
  private static RsaPadding getPadding(String paramString)
    throws KeyczarException
  {
    RsaPadding localRsaPadding = null;
    if (paramString != null) {}
    try
    {
      localRsaPadding = RsaPadding.valueOf(paramString.toUpperCase());
      return localRsaPadding;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      throw new KeyczarException(Messages.getString("InvalidPadding", new Object[] { paramString }));
    }
  }
  
  private static void importKey(String paramString1, String paramString2, KeyStatus paramKeyStatus, String paramString3, String paramString4, String paramString5)
    throws KeyczarException, IOException
  {
    GenericKeyczar localGenericKeyczar = createGenericKeyczar(paramString1, paramString3);
    KeyMetadata localKeyMetadata = localGenericKeyczar.getMetadata();
    paramString2 = getImportingKeyczar(paramString2, paramString4, paramString5, localKeyMetadata.getPurpose());
    paramString4 = paramString2.getMetadata().getType();
    if ((localKeyMetadata.getType() != paramString4) && (localGenericKeyczar.getVersions().isEmpty())) {
      localKeyMetadata.setType(paramString4);
    }
    localGenericKeyczar.addVersion(paramKeyStatus, paramString2.getPrimaryKey());
    updateGenericKeyczar(localGenericKeyczar, paramString3, paramString1);
  }
  
  public static void main(String[] paramArrayOfString)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramArrayOfString.length == 0)
    {
      printUsage();
      return;
    }
    for (;;)
    {
      HashMap localHashMap;
      int i;
      try
      {
        localHashMap = new HashMap();
        int j = paramArrayOfString.length;
        i = 0;
        if (i < j)
        {
          localObject = paramArrayOfString[i];
          if (((String)localObject).startsWith("--"))
          {
            localObject = ((String)localObject).substring(2).split("=");
            if (localObject.length > 1) {
              localHashMap.put(Flag.getFlag(localObject[0]), localObject[1]);
            }
          }
          else
          {
            localArrayList.add(localObject);
          }
        }
      }
      catch (Exception paramArrayOfString)
      {
        paramArrayOfString.printStackTrace();
        printUsage();
        return;
      }
      Object localObject = (String)localHashMap.get(Flag.LOCATION);
      paramArrayOfString = (String[])localObject;
      if (localObject != null)
      {
        paramArrayOfString = (String[])localObject;
        if (!((String)localObject).endsWith(File.separator)) {
          paramArrayOfString = (String)localObject + File.separator;
        }
      }
      localObject = KeyPurpose.getPurpose((String)localHashMap.get(Flag.PURPOSE));
      KeyStatus localKeyStatus = KeyStatus.getStatus((String)localHashMap.get(Flag.STATUS));
      String str3 = (String)localHashMap.get(Flag.ASYMMETRIC);
      String str1 = (String)localHashMap.get(Flag.CRYPTER);
      String str2 = (String)localHashMap.get(Flag.DESTINATION);
      String str4 = (String)localHashMap.get(Flag.NAME);
      String str5 = (String)localHashMap.get(Flag.PADDING);
      String str6 = (String)localHashMap.get(Flag.PASSPHRASE);
      String str7 = (String)localHashMap.get(Flag.PEMFILE);
      String str8 = (String)localHashMap.get(Flag.VERSION);
      switch (1.$SwitchMap$org$keyczar$enums$Command[Command.getCommand((String)localArrayList.get(0)).ordinal()])
      {
      case 1: 
        create(paramArrayOfString, str4, (KeyPurpose)localObject, str3);
        return;
      case 2: 
        addKey(paramArrayOfString, localKeyStatus, str1, new KeyczarToolKeyParameters(localHashMap));
        return;
      case 3: 
        publicKeys(paramArrayOfString, str2);
        return;
      case 4: 
        promote(paramArrayOfString, Integer.parseInt(str8));
        return;
      case 5: 
        demote(paramArrayOfString, Integer.parseInt(str8));
        return;
      case 6: 
        revoke(paramArrayOfString, Integer.parseInt(str8));
        return;
      case 7: 
        localObject = null;
        if (localArrayList.size() > 1) {
          localObject = (String)localArrayList.get(1);
        }
        useKey((String)localObject, paramArrayOfString, str2, str1);
        return;
      case 8: 
        importKey(paramArrayOfString, str7, localKeyStatus, str1, str5, str6);
        return;
      case 9: 
        exportKey(paramArrayOfString, str1, Integer.parseInt(str8), str7, str6);
        return;
        i += 1;
      }
    }
  }
  
  private static void printUsage()
  {
    int j = 0;
    ArrayList localArrayList = new ArrayList();
    Object localObject = Command.values();
    int k = localObject.length;
    int i = 0;
    while (i < k)
    {
      localArrayList.add(localObject[i].toString());
      i += 1;
    }
    localObject = Flag.values();
    k = localObject.length;
    i = j;
    while (i < k)
    {
      localArrayList.add(localObject[i].toString());
      i += 1;
    }
    System.out.println(Messages.getString("KeyczarTool.Usage", localArrayList.toArray()));
  }
  
  private static void promote(String paramString, int paramInt)
    throws KeyczarException
  {
    if (paramInt < 0) {
      throw new KeyczarException(Messages.getString("KeyczarTool.MissingVersion", new Object[0]));
    }
    GenericKeyczar localGenericKeyczar = createGenericKeyczar(paramString);
    localGenericKeyczar.promote(paramInt);
    updateGenericKeyczar(localGenericKeyczar, paramString);
  }
  
  private static void publicKeys(String paramString1, String paramString2)
    throws KeyczarException
  {
    if ((mock == null) && (paramString2 == null)) {
      throw new KeyczarException(Messages.getString("KeyczarTool.MustDefineDestination", new Object[0]));
    }
    createGenericKeyczar(paramString1).publicKeyExport(paramString2);
  }
  
  private static void revoke(String paramString, int paramInt)
    throws KeyczarException
  {
    GenericKeyczar localGenericKeyczar = createGenericKeyczar(paramString);
    localGenericKeyczar.revoke(paramInt);
    updateGenericKeyczar(localGenericKeyczar, paramString);
    if (mock == null)
    {
      if (!new File(paramString + paramInt).delete()) {
        throw new KeyczarException(Messages.getString("KeyczarTool.UnableToDelete", new Object[0]));
      }
    }
    else {
      mock.removeKey(paramInt);
    }
  }
  
  public static void setReader(MockKeyczarReader paramMockKeyczarReader)
  {
    mock = paramMockKeyczarReader;
  }
  
  private static void updateGenericKeyczar(GenericKeyczar paramGenericKeyczar, String paramString)
    throws KeyczarException
  {
    updateGenericKeyczar(paramGenericKeyczar, null, paramString);
  }
  
  private static void updateGenericKeyczar(GenericKeyczar paramGenericKeyczar, String paramString1, String paramString2)
    throws KeyczarException
  {
    if (mock != null)
    {
      mock.setMetadata(paramGenericKeyczar.getMetadata());
      paramString1 = paramGenericKeyczar.getVersions().iterator();
      while (paramString1.hasNext())
      {
        paramString2 = (KeyVersion)paramString1.next();
        mock.setKey(paramString2.getVersionNumber(), paramGenericKeyczar.getKey(paramString2));
      }
    }
    if (paramString1 != null)
    {
      paramGenericKeyczar.writeEncrypted(paramString2, new Encrypter(paramString1));
      return;
    }
    paramGenericKeyczar.write(paramString2);
  }
  
  private static void useKey(String paramString1, String paramString2, String paramString3, String paramString4)
    throws KeyczarException, IOException
  {
    Object localObject1 = paramString1;
    if (paramString1 == null)
    {
      paramString1 = new BufferedReader(new InputStreamReader(System.in));
      localObject1 = new StringBuilder();
      for (;;)
      {
        localObject2 = paramString1.readLine();
        if (localObject2 == null) {
          break;
        }
        ((StringBuilder)localObject1).append((String)localObject2);
        ((StringBuilder)localObject1).append("\n");
      }
      localObject1 = ((StringBuilder)localObject1).toString();
    }
    Object localObject2 = createGenericKeyczar(paramString2, paramString4);
    paramString1 = new KeyczarFileReader(paramString2);
    if (paramString4 != null) {
      paramString1 = new KeyczarEncryptedReader(paramString1, new Crypter(paramString4));
    }
    for (;;)
    {
      switch (1.$SwitchMap$org$keyczar$enums$KeyPurpose[localObject2.getMetadata().getPurpose().ordinal()])
      {
      default: 
        throw new KeyczarException(Messages.getString("KeyczarTool.UnsupportedPurpose", new Object[] { ((GenericKeyczar)localObject2).getMetadata().getPurpose() }));
      }
      for (paramString1 = new Crypter(paramString1).encrypt((String)localObject1); paramString3 == null; paramString1 = new Signer(paramString1).sign((String)localObject1))
      {
        System.out.println(paramString1);
        return;
      }
      ((GenericKeyczar)localObject2).writeFile(paramString1, paramString3);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     org.keyczar.KeyczarTool
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */