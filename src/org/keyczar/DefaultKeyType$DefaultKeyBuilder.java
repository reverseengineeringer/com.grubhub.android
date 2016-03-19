package org.keyczar;

import org.keyczar.exceptions.KeyczarException;
import org.keyczar.exceptions.UnsupportedTypeException;
import org.keyczar.i18n.Messages;
import org.keyczar.interfaces.KeyType.Builder;
import org.keyczar.keyparams.AesKeyParameters;
import org.keyczar.keyparams.KeyParameters;
import org.keyczar.keyparams.RsaKeyParameters;

class DefaultKeyType$DefaultKeyBuilder
  implements KeyType.Builder
{
  private DefaultKeyType$DefaultKeyBuilder(DefaultKeyType paramDefaultKeyType) {}
  
  public KeyczarKey generate(KeyParameters paramKeyParameters)
    throws KeyczarException
  {
    paramKeyParameters = this$0.applyDefaultParameters(paramKeyParameters);
    this$0.validateKeyParameters(paramKeyParameters);
    switch (DefaultKeyType.1.$SwitchMap$org$keyczar$DefaultKeyType[this$0.ordinal()])
    {
    default: 
      throw new UnsupportedTypeException(this$0);
    case 2: 
      return AesKey.generate((AesKeyParameters)paramKeyParameters);
    case 3: 
      return HmacKey.generate(paramKeyParameters);
    case 4: 
      return DsaPrivateKey.generate(paramKeyParameters);
    case 1: 
      return RsaPrivateKey.generate((RsaKeyParameters)paramKeyParameters);
    }
    throw new KeyczarException(Messages.getString("KeyczarKey.PublicKeyExport", new Object[] { this$0 }));
  }
  
  public KeyczarKey read(String paramString)
    throws KeyczarException
  {
    switch (DefaultKeyType.1.$SwitchMap$org$keyczar$DefaultKeyType[this$0.ordinal()])
    {
    default: 
      throw new UnsupportedTypeException(this$0);
    case 2: 
      return AesKey.read(paramString);
    case 3: 
      return HmacKey.read(paramString);
    case 4: 
      return DsaPrivateKey.read(paramString);
    case 5: 
      return DsaPublicKey.read(paramString);
    case 1: 
      return RsaPrivateKey.read(paramString);
    }
    return RsaPublicKey.read(paramString);
  }
}

/* Location:
 * Qualified Name:     org.keyczar.DefaultKeyType.DefaultKeyBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */