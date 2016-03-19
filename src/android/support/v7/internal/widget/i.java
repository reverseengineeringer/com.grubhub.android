package android.support.v7.internal.widget;

import android.content.pm.ResolveInfo;
import java.math.BigDecimal;

public final class i
  implements Comparable<i>
{
  public final ResolveInfo a;
  public float b;
  
  public i(h paramh, ResolveInfo paramResolveInfo)
  {
    a = paramResolveInfo;
  }
  
  public int a(i parami)
  {
    return Float.floatToIntBits(b) - Float.floatToIntBits(b);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (paramObject == null) {
        return false;
      }
      if (getClass() != paramObject.getClass()) {
        return false;
      }
      paramObject = (i)paramObject;
    } while (Float.floatToIntBits(b) == Float.floatToIntBits(b));
    return false;
  }
  
  public int hashCode()
  {
    return Float.floatToIntBits(b) + 31;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[");
    localStringBuilder.append("resolveInfo:").append(a.toString());
    localStringBuilder.append("; weight:").append(new BigDecimal(b));
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */