package com.amazon.insights.validate;

import com.amazon.insights.impl.InitializationException;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.SecretKeySpec;

public class EncryptionValidator
{
  private final String encryptionAlgorithm;
  private final String secretKey;
  
  public EncryptionValidator(String paramString1, String paramString2)
  {
    secretKey = paramString1;
    encryptionAlgorithm = paramString2;
  }
  
  public void validate()
  {
    try
    {
      SecretKeySpec localSecretKeySpec = new SecretKeySpec(secretKey.getBytes("UTF-8"), encryptionAlgorithm);
      Object localObject = Cipher.getInstance(localSecretKeySpec.getAlgorithm());
      ((Cipher)localObject).init(1, localSecretKeySpec);
      localObject = ((Cipher)localObject).doFinal("!\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~".getBytes("UTF-8"));
      Cipher localCipher = Cipher.getInstance(localSecretKeySpec.getAlgorithm());
      localCipher.init(2, localSecretKeySpec);
      if (!new String(localCipher.doFinal((byte[])localObject), "UTF-8").equals("!\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~")) {
        throw new InitializationException("Could not encrypt and decrypt string with AES");
      }
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new InitializationException("UTF-8 encoding is not supported", localUnsupportedEncodingException);
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      throw new InitializationException("No Provider for AES", localNoSuchAlgorithmException);
    }
    catch (NoSuchPaddingException localNoSuchPaddingException)
    {
      throw new InitializationException("No Such Padding AES", localNoSuchPaddingException);
    }
    catch (InvalidKeyException localInvalidKeyException)
    {
      throw new InitializationException("Invalid Key for AES", localInvalidKeyException);
    }
    catch (IllegalBlockSizeException localIllegalBlockSizeException)
    {
      throw new InitializationException("Illegal Block size for AES", localIllegalBlockSizeException);
    }
    catch (BadPaddingException localBadPaddingException)
    {
      throw new InitializationException("Bad Padding for AES", localBadPaddingException);
    }
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.validate.EncryptionValidator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */