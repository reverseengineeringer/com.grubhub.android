package org.keyczar.interop;

import java.util.Map;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.interop.operations.Operation;

public class Tester
{
  private final String algorithm;
  private final String command;
  private final Map<String, String> generateOptions;
  private final String keyPath;
  private final String operation;
  private final Map<String, String> output;
  private final String testData;
  private final Map<String, String> testOptions;
  
  public Tester(String paramString1, String paramString2, String paramString3, String paramString4, Map<String, String> paramMap1, Map<String, String> paramMap2, Map<String, String> paramMap3, String paramString5)
  {
    command = paramString1;
    operation = paramString2;
    keyPath = paramString3;
    algorithm = paramString4;
    generateOptions = paramMap1;
    testOptions = paramMap2;
    output = paramMap3;
    testData = paramString5;
  }
  
  public void test()
    throws KeyczarException
  {
    Operation.getOperationByName(operation, keyPath, testData).test(output, algorithm, generateOptions, testOptions);
  }
}

/* Location:
 * Qualified Name:     org.keyczar.interop.Tester
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */