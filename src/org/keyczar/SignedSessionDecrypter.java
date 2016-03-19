package org.keyczar;

import org.keyczar.annotations.Experimental;
import org.keyczar.exceptions.Base64DecodingException;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.util.Base64Coder;

@Experimental
public class SignedSessionDecrypter
{
  private final SessionMaterial session;
  private final Verifier verifier;
  
  public SignedSessionDecrypter(Crypter paramCrypter, Verifier paramVerifier, String paramString)
    throws Base64DecodingException, KeyczarException
  {
    verifier = paramVerifier;
    session = SessionMaterial.read(new String(paramCrypter.decrypt(Base64Coder.decodeWebSafe(paramString))));
  }
  
  public byte[] decrypt(byte[] paramArrayOfByte)
    throws KeyczarException
  {
    if (session == null) {
      throw new KeyczarException("Session has not been initialized");
    }
    return new Crypter(new ImportedKeyReader(session.getKey())).decrypt(verifier.getAttachedData(paramArrayOfByte, Base64Coder.decodeWebSafe(session.getNonce())));
  }
}

/* Location:
 * Qualified Name:     org.keyczar.SignedSessionDecrypter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */