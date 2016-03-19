package org.keyczar;

import java.util.HashMap;
import org.keyczar.enums.Flag;
import org.keyczar.enums.RsaPadding;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.i18n.Messages;
import org.keyczar.keyparams.AesKeyParameters;
import org.keyczar.keyparams.RsaKeyParameters;

public class KeyczarToolKeyParameters
  implements AesKeyParameters, RsaKeyParameters
{
  private final HashMap<Flag, String> flagMap;
  
  public KeyczarToolKeyParameters(HashMap<Flag, String> paramHashMap)
  {
    flagMap = paramHashMap;
  }
  
  public HmacKey getHmacKey()
    throws KeyczarException
  {
    return HmacKey.generate(DefaultKeyType.HMAC_SHA1.applyDefaultParameters(null));
  }
  
  public int getKeySize()
    throws KeyczarException
  {
    if (flagMap.containsKey(Flag.SIZE)) {
      try
      {
        int i = Integer.parseInt((String)flagMap.get(Flag.SIZE));
        return i;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw new KeyczarException("Error parsing key size", localNumberFormatException);
      }
    }
    return -1;
  }
  
  public RsaPadding getRsaPadding()
    throws KeyczarException
  {
    String str = (String)flagMap.get(Flag.PADDING);
    if (str != null) {
      try
      {
        RsaPadding localRsaPadding = RsaPadding.valueOf(str.toUpperCase());
        return localRsaPadding;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        throw new KeyczarException(Messages.getString("InvalidPadding", new Object[] { str }));
      }
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     org.keyczar.KeyczarToolKeyParameters
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */