package android.support.v4.view.a;

import android.view.accessibility.AccessibilityRecord;

class ae
{
  public static Object a()
  {
    return AccessibilityRecord.obtain();
  }
  
  public static void a(Object paramObject, int paramInt)
  {
    ((AccessibilityRecord)paramObject).setFromIndex(paramInt);
  }
  
  public static void a(Object paramObject, boolean paramBoolean)
  {
    ((AccessibilityRecord)paramObject).setScrollable(paramBoolean);
  }
  
  public static void b(Object paramObject, int paramInt)
  {
    ((AccessibilityRecord)paramObject).setItemCount(paramInt);
  }
  
  public static void c(Object paramObject, int paramInt)
  {
    ((AccessibilityRecord)paramObject).setToIndex(paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.a.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */