package android.support.v4.view.a;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;

class r$1
  implements v
{
  r$1(r paramr, p paramp) {}
  
  public Object a(int paramInt)
  {
    a locala = a.a(paramInt);
    if (locala == null) {
      return null;
    }
    return locala.a();
  }
  
  public List<Object> a(String paramString, int paramInt)
  {
    paramString = a.a(paramString, paramInt);
    ArrayList localArrayList = new ArrayList();
    int i = paramString.size();
    paramInt = 0;
    while (paramInt < i)
    {
      localArrayList.add(((a)paramString.get(paramInt)).a());
      paramInt += 1;
    }
    return localArrayList;
  }
  
  public boolean a(int paramInt1, int paramInt2, Bundle paramBundle)
  {
    return a.a(paramInt1, paramInt2, paramBundle);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.a.r.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */