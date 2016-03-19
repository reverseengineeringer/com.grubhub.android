package com.grubhub.AppBaseLibrary.android.utils.b;

import java.util.Arrays;
import java.util.List;
import org.keyczar.KeyMetadata;
import org.keyczar.KeyVersion;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.interfaces.KeyczarReader;

public class b
  implements KeyczarReader
{
  private static final String a = b.class.getSimpleName();
  private static final List<String> b = Arrays.asList(new String[] { "{\"aesKeyString\":\"tgpW4pJDOffEb3um1SL_WQ\",\"hmacKey\":{\"hmacKeyString\":\"YLm6TKXtyx3zeIZxEmbl86Gk4EN4TsvJNx7uhu9yc-o\",\"size\":256},\"mode\":\"CBC\",\"size\":128}" });
  
  public String getKey()
    throws KeyczarException
  {
    return getKey(KeyMetadata.read(getMetadata()).getPrimaryVersion().getVersionNumber());
  }
  
  public String getKey(int paramInt)
    throws KeyczarException
  {
    try
    {
      String str = (String)b.get(paramInt - 1);
      return str;
    }
    catch (IndexOutOfBoundsException localIndexOutOfBoundsException)
    {
      throw new KeyczarException("Couldn't read Keyczar key", localIndexOutOfBoundsException);
    }
  }
  
  public String getMetadata()
    throws KeyczarException
  {
    return "{\"name\":\"\",\"purpose\":\"DECRYPT_AND_ENCRYPT\",\"type\":\"AES\",\"versions\":[{\"exportable\":false,\"status\":\"PRIMARY\",\"versionNumber\":1}],\"encrypted\":false}";
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */