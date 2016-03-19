package org.keyczar;

import java.util.concurrent.atomic.AtomicReference;
import org.keyczar.annotations.Experimental;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.keyparams.AesKeyParameters;
import org.keyczar.util.Base64Coder;
import org.keyczar.util.Util;

@Experimental
public class SignedSessionEncrypter
{
  private static final int NONCE_SIZE = 16;
  private final Encrypter encrypter;
  private final AtomicReference<SessionMaterial> session = new AtomicReference();
  private final Signer signer;
  
  public SignedSessionEncrypter(Encrypter paramEncrypter, Signer paramSigner)
  {
    encrypter = paramEncrypter;
    signer = paramSigner;
  }
  
  private String buildNonce()
  {
    byte[] arrayOfByte = new byte[16];
    Util.rand(arrayOfByte);
    return Base64Coder.encodeWebSafe(arrayOfByte);
  }
  
  private AesKey buildSessionKey(AesKeyParameters paramAesKeyParameters)
    throws KeyczarException
  {
    if (!DefaultKeyType.AES.isAcceptableSize(paramAesKeyParameters.getKeySize())) {
      throw new KeyczarException("Unsupported key size requested for session");
    }
    return AesKey.generate(paramAesKeyParameters);
  }
  
  public byte[] encrypt(byte[] paramArrayOfByte)
    throws KeyczarException
  {
    if (session.get() == null) {
      throw new KeyczarException("Session not initialized.");
    }
    SessionMaterial localSessionMaterial = (SessionMaterial)session.get();
    paramArrayOfByte = new Crypter(new ImportedKeyReader(localSessionMaterial.getKey())).encrypt(paramArrayOfByte);
    return signer.attachedSign(paramArrayOfByte, Base64Coder.decodeWebSafe(localSessionMaterial.getNonce()));
  }
  
  public String newSession()
    throws KeyczarException
  {
    return newSession((AesKeyParameters)DefaultKeyType.AES.applyDefaultParameters(null));
  }
  
  @Deprecated
  public String newSession(final int paramInt)
    throws KeyczarException
  {
    SessionMaterial localSessionMaterial = new SessionMaterial(buildSessionKey(new AesKeyParameters()
    {
      public HmacKey getHmacKey()
        throws KeyczarException
      {
        return HmacKey.generate(DefaultKeyType.HMAC_SHA1.applyDefaultParameters(null));
      }
      
      public int getKeySize()
      {
        return paramInt;
      }
    }), buildNonce());
    session.set(localSessionMaterial);
    return encrypter.encrypt(localSessionMaterial.toString());
  }
  
  public String newSession(AesKeyParameters paramAesKeyParameters)
    throws KeyczarException
  {
    paramAesKeyParameters = new SessionMaterial(buildSessionKey(paramAesKeyParameters), buildNonce());
    session.set(paramAesKeyParameters);
    return encrypter.encrypt(paramAesKeyParameters.toString());
  }
}

/* Location:
 * Qualified Name:     org.keyczar.SignedSessionEncrypter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */