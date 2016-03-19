package com.taplytics;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.view.View;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.TextView;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.json.JSONArray;
import org.json.JSONObject;

final class a
  implements Runnable
{
  a(String paramString1, Object paramObject, View paramView, String paramString2) {}
  
  public void run()
  {
    k = 0;
    j = 0;
    try
    {
      localObject1 = a;
      i = -1;
      switch (((String)localObject1).hashCode())
      {
      }
    }
    catch (SecurityException localSecurityException)
    {
      Object localObject1;
      ck.b("Method errors on " + a, localSecurityException);
      return;
      if (b == JSONObject.NULL) {
        break label2327;
      }
      f = ((Number)b).floatValue();
      c.getLayoutParams().height = jk.a(f);
      c.requestLayout();
      return;
      Object localObject2 = (JSONObject)b;
      if ((!((JSONObject)localObject2).has("left")) || (((JSONObject)localObject2).isNull("left"))) {
        break label705;
      }
      i = jk.a(((JSONObject)localObject2).getInt("left"));
      if ((!((JSONObject)localObject2).has("right")) || (((JSONObject)localObject2).isNull("right"))) {
        break label716;
      }
      j = jk.a(((JSONObject)localObject2).getInt("right"));
      if ((!((JSONObject)localObject2).has("top")) || (((JSONObject)localObject2).isNull("top"))) {
        break label727;
      }
      k = jk.a(((JSONObject)localObject2).getInt("top"));
      if ((!((JSONObject)localObject2).has("bottom")) || (((JSONObject)localObject2).isNull("bottom"))) {
        break label739;
      }
      for (int m = jk.a(((JSONObject)localObject2).getInt("bottom"));; m = c.getPaddingBottom())
      {
        c.getClass().getMethod(a, new Class[] { Integer.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE }).invoke(c, new Object[] { Integer.valueOf(i), Integer.valueOf(k), Integer.valueOf(j), Integer.valueOf(m) });
        c.invalidate();
        return;
        i = c.getPaddingLeft();
        break;
        j = c.getPaddingRight();
        break label547;
        k = c.getPaddingTop();
        break label580;
      }
      if (!(b instanceof Drawable)) {
        break label799;
      }
      if (Build.VERSION.SDK_INT < 9) {
        break label784;
      }
      c.setBackground((Drawable)b);
      return;
      c.setBackgroundDrawable((Drawable)b);
      return;
      if ((!(b instanceof JSONArray)) || (((JSONArray)b).length() == 0)) {
        break label962;
      }
      localObject2 = kc.a(b);
      if (!((File)localObject2).exists()) {
        break label2327;
      }
      localObject2 = Drawable.createFromPath(((File)localObject2).getAbsolutePath());
      jk.a(c, b, a, d);
      if (Build.VERSION.SDK_INT < 9) {
        break label952;
      }
      c.setBackground((Drawable)localObject2);
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        float f;
        ck.b(localException.getCause() + ": " + c.getClass() + ", " + a + ", " + localException.getMessage(), localException);
        return;
        c.setBackgroundDrawable(localException);
        return;
        if ((!(b instanceof String)) || (!b.equals("null"))) {
          break;
        }
        c.setBackground(null);
        return;
        Object localObject3 = d;
        switch (((String)localObject3).hashCode())
        {
        case 104431: 
        case 97526364: 
        case -1266517045: 
          for (;;)
          {
            localObject3 = (String)b;
            ((TextView)c).setHint(((String)localObject3).replace("\\n", "\n"));
            return;
            if (!((String)localObject3).equals("int")) {
              break;
            }
            i = k;
            break label2350;
            if (!((String)localObject3).equals("float")) {
              break;
            }
            i = 1;
            break label2350;
            if (!((String)localObject3).equals("tlColor")) {
              break;
            }
            i = 2;
            break label2350;
            if ((b instanceof Number))
            {
              c.getClass().getMethod(a, new Class[] { Integer.TYPE }).invoke(c, new Object[] { Integer.valueOf(((Number)b).intValue()) });
            }
            else if ((b instanceof Number))
            {
              c.getClass().getMethod(a, new Class[] { Float.TYPE }).invoke(c, new Object[] { Float.valueOf(((Number)b).floatValue()) });
            }
            else if ((b instanceof Integer))
            {
              c.getClass().getMethod(a, new Class[] { Integer.TYPE }).invoke(c, new Object[] { (Integer)b });
            }
            else if ((b instanceof Drawable))
            {
              c.setBackground((Drawable)b);
            }
            else if (((b instanceof String)) && (b.equals("null")))
            {
              c.setBackground(null);
            }
            else
            {
              localObject3 = jx.a(b);
              if (localObject3 != null) {
                c.getClass().getMethod(a, new Class[] { Integer.TYPE }).invoke(c, new Object[] { localObject3 });
              }
            }
          }
          localObject3 = (String)b;
          ((TextView)c).setText(((String)localObject3).replace("\\n", "\n"));
          return;
          if ((b instanceof Float)) {}
          for (f = ((Float)b).floatValue();; f = ((Integer)b).floatValue())
          {
            ((TextView)c).setTextSize(0, f);
            return;
          }
          if ((b instanceof Drawable))
          {
            if (Build.VERSION.SDK_INT < 9) {
              break label2327;
            }
            ((ImageView)c).setImageDrawable((Drawable)b);
            return;
          }
          if ((b instanceof Bitmap))
          {
            ((ImageView)c).setImageBitmap((Bitmap)b);
            return;
          }
          if ((!(b instanceof JSONArray)) || (((JSONArray)b).length() == 0)) {
            break label2327;
          }
          localObject3 = kc.a(b);
          if (!((File)localObject3).exists()) {
            break label2327;
          }
          localObject3 = Drawable.createFromPath(((File)localObject3).getAbsolutePath());
          jk.a(c, localObject3, a, d);
          if (Build.VERSION.SDK_INT < 9) {
            break label2327;
          }
          ((ImageView)c).setImageDrawable((Drawable)localObject3);
          return;
          if (((String)localObject3).equals("int"))
          {
            i = j;
            break label2285;
            if (((String)localObject3).equals("float"))
            {
              i = 1;
              break label2285;
              if (((String)localObject3).equals("tlColor"))
              {
                i = 2;
                break label2285;
                if (((String)localObject3).equals("sp"))
                {
                  i = 3;
                  break label2285;
                  if (((String)localObject3).equals("dp"))
                  {
                    i = 4;
                    break label2285;
                    if (((String)localObject3).equals("ScaleType"))
                    {
                      i = 5;
                      break label2285;
                      if ((b instanceof Number))
                      {
                        c.getClass().getMethod(a, new Class[] { Integer.TYPE }).invoke(c, new Object[] { Integer.valueOf(((Number)b).intValue()) });
                        return;
                      }
                      if ((b instanceof Number))
                      {
                        c.getClass().getMethod(a, new Class[] { Float.TYPE }).invoke(c, new Object[] { Float.valueOf(((Number)b).floatValue()) });
                        return;
                      }
                      if ((b instanceof Integer)) {
                        c.getClass().getMethod(a, new Class[] { Integer.TYPE }).invoke(c, new Object[] { (Integer)b });
                      }
                      do
                      {
                        for (;;)
                        {
                          if (!(b instanceof Number)) {
                            break label2327;
                          }
                          c.getClass().getMethod(a, new Class[] { Integer.TYPE, Float.TYPE }).invoke(c, new Object[] { Integer.valueOf(2), Float.valueOf(((Number)b).floatValue()) });
                          return;
                          if (!(b instanceof Drawable)) {
                            break;
                          }
                          c.setBackground((Drawable)b);
                        }
                        localObject3 = jx.a(b);
                      } while (localObject3 == null);
                      c.getClass().getMethod(a, new Class[] { Integer.TYPE }).invoke(c, new Object[] { localObject3 });
                      return;
                      if (!(b instanceof Number)) {
                        break label2327;
                      }
                      i = jk.a(((Number)b).floatValue());
                      c.getClass().getMethod(a, new Class[] { Integer.TYPE }).invoke(c, new Object[] { Integer.valueOf(i) });
                      return;
                      if (!(b instanceof Number)) {
                        break label2327;
                      }
                      localObject3 = ImageView.ScaleType.values()[((Number)b).intValue()];
                      c.getClass().getMethod(a, new Class[] { ImageView.ScaleType.class }).invoke(c, new Object[] { localObject3 });
                      return;
                      switch (i)
                      {
                      }
                      continue;
                    }
                  }
                }
              }
            }
          }
          i = -1;
          switch (i)
          {
          }
          break;
        }
      }
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      for (;;) {}
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      for (;;) {}
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      for (;;) {}
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;)
      {
        continue;
        int i = -1;
        switch (i)
        {
        }
      }
    }
    localObject1 = d;
    switch (((String)localObject1).hashCode())
    {
    case 104431: 
      localObject1 = Class.forName(d);
      c.getClass().getMethod(a, new Class[] { localObject1 }).invoke(c, new Object[] { b });
      return;
      if (((String)localObject1).equals("setWidth"))
      {
        i = 0;
        break label2227;
        if (((String)localObject1).equals("setHeight"))
        {
          i = 1;
          break label2227;
          if (((String)localObject1).equals("setPadding"))
          {
            i = 2;
            break label2227;
            if (((String)localObject1).equals("setBackgroundDrawable"))
            {
              i = 3;
              break label2227;
              if (((String)localObject1).equals("setBackgroundColor"))
              {
                i = 4;
                break label2227;
                if (((String)localObject1).equals("setHintText"))
                {
                  i = 5;
                  break label2227;
                  if (((String)localObject1).equals("setText"))
                  {
                    i = 6;
                    break label2227;
                    if (((String)localObject1).equals("setTextSize"))
                    {
                      i = 7;
                      break label2227;
                      if (((String)localObject1).equals("setImageDrawable"))
                      {
                        i = 8;
                        break label2227;
                        if (b == JSONObject.NULL) {
                          break label2327;
                        }
                        f = ((Number)b).floatValue();
                        c.getLayoutParams().width = jk.a(f);
                        c.requestLayout();
                        return;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */