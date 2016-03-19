package org.keyczar.interop.operations;

import java.util.Map;
import org.keyczar.Crypter;
import org.keyczar.Encrypter;
import org.keyczar.exceptions.KeyczarException;

public class EncryptOperation
  extends Operation
{
  static
  {
    if (!EncryptOperation.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  public EncryptOperation(String paramString1, String paramString2)
  {
    super(paramString1, paramString2);
  }
  
  public byte[] generate(String paramString, Map<String, String> paramMap)
    throws KeyczarException
  {
    if (((String)paramMap.get("class")).equals("crypter"))
    {
      paramString = new Crypter(getReader(paramString, (String)paramMap.get("cryptedKeySet"), (String)paramMap.get("pubKey")));
      if (((String)paramMap.get("encoding")).equals("encoded")) {
        return paramString.encrypt(testData).getBytes();
      }
      if (((String)paramMap.get("encoding")).equals("unencoded")) {
        return paramString.encrypt(testData.getBytes());
      }
      throw new KeyczarException("Expects encoded or unencoded in parameters");
    }
    if (((String)paramMap.get("class")).equals("encrypter"))
    {
      paramString = new Encrypter(getReader(paramString, (String)paramMap.get("cryptedKeySet"), (String)paramMap.get("pubKey")));
      if (((String)paramMap.get("encoding")).equals("encoded")) {
        return paramString.encrypt(testData).getBytes();
      }
      if (((String)paramMap.get("encoding")).equals("unencoded")) {
        return paramString.encrypt(testData.getBytes());
      }
      throw new KeyczarException("Expects encoded or unencoded in parameters");
    }
    throw new KeyczarException("Expects crypter or encrypter in parameters");
  }
  
  public void test(Map<String, String> paramMap1, String paramString, Map<String, String> paramMap2, Map<String, String> paramMap3)
    throws KeyczarException
  {
    paramString = new Crypter(getReader(paramString, (String)paramMap2.get("cryptedKeySet"), ""));
    if (((String)paramMap2.get("encoding")).equals("encoded"))
    {
      paramMap1 = paramString.decrypt(new String(readOutput(paramMap1)));
      if ((!$assertionsDisabled) && (!paramMap1.equals(testData))) {
        throw new AssertionError();
      }
    }
    else if (((String)paramMap2.get("encoding")).equals("unencoded"))
    {
      paramMap1 = paramString.decrypt(readOutput(paramMap1));
      if ((!$assertionsDisabled) && (!new String(paramMap1).equals(testData))) {
        throw new AssertionError();
      }
    }
    else
    {
      throw new KeyczarException("Expects encoded or unencoded in parameters");
    }
  }
}

/* Location:
 * Qualified Name:     org.keyczar.interop.operations.EncryptOperation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */