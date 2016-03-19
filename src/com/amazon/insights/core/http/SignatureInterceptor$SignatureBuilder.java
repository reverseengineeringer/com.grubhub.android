package com.amazon.insights.core.http;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.apache.commons.codec.binary.Base64;

final class SignatureInterceptor$SignatureBuilder
{
  private static final String TAG = "SignatureBuilder";
  private byte[] body;
  private String fullPath;
  private String httpVerb;
  private boolean isBinaryRequest = false;
  private String privateKey;
  private String timestamp;
  
  private byte[] createHash()
    throws NoSuchAlgorithmException
  {
    try
    {
      if (isBinaryRequest) {}
      for (String str1 = new String(Base64.encodeBase64(body), "UTF-8");; str1 = new String(body, "UTF-8"))
      {
        str1 = httpVerb + "\n" + fullPath + "\n" + timestamp + "\n" + str1 + "\n" + privateKey;
        return MessageDigest.getInstance("SHA-256").digest(str1.getBytes());
      }
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      for (;;)
      {
        String str2 = "";
      }
    }
  }
  
  public String createSignature()
    throws SignatureBuilderException
  {
    String str = null;
    try
    {
      byte[] arrayOfByte = createHash();
      if (arrayOfByte != null) {
        str = new String(Base64.encodeBase64(arrayOfByte), "UTF-8");
      }
      return str;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      throw new SignatureBuilderException("SHA-256 unsupported", localNoSuchAlgorithmException);
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new SignatureBuilderException("UTF-8 encoding unsupported", localUnsupportedEncodingException);
    }
  }
  
  public SignatureBuilder isBinaryRequest(boolean paramBoolean)
  {
    isBinaryRequest = paramBoolean;
    return this;
  }
  
  public SignatureBuilder withBody(byte[] paramArrayOfByte)
  {
    body = paramArrayOfByte;
    return this;
  }
  
  public SignatureBuilder withFullPath(String paramString)
  {
    fullPath = paramString;
    return this;
  }
  
  public SignatureBuilder withHttpMethod(HttpClient.HttpMethod paramHttpMethod)
  {
    return withHttpVerb(paramHttpMethod.toString());
  }
  
  public SignatureBuilder withHttpVerb(String paramString)
  {
    httpVerb = paramString;
    return this;
  }
  
  public SignatureBuilder withPrivateKey(String paramString)
  {
    privateKey = paramString;
    return this;
  }
  
  public SignatureBuilder withTimestamp(String paramString)
  {
    timestamp = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.http.SignatureInterceptor.SignatureBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */