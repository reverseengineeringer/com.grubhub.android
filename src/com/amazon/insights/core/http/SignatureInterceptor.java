package com.amazon.insights.core.http;

import com.amazon.insights.core.log.Logger;
import com.amazon.insights.core.util.DateUtil;
import com.amazon.insights.core.util.Preconditions;
import java.text.DateFormat;
import java.util.Date;
import java.util.Map;
import java.util.TimeZone;

public class SignatureInterceptor
  implements HttpClient.Interceptor
{
  protected static final String AUTH_HEADER_SIGNATURE = "x-amzn-Request-Signature";
  protected static final String AUTH_HEADER_SIGNATURE_TIMESTAMP = "x-amzn-Request-Signature-Timestamp";
  private static final String TIME_FORMAT = "yyyy-MM-dd'T'HH:mm:ss";
  private static Logger logger = Logger.getLogger(SignatureInterceptor.class);
  protected DateFormat df;
  private String privateKey;
  protected TimeZone timeZone;
  
  public SignatureInterceptor(String paramString)
  {
    Preconditions.checkNotNull(paramString, "A valid privateKey must be provided");
    privateKey = paramString;
    timeZone = TimeZone.getTimeZone("GMT");
    df = DateUtil.createLocaleIndependentDateFormatter("yyyy-MM-dd'T'HH:mm:ss");
    df.setTimeZone(timeZone);
  }
  
  private String getPrivateKey()
  {
    return privateKey;
  }
  
  public void after(HttpClient.Response paramResponse) {}
  
  public void before(HttpClient.Request paramRequest)
  {
    try
    {
      String str = getTimeStamp();
      boolean bool = "gzip".equalsIgnoreCase((String)paramRequest.getHeaders().get("Content-Encoding"));
      SignatureInterceptor.SignatureBuilder localSignatureBuilder = new SignatureInterceptor.SignatureBuilder().withPrivateKey(getPrivateKey()).withHttpMethod(paramRequest.getMethod()).withFullPath(paramRequest.getUrl().substring(paramRequest.getUrl().lastIndexOf("/")));
      if (paramRequest.getPostBodyBytes() != null) {}
      for (byte[] arrayOfByte = paramRequest.getPostBodyBytes();; arrayOfByte = new byte[0])
      {
        paramRequest.addHeader("x-amzn-Request-Signature", localSignatureBuilder.withBody(arrayOfByte).withTimestamp(str).isBinaryRequest(bool).createSignature());
        paramRequest.addHeader("x-amzn-Request-Signature-Timestamp", str);
        return;
      }
      return;
    }
    catch (SignatureBuilderException localSignatureBuilderException)
    {
      logger.e("error signing request: " + paramRequest, localSignatureBuilderException);
    }
  }
  
  protected String getTimeStamp()
  {
    try
    {
      String str = df.format(new Date());
      return str;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.http.SignatureInterceptor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */