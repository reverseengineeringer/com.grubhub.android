package com.amazon.insights.validate;

import com.amazon.insights.impl.InitializationException;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class SHA256Validator
{
  public void validate()
  {
    try
    {
      if (MessageDigest.getInstance("SHA-256").digest("ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEF".getBytes("UTF-8")) == null) {
        throw new InitializationException("SHA-256 algorithm cannot hash bytes");
      }
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      throw new InitializationException("No valid SHA-256 implementation found", localNoSuchAlgorithmException);
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new InitializationException("UTF-8 encoding is not supported", localUnsupportedEncodingException);
    }
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.validate.SHA256Validator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */