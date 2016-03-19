package org.keyczar.interop.operations;

import java.util.Map;
import org.keyczar.Signer;
import org.keyczar.Verifier;
import org.keyczar.exceptions.KeyczarException;

public class AttachedSignOperation
  extends Operation
{
  static
  {
    if (!AttachedSignOperation.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  public AttachedSignOperation(String paramString1, String paramString2)
  {
    super(paramString1, paramString2);
  }
  
  public byte[] generate(String paramString, Map<String, String> paramMap)
    throws KeyczarException
  {
    paramString = new Signer(getReader(paramString, (String)paramMap.get("cryptedKeySet"), ""));
    if (((String)paramMap.get("encoding")).equals("encoded")) {
      return "".getBytes();
    }
    if (((String)paramMap.get("encoding")).equals("unencoded")) {
      return paramString.attachedSign(testData.getBytes(), "".getBytes());
    }
    throw new KeyczarException("Expects encoded or unencoded in parameters");
  }
  
  public void test(Map<String, String> paramMap1, String paramString, Map<String, String> paramMap2, Map<String, String> paramMap3)
    throws KeyczarException
  {
    if (((String)paramMap3.get("class")).equals("signer"))
    {
      paramString = new Signer(getReader(paramString, (String)paramMap2.get("cryptedKeySet"), (String)paramMap3.get("pubKey")));
      if (((String)paramMap2.get("encoding")).equals("encoded")) {
        throw new KeyczarException("Not Implemented");
      }
      if (((String)paramMap2.get("encoding")).equals("unencoded"))
      {
        if ((!$assertionsDisabled) && (!paramString.attachedVerify(readOutput(paramMap1), "".getBytes()))) {
          throw new AssertionError();
        }
      }
      else {
        throw new KeyczarException("Expects encoded or unencoded in parameters");
      }
    }
    else if (((String)paramMap3.get("class")).equals("verifier"))
    {
      paramString = new Verifier(getReader(paramString, (String)paramMap2.get("cryptedKeySet"), (String)paramMap3.get("pubKey")));
      if (((String)paramMap2.get("encoding")).equals("encoded")) {
        throw new KeyczarException("Not Implemented");
      }
      if (((String)paramMap2.get("encoding")).equals("unencoded"))
      {
        if ((!$assertionsDisabled) && (!paramString.attachedVerify(readOutput(paramMap1), "".getBytes()))) {
          throw new AssertionError();
        }
      }
      else {
        throw new KeyczarException("Expects encoded or unencoded in parameters");
      }
    }
    else
    {
      throw new KeyczarException("Expects signer or verifier in parameters");
    }
  }
}

/* Location:
 * Qualified Name:     org.keyczar.interop.operations.AttachedSignOperation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */