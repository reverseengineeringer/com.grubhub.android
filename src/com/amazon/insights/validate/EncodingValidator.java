package com.amazon.insights.validate;

import com.amazon.insights.impl.InitializationException;
import java.io.UnsupportedEncodingException;

public class EncodingValidator
{
  private final String encoding;
  
  public EncodingValidator(String paramString)
  {
    encoding = paramString;
  }
  
  public void validate()
  {
    try
    {
      "!\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~".getBytes(encoding);
      return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new InitializationException(encoding + " encoding is not supported", localUnsupportedEncodingException);
    }
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.validate.EncodingValidator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */