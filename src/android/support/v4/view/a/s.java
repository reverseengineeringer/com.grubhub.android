package android.support.v4.view.a;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;

class s
  extends t
{
  public Object a(final p paramp)
  {
    w.a(new x()
    {
      public Object a(int paramAnonymousInt)
      {
        a locala = paramp.a(paramAnonymousInt);
        if (locala == null) {
          return null;
        }
        return locala.a();
      }
      
      public List<Object> a(String paramAnonymousString, int paramAnonymousInt)
      {
        paramAnonymousString = paramp.a(paramAnonymousString, paramAnonymousInt);
        ArrayList localArrayList = new ArrayList();
        int i = paramAnonymousString.size();
        paramAnonymousInt = 0;
        while (paramAnonymousInt < i)
        {
          localArrayList.add(((a)paramAnonymousString.get(paramAnonymousInt)).a());
          paramAnonymousInt += 1;
        }
        return localArrayList;
      }
      
      public boolean a(int paramAnonymousInt1, int paramAnonymousInt2, Bundle paramAnonymousBundle)
      {
        return paramp.a(paramAnonymousInt1, paramAnonymousInt2, paramAnonymousBundle);
      }
      
      public Object b(int paramAnonymousInt)
      {
        a locala = paramp.b(paramAnonymousInt);
        if (locala == null) {
          return null;
        }
        return locala.a();
      }
    });
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.a.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */