package android.support.v7.internal.widget;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.DataSetObservable;
import android.support.v4.c.a;
import android.text.TextUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class h
  extends DataSetObservable
{
  private static final String a = h.class.getSimpleName();
  private static final Object b = new Object();
  private static final Map<String, h> c = new HashMap();
  private final Object d;
  private final List<i> e;
  private final List<k> f;
  private final Context g;
  private final String h;
  private Intent i;
  private j j;
  private int k;
  private boolean l;
  private boolean m;
  private boolean n;
  private boolean o;
  private l p;
  
  private boolean a(k paramk)
  {
    boolean bool = f.add(paramk);
    if (bool)
    {
      n = true;
      i();
      d();
      f();
      notifyChanged();
    }
    return bool;
  }
  
  private void d()
  {
    if (!m) {
      throw new IllegalStateException("No preceding call to #readHistoricalData");
    }
    if (!n) {}
    do
    {
      return;
      n = false;
    } while (TextUtils.isEmpty(h));
    a.a(new m(this, null), new Object[] { f, h });
  }
  
  private void e()
  {
    boolean bool1 = g();
    boolean bool2 = h();
    i();
    if ((bool1 | bool2))
    {
      f();
      notifyChanged();
    }
  }
  
  private boolean f()
  {
    if ((j != null) && (i != null) && (!e.isEmpty()) && (!f.isEmpty()))
    {
      j.a(i, e, Collections.unmodifiableList(f));
      return true;
    }
    return false;
  }
  
  private boolean g()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (o)
    {
      bool1 = bool2;
      if (i != null)
      {
        o = false;
        e.clear();
        List localList = g.getPackageManager().queryIntentActivities(i, 0);
        int i2 = localList.size();
        int i1 = 0;
        while (i1 < i2)
        {
          ResolveInfo localResolveInfo = (ResolveInfo)localList.get(i1);
          e.add(new i(this, localResolveInfo));
          i1 += 1;
        }
        bool1 = true;
      }
    }
    return bool1;
  }
  
  private boolean h()
  {
    if ((l) && (n) && (!TextUtils.isEmpty(h)))
    {
      l = false;
      m = true;
      j();
      return true;
    }
    return false;
  }
  
  private void i()
  {
    int i2 = f.size() - k;
    if (i2 <= 0) {}
    for (;;)
    {
      return;
      n = true;
      int i1 = 0;
      while (i1 < i2)
      {
        k localk = (k)f.remove(0);
        i1 += 1;
      }
    }
  }
  
  /* Error */
  private void j()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 61	android/support/v7/internal/widget/h:g	Landroid/content/Context;
    //   4: aload_0
    //   5: getfield 88	android/support/v7/internal/widget/h:h	Ljava/lang/String;
    //   8: invokevirtual 187	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   11: astore_2
    //   12: invokestatic 193	android/util/Xml:newPullParser	()Lorg/xmlpull/v1/XmlPullParser;
    //   15: astore_3
    //   16: aload_3
    //   17: aload_2
    //   18: aconst_null
    //   19: invokeinterface 199 3 0
    //   24: iconst_0
    //   25: istore_1
    //   26: iload_1
    //   27: iconst_1
    //   28: if_icmpeq +18 -> 46
    //   31: iload_1
    //   32: iconst_2
    //   33: if_icmpeq +13 -> 46
    //   36: aload_3
    //   37: invokeinterface 202 1 0
    //   42: istore_1
    //   43: goto -17 -> 26
    //   46: ldc -52
    //   48: aload_3
    //   49: invokeinterface 207 1 0
    //   54: invokevirtual 212	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   57: ifne +53 -> 110
    //   60: new 181	org/xmlpull/v1/XmlPullParserException
    //   63: dup
    //   64: ldc -42
    //   66: invokespecial 215	org/xmlpull/v1/XmlPullParserException:<init>	(Ljava/lang/String;)V
    //   69: athrow
    //   70: astore_3
    //   71: getstatic 45	android/support/v7/internal/widget/h:a	Ljava/lang/String;
    //   74: new 217	java/lang/StringBuilder
    //   77: dup
    //   78: invokespecial 218	java/lang/StringBuilder:<init>	()V
    //   81: ldc -36
    //   83: invokevirtual 224	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   86: aload_0
    //   87: getfield 88	android/support/v7/internal/widget/h:h	Ljava/lang/String;
    //   90: invokevirtual 224	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   93: invokevirtual 227	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   96: aload_3
    //   97: invokestatic 232	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   100: pop
    //   101: aload_2
    //   102: ifnull +7 -> 109
    //   105: aload_2
    //   106: invokevirtual 237	java/io/FileInputStream:close	()V
    //   109: return
    //   110: aload_0
    //   111: getfield 67	android/support/v7/internal/widget/h:f	Ljava/util/List;
    //   114: astore 4
    //   116: aload 4
    //   118: invokeinterface 141 1 0
    //   123: aload_3
    //   124: invokeinterface 202 1 0
    //   129: istore_1
    //   130: iload_1
    //   131: iconst_1
    //   132: if_icmpne +14 -> 146
    //   135: aload_2
    //   136: ifnull -27 -> 109
    //   139: aload_2
    //   140: invokevirtual 237	java/io/FileInputStream:close	()V
    //   143: return
    //   144: astore_2
    //   145: return
    //   146: iload_1
    //   147: iconst_3
    //   148: if_icmpeq -25 -> 123
    //   151: iload_1
    //   152: iconst_4
    //   153: if_icmpeq -30 -> 123
    //   156: ldc -17
    //   158: aload_3
    //   159: invokeinterface 207 1 0
    //   164: invokevirtual 212	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   167: ifne +55 -> 222
    //   170: new 181	org/xmlpull/v1/XmlPullParserException
    //   173: dup
    //   174: ldc -15
    //   176: invokespecial 215	org/xmlpull/v1/XmlPullParserException:<init>	(Ljava/lang/String;)V
    //   179: athrow
    //   180: astore_3
    //   181: getstatic 45	android/support/v7/internal/widget/h:a	Ljava/lang/String;
    //   184: new 217	java/lang/StringBuilder
    //   187: dup
    //   188: invokespecial 218	java/lang/StringBuilder:<init>	()V
    //   191: ldc -36
    //   193: invokevirtual 224	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   196: aload_0
    //   197: getfield 88	android/support/v7/internal/widget/h:h	Ljava/lang/String;
    //   200: invokevirtual 224	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   203: invokevirtual 227	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   206: aload_3
    //   207: invokestatic 232	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   210: pop
    //   211: aload_2
    //   212: ifnull -103 -> 109
    //   215: aload_2
    //   216: invokevirtual 237	java/io/FileInputStream:close	()V
    //   219: return
    //   220: astore_2
    //   221: return
    //   222: aload 4
    //   224: new 177	android/support/v7/internal/widget/k
    //   227: dup
    //   228: aload_3
    //   229: aconst_null
    //   230: ldc -13
    //   232: invokeinterface 247 3 0
    //   237: aload_3
    //   238: aconst_null
    //   239: ldc -7
    //   241: invokeinterface 247 3 0
    //   246: invokestatic 255	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   249: aload_3
    //   250: aconst_null
    //   251: ldc_w 257
    //   254: invokeinterface 247 3 0
    //   259: invokestatic 263	java/lang/Float:parseFloat	(Ljava/lang/String;)F
    //   262: invokespecial 266	android/support/v7/internal/widget/k:<init>	(Ljava/lang/String;JF)V
    //   265: invokeinterface 73 2 0
    //   270: pop
    //   271: goto -148 -> 123
    //   274: astore_3
    //   275: aload_2
    //   276: ifnull +7 -> 283
    //   279: aload_2
    //   280: invokevirtual 237	java/io/FileInputStream:close	()V
    //   283: aload_3
    //   284: athrow
    //   285: astore_2
    //   286: return
    //   287: astore_2
    //   288: goto -5 -> 283
    //   291: astore_2
    //   292: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	293	0	this	h
    //   25	129	1	i1	int
    //   11	129	2	localFileInputStream	java.io.FileInputStream
    //   144	72	2	localIOException1	java.io.IOException
    //   220	60	2	localIOException2	java.io.IOException
    //   285	1	2	localIOException3	java.io.IOException
    //   287	1	2	localIOException4	java.io.IOException
    //   291	1	2	localFileNotFoundException	java.io.FileNotFoundException
    //   15	34	3	localXmlPullParser	org.xmlpull.v1.XmlPullParser
    //   70	89	3	localXmlPullParserException	org.xmlpull.v1.XmlPullParserException
    //   180	70	3	localIOException5	java.io.IOException
    //   274	10	3	localObject	Object
    //   114	109	4	localList	List
    // Exception table:
    //   from	to	target	type
    //   12	24	70	org/xmlpull/v1/XmlPullParserException
    //   36	43	70	org/xmlpull/v1/XmlPullParserException
    //   46	70	70	org/xmlpull/v1/XmlPullParserException
    //   110	123	70	org/xmlpull/v1/XmlPullParserException
    //   123	130	70	org/xmlpull/v1/XmlPullParserException
    //   156	180	70	org/xmlpull/v1/XmlPullParserException
    //   222	271	70	org/xmlpull/v1/XmlPullParserException
    //   139	143	144	java/io/IOException
    //   12	24	180	java/io/IOException
    //   36	43	180	java/io/IOException
    //   46	70	180	java/io/IOException
    //   110	123	180	java/io/IOException
    //   123	130	180	java/io/IOException
    //   156	180	180	java/io/IOException
    //   222	271	180	java/io/IOException
    //   215	219	220	java/io/IOException
    //   12	24	274	finally
    //   36	43	274	finally
    //   46	70	274	finally
    //   71	101	274	finally
    //   110	123	274	finally
    //   123	130	274	finally
    //   156	180	274	finally
    //   181	211	274	finally
    //   222	271	274	finally
    //   105	109	285	java/io/IOException
    //   279	283	287	java/io/IOException
    //   0	12	291	java/io/FileNotFoundException
  }
  
  public int a()
  {
    synchronized (d)
    {
      e();
      int i1 = e.size();
      return i1;
    }
  }
  
  public int a(ResolveInfo paramResolveInfo)
  {
    for (;;)
    {
      int i1;
      synchronized (d)
      {
        e();
        List localList = e;
        int i2 = localList.size();
        i1 = 0;
        if (i1 < i2)
        {
          if (geta == paramResolveInfo) {
            return i1;
          }
        }
        else {
          return -1;
        }
      }
      i1 += 1;
    }
  }
  
  public ResolveInfo a(int paramInt)
  {
    synchronized (d)
    {
      e();
      ResolveInfo localResolveInfo = e.get(paramInt)).a;
      return localResolveInfo;
    }
  }
  
  public Intent b(int paramInt)
  {
    synchronized (d)
    {
      if (i == null) {
        return null;
      }
      e();
      Object localObject2 = (i)e.get(paramInt);
      localObject2 = new ComponentName(a.activityInfo.packageName, a.activityInfo.name);
      Intent localIntent1 = new Intent(i);
      localIntent1.setComponent((ComponentName)localObject2);
      if (p != null)
      {
        Intent localIntent2 = new Intent(localIntent1);
        if (p.a(this, localIntent2)) {
          return null;
        }
      }
      a(new k((ComponentName)localObject2, System.currentTimeMillis(), 1.0F));
      return localIntent1;
    }
  }
  
  public ResolveInfo b()
  {
    synchronized (d)
    {
      e();
      if (!e.isEmpty())
      {
        ResolveInfo localResolveInfo = e.get(0)).a;
        return localResolveInfo;
      }
      return null;
    }
  }
  
  public void c(int paramInt)
  {
    for (;;)
    {
      synchronized (d)
      {
        e();
        i locali1 = (i)e.get(paramInt);
        i locali2 = (i)e.get(0);
        if (locali2 != null)
        {
          f1 = b - b + 5.0F;
          a(new k(new ComponentName(a.activityInfo.packageName, a.activityInfo.name), System.currentTimeMillis(), f1));
          return;
        }
      }
      float f1 = 1.0F;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */