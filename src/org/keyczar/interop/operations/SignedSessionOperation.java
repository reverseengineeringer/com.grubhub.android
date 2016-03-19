package org.keyczar.interop.operations;

import com.google.gson.Gson;
import java.util.Map;
import org.keyczar.Crypter;
import org.keyczar.Encrypter;
import org.keyczar.SignedSessionDecrypter;
import org.keyczar.SignedSessionEncrypter;
import org.keyczar.Signer;
import org.keyczar.Verifier;
import org.keyczar.exceptions.KeyczarException;

public class SignedSessionOperation
  extends Operation
{
  static
  {
    if (!SignedSessionOperation.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  public SignedSessionOperation(String paramString1, String paramString2)
  {
    super(paramString1, paramString2);
  }
  
  public String formatOutput(byte[] paramArrayOfByte)
  {
    return new String(paramArrayOfByte);
  }
  
  public byte[] generate(String paramString, Map<String, String> paramMap)
    throws KeyczarException
  {
    paramMap = new SignedSessionEncrypter(new Encrypter(getReader(paramString, (String)paramMap.get("cryptedKeySet"), (String)paramMap.get("pubKey"))), new Signer(getReader((String)paramMap.get("signer"), (String)paramMap.get("cryptedKeySet"), "")));
    paramString = paramMap.newSession();
    paramMap = paramMap.encrypt(testData.getBytes());
    return new Gson().toJson(new SignedSessionOperation.SignedSessionOutput(paramMap, paramString)).getBytes();
  }
  
  public void test(Map<String, String> paramMap1, String paramString, Map<String, String> paramMap2, Map<String, String> paramMap3)
    throws KeyczarException
  {
    new Gson();
    byte[] arrayOfByte = readOutput(paramMap1);
    paramMap1 = (String)paramMap1.get("sessionMaterial");
    paramMap1 = new SignedSessionDecrypter(new Crypter(getReader(paramString, (String)paramMap2.get("cryptedKeySet"), (String)paramMap3.get("pubKey"))), new Verifier(getReader((String)paramMap2.get("signer"), (String)paramMap2.get("cryptedKeySet"), "")), paramMap1).decrypt(arrayOfByte);
    assert (new String(paramMap1).equals(testData));
  }
}

/* Location:
 * Qualified Name:     org.keyczar.interop.operations.SignedSessionOperation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */