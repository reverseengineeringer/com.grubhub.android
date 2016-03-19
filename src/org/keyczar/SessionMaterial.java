package org.keyczar;

import com.google.gson.Gson;
import com.google.gson.annotations.Expose;
import org.keyczar.annotations.Experimental;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.util.Util;

@Experimental
public class SessionMaterial
{
  @Expose
  private AesKey key = null;
  @Expose
  private String nonce = "";
  
  public SessionMaterial() {}
  
  public SessionMaterial(AesKey paramAesKey, String paramString)
  {
    key = paramAesKey;
    nonce = paramString;
  }
  
  public static SessionMaterial read(String paramString)
  {
    return (SessionMaterial)Util.gson().fromJson(paramString, SessionMaterial.class);
  }
  
  public AesKey getKey()
    throws KeyczarException
  {
    if (key == null) {
      throw new KeyczarException("Key has not been initialized");
    }
    return key;
  }
  
  public String getNonce()
  {
    return nonce;
  }
  
  public String toString()
  {
    return Util.gson().toJson(this);
  }
}

/* Location:
 * Qualified Name:     org.keyczar.SessionMaterial
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */