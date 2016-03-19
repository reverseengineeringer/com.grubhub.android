package org.c.a;

import java.io.ObjectStreamException;
import java.io.Serializable;
import org.c.c;
import org.c.d;

abstract class e
  implements Serializable, c
{
  protected String b;
  
  public String b()
  {
    return b;
  }
  
  protected Object readResolve()
    throws ObjectStreamException
  {
    return d.a(b());
  }
}

/* Location:
 * Qualified Name:     org.c.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */