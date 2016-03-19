package org.keyczar.interop;

import java.util.Map;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.interop.operations.Operation;

public class Generator
{
  private final String algorithm;
  private final String command;
  private final Map<String, String> generateOptions;
  private final String keyPath;
  private final String operation;
  private final String testData;
  
  private Generator(String paramString1, String paramString2, String paramString3, String paramString4, Map<String, String> paramMap, String paramString5)
  {
    command = paramString1;
    operation = paramString2;
    keyPath = paramString3;
    algorithm = paramString4;
    generateOptions = paramMap;
    testData = paramString5;
  }
  
  public String generate()
    throws KeyczarException
  {
    Operation localOperation = Operation.getOperationByName(operation, keyPath, testData);
    return localOperation.formatOutput(localOperation.generate(algorithm, generateOptions));
  }
}

/* Location:
 * Qualified Name:     org.keyczar.interop.Generator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */