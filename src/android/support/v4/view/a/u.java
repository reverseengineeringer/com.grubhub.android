package android.support.v4.view.a;

import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.List;

class u
{
  public static Object a(v paramv)
  {
    new AccessibilityNodeProvider()
    {
      public AccessibilityNodeInfo createAccessibilityNodeInfo(int paramAnonymousInt)
      {
        return (AccessibilityNodeInfo)a(paramAnonymousInt);
      }
      
      public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String paramAnonymousString, int paramAnonymousInt)
      {
        return a(paramAnonymousString, paramAnonymousInt);
      }
      
      public boolean performAction(int paramAnonymousInt1, int paramAnonymousInt2, Bundle paramAnonymousBundle)
      {
        return a(paramAnonymousInt1, paramAnonymousInt2, paramAnonymousBundle);
      }
    };
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.a.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */