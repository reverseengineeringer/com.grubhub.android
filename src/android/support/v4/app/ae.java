package android.support.v4.app;

import android.content.Context;
import android.view.View;
import android.widget.TabHost.TabContentFactory;

class ae
  implements TabHost.TabContentFactory
{
  private final Context a;
  
  public ae(Context paramContext)
  {
    a = paramContext;
  }
  
  public View createTabContent(String paramString)
  {
    paramString = new View(a);
    paramString.setMinimumWidth(0);
    paramString.setMinimumHeight(0);
    return paramString;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */