package com.google.android.gms.d;

import java.io.IOException;

public class ej
  extends IOException
{
  public ej(String paramString)
  {
    super(paramString);
  }
  
  static ej a()
  {
    return new ej("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length.");
  }
  
  static ej b()
  {
    return new ej("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
  }
  
  static ej c()
  {
    return new ej("CodedInputStream encountered a malformed varint.");
  }
  
  static ej d()
  {
    return new ej("Protocol message contained an invalid tag (zero).");
  }
  
  static ej e()
  {
    return new ej("Protocol message end-group tag did not match expected tag.");
  }
  
  static ej f()
  {
    return new ej("Protocol message tag had invalid wire type.");
  }
  
  static ej g()
  {
    return new ej("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.ej
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */