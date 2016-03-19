package org.keyczar;

import java.io.InputStream;
import java.security.PublicKey;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.interfaces.DSAPublicKey;
import java.security.interfaces.RSAPublicKey;
import org.keyczar.enums.KeyPurpose;
import org.keyczar.enums.KeyStatus;
import org.keyczar.enums.RsaPadding;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.i18n.Messages;
import org.keyczar.interfaces.KeyczarReader;

public class X509CertificateReader
  implements KeyczarReader
{
  private final InputStream certificateStream;
  private KeyczarPublicKey key;
  private KeyMetadata meta = null;
  private final RsaPadding padding;
  private final KeyPurpose purpose;
  
  public X509CertificateReader(KeyPurpose paramKeyPurpose, InputStream paramInputStream, RsaPadding paramRsaPadding)
    throws KeyczarException
  {
    if (paramKeyPurpose == null) {
      throw new KeyczarException("X509Certificate purpose must not be null");
    }
    if (paramInputStream == null) {
      throw new KeyczarException("X509Certificate stream must not be null");
    }
    purpose = paramKeyPurpose;
    certificateStream = paramInputStream;
    padding = paramRsaPadding;
  }
  
  private void constructMetadata()
    throws KeyczarException
  {
    if ((purpose == KeyPurpose.ENCRYPT) && (key.getType() == DefaultKeyType.DSA_PUB)) {
      throw new KeyczarException(Messages.getString("Keyczartool.InvalidUseOfDsaKey", new Object[0]));
    }
    meta = new KeyMetadata("imported from certificate", purpose, key.getType());
    meta.addVersion(new KeyVersion(1, KeyStatus.PRIMARY, true));
  }
  
  private void ensureCertificateRead()
    throws KeyczarException
  {
    if (key == null) {}
    try
    {
      parseCertificate();
      constructMetadata();
      return;
    }
    catch (CertificateException localCertificateException)
    {
      throw new KeyczarException(Messages.getString("KeyczarTool.InvalidCertificate", new Object[0]), localCertificateException);
    }
  }
  
  private void parseCertificate()
    throws CertificateException, KeyczarException
  {
    PublicKey localPublicKey = CertificateFactory.getInstance("X.509").generateCertificate(certificateStream).getPublicKey();
    if ((localPublicKey instanceof RSAPublicKey))
    {
      key = new RsaPublicKey((RSAPublicKey)localPublicKey, padding);
      return;
    }
    if ((localPublicKey instanceof DSAPublicKey))
    {
      if (padding != null) {
        throw new KeyczarException(Messages.getString("InvalidPadding", new Object[] { padding.name() }));
      }
      key = new DsaPublicKey((DSAPublicKey)localPublicKey);
      return;
    }
    throw new KeyczarException("Unrecognized key type " + localPublicKey.getAlgorithm() + " in certificate");
  }
  
  public String getKey()
    throws KeyczarException
  {
    ensureCertificateRead();
    return key.toString();
  }
  
  public String getKey(int paramInt)
    throws KeyczarException
  {
    ensureCertificateRead();
    return key.toString();
  }
  
  public String getMetadata()
    throws KeyczarException
  {
    ensureCertificateRead();
    return meta.toString();
  }
}

/* Location:
 * Qualified Name:     org.keyczar.X509CertificateReader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */