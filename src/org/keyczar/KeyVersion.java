package org.keyczar;

import com.google.gson.Gson;
import com.google.gson.annotations.Expose;
import org.keyczar.enums.KeyStatus;
import org.keyczar.util.Util;

public class KeyVersion
{
  @Expose
  private boolean exportable = false;
  @Expose
  private KeyStatus status = KeyStatus.ACTIVE;
  @Expose
  private int versionNumber = 0;
  
  private KeyVersion() {}
  
  public KeyVersion(int paramInt, KeyStatus paramKeyStatus, boolean paramBoolean)
  {
    versionNumber = paramInt;
    status = paramKeyStatus;
    exportable = paramBoolean;
  }
  
  public KeyVersion(int paramInt, boolean paramBoolean)
  {
    this(paramInt, KeyStatus.ACTIVE, paramBoolean);
  }
  
  public static KeyVersion read(String paramString)
  {
    return (KeyVersion)Util.gson().fromJson(paramString, KeyVersion.class);
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof KeyVersion)) {}
    do
    {
      return false;
      paramObject = (KeyVersion)paramObject;
    } while (getVersionNumber() != ((KeyVersion)paramObject).getVersionNumber());
    return true;
  }
  
  public KeyStatus getStatus()
  {
    return status;
  }
  
  public int getVersionNumber()
  {
    return versionNumber;
  }
  
  public int hashCode()
  {
    return versionNumber;
  }
  
  public boolean isExportable()
  {
    return exportable;
  }
  
  public void setStatus(KeyStatus paramKeyStatus)
  {
    KeyStatus localKeyStatus = paramKeyStatus;
    if (paramKeyStatus == null) {
      localKeyStatus = status;
    }
    status = localKeyStatus;
  }
  
  public String toString()
  {
    return Util.gson().toJson(this);
  }
}

/* Location:
 * Qualified Name:     org.keyczar.KeyVersion
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */