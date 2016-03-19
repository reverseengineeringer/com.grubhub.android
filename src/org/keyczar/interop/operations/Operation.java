package org.keyczar.interop.operations;

import com.google.gson.Gson;
import java.io.File;
import java.util.Map;
import org.keyczar.Crypter;
import org.keyczar.KeyczarEncryptedReader;
import org.keyczar.KeyczarFileReader;
import org.keyczar.exceptions.Base64DecodingException;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.interfaces.KeyczarReader;
import org.keyczar.util.Base64Coder;

public abstract class Operation
{
  public final String keyPath;
  public final String testData;
  
  protected Operation(String paramString1, String paramString2)
  {
    keyPath = paramString1;
    testData = paramString2;
  }
  
  public static Operation getOperationByName(String paramString1, String paramString2, String paramString3)
    throws KeyczarException
  {
    if (paramString1.equals("unversioned")) {
      return new UnversionedSignOperation(paramString2, paramString3);
    }
    if (paramString1.equals("signedSession")) {
      return new SignedSessionOperation(paramString2, paramString3);
    }
    if (paramString1.equals("attached")) {
      return new AttachedSignOperation(paramString2, paramString3);
    }
    if (paramString1.equals("sign")) {
      return new SignOperation(paramString2, paramString3);
    }
    if (paramString1.equals("encrypt")) {
      return new EncryptOperation(paramString2, paramString3);
    }
    throw new KeyczarException("Operation does not exist");
  }
  
  public String formatOutput(byte[] paramArrayOfByte)
  {
    return new Gson().toJson(new Operation.Output(paramArrayOfByte));
  }
  
  public abstract byte[] generate(String paramString, Map<String, String> paramMap)
    throws KeyczarException;
  
  public String getKeyPath(String paramString)
  {
    return new File(new File(keyPath), paramString).getPath();
  }
  
  public KeyczarReader getReader(String paramString1, String paramString2, String paramString3)
    throws KeyczarException
  {
    String str = paramString1 + paramString2;
    paramString1 = str;
    if (paramString3 != null) {
      paramString1 = str + paramString3;
    }
    paramString1 = new KeyczarFileReader(getKeyPath(paramString1));
    if (!paramString2.equals("")) {
      return new KeyczarEncryptedReader(paramString1, new Crypter(getKeyPath(paramString2)));
    }
    return paramString1;
  }
  
  public byte[] readOutput(Map<String, String> paramMap)
    throws Base64DecodingException
  {
    return Base64Coder.decodeWebSafe((String)paramMap.get("output"));
  }
  
  public abstract void test(Map<String, String> paramMap1, String paramString, Map<String, String> paramMap2, Map<String, String> paramMap3)
    throws KeyczarException;
}

/* Location:
 * Qualified Name:     org.keyczar.interop.operations.Operation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */