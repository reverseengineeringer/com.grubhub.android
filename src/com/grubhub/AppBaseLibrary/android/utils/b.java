package com.grubhub.AppBaseLibrary.android.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.utils.e.a;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;
import java.util.TimeZone;

public class b
{
  private static final String a = b.class.getSimpleName();
  private static Integer b;
  private static Integer c;
  private static Integer d;
  private static Integer e;
  private static Integer f;
  private static Integer g;
  private static String h;
  
  public static float a(float paramFloat, int paramInt)
  {
    if (paramInt < 0) {
      return paramFloat;
    }
    paramInt = (int)Math.pow(10.0D, paramInt);
    return Math.round(paramInt * paramFloat) / (paramInt * 1.0F);
  }
  
  public static int a(long paramLong)
  {
    return (int)Math.ceil((paramLong - new Date().getTime()) / 60000L);
  }
  
  public static int a(String paramString)
  {
    if (f.a(paramString)) {
      return 0;
    }
    return paramString.trim().split("\\s+").length;
  }
  
  public static long a(String paramString1, String paramString2, boolean paramBoolean)
  {
    if ((f.a(paramString1)) || (f.a(paramString2))) {
      return 0L;
    }
    try
    {
      paramString2 = new SimpleDateFormat(paramString2, Locale.US);
      if (paramBoolean) {
        paramString2.setTimeZone(TimeZone.getTimeZone("UTC"));
      }
      for (;;)
      {
        return paramString2.parse(paramString1).getTime();
        paramString2.setTimeZone(i());
      }
      return 0L;
    }
    catch (Exception paramString1) {}
  }
  
  public static Uri a(String paramString, Context paramContext)
  {
    String str = paramContext.getPackageName();
    StringBuilder localStringBuilder = new StringBuilder("android-app://");
    localStringBuilder.append(str).append("/").append(paramContext.getString(2131231021)).append("/").append(paramContext.getString(2131231018));
    paramContext = paramContext.getString(2131231020);
    if (f.b(paramContext)) {
      localStringBuilder.append(paramContext);
    }
    for (;;)
    {
      localStringBuilder.append(paramString);
      return Uri.parse(localStringBuilder.toString());
      localStringBuilder.append("/");
    }
  }
  
  public static String a()
  {
    try
    {
      Object localObject = GHSApplication.a().getBaseContext();
      PackageInfo localPackageInfo = ((Context)localObject).getPackageManager().getPackageInfo(((Context)localObject).getPackageName(), 0);
      localObject = String.format("%s/%s (%s; Android %s)", new Object[] { ((Context)localObject).getResources().getString(2131230935), versionName, Build.MODEL, Build.VERSION.RELEASE });
      return (String)localObject;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      a.b(a, localNameNotFoundException.getMessage());
    }
    return "";
  }
  
  /* Error */
  public static String a(long paramLong1, long paramLong2)
  {
    // Byte code:
    //   0: new 77	java/text/SimpleDateFormat
    //   3: dup
    //   4: ldc -51
    //   6: invokespecial 206	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   9: astore 6
    //   11: aload 6
    //   13: invokestatic 106	com/grubhub/AppBaseLibrary/android/utils/b:i	()Ljava/util/TimeZone;
    //   16: invokevirtual 98	java/text/SimpleDateFormat:setTimeZone	(Ljava/util/TimeZone;)V
    //   19: aload 6
    //   21: new 44	java/util/Date
    //   24: dup
    //   25: lload_0
    //   26: invokespecial 209	java/util/Date:<init>	(J)V
    //   29: invokevirtual 212	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   32: astore 5
    //   34: aload 5
    //   36: astore 4
    //   38: new 44	java/util/Date
    //   41: dup
    //   42: lload_0
    //   43: lload_2
    //   44: ladd
    //   45: invokespecial 209	java/util/Date:<init>	(J)V
    //   48: astore 7
    //   50: aload 5
    //   52: astore 4
    //   54: new 114	java/lang/StringBuilder
    //   57: dup
    //   58: invokespecial 213	java/lang/StringBuilder:<init>	()V
    //   61: aload 5
    //   63: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   66: ldc -41
    //   68: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: aload 6
    //   73: aload 7
    //   75: invokevirtual 212	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   78: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   81: invokevirtual 137	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   84: astore 5
    //   86: aload 5
    //   88: astore 4
    //   90: aload 5
    //   92: ldc -39
    //   94: ldc -37
    //   96: invokevirtual 223	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   99: ldc -31
    //   101: ldc -29
    //   103: invokevirtual 223	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   106: astore 5
    //   108: aload 5
    //   110: areturn
    //   111: astore 5
    //   113: aconst_null
    //   114: astore 4
    //   116: getstatic 24	com/grubhub/AppBaseLibrary/android/utils/b:a	Ljava/lang/String;
    //   119: aload 5
    //   121: invokevirtual 228	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   124: invokestatic 200	com/grubhub/AppBaseLibrary/android/utils/e/a:b	(Ljava/lang/String;Ljava/lang/String;)I
    //   127: pop
    //   128: aload 4
    //   130: areturn
    //   131: astore 5
    //   133: goto -17 -> 116
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	136	0	paramLong1	long
    //   0	136	2	paramLong2	long
    //   36	93	4	str1	String
    //   32	77	5	str2	String
    //   111	9	5	localException1	Exception
    //   131	1	5	localException2	Exception
    //   9	63	6	localSimpleDateFormat	SimpleDateFormat
    //   48	26	7	localDate	Date
    // Exception table:
    //   from	to	target	type
    //   0	34	111	java/lang/Exception
    //   38	50	131	java/lang/Exception
    //   54	86	131	java/lang/Exception
    //   90	108	131	java/lang/Exception
  }
  
  public static String a(long paramLong, String paramString, boolean paramBoolean)
  {
    if (f.a(paramString)) {
      return null;
    }
    Date localDate = new Date(paramLong);
    paramString = new SimpleDateFormat(paramString, Locale.US);
    if (paramBoolean) {
      paramString.setTimeZone(TimeZone.getTimeZone("UTC"));
    }
    for (;;)
    {
      return paramString.format(localDate);
      paramString.setTimeZone(i());
    }
  }
  
  public static String a(Context paramContext)
  {
    try
    {
      paramContext = URLEncoder.encode(getPackageManagergetPackageInfogetPackageName0versionName, "utf-8");
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      a.b(a, paramContext.getMessage());
      return "0";
    }
    catch (UnsupportedEncodingException paramContext)
    {
      a.b(a, paramContext.getMessage());
    }
    return "0";
  }
  
  public static String a(Uri paramUri)
  {
    Object localObject;
    if (paramUri != null)
    {
      localObject = paramUri.getLastPathSegment();
      paramUri = paramUri.getQueryParameterNames();
      if (paramUri.isEmpty()) {
        break label66;
      }
    }
    label66:
    for (paramUri = (String)paramUri.iterator().next();; paramUri = null)
    {
      if ((localObject != null) && (TextUtils.isDigitsOnly((CharSequence)localObject))) {}
      do
      {
        return (String)localObject;
        if (paramUri == null) {
          break;
        }
        localObject = paramUri;
      } while (TextUtils.isDigitsOnly(paramUri));
      return null;
    }
  }
  
  public static Uri b(String paramString)
  {
    Object localObject = GHSApplication.a();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(((Context)localObject).getString(2131231021)).append("://").append(((Context)localObject).getString(2131231018));
    localObject = ((Context)localObject).getString(2131231020);
    if (f.b((String)localObject)) {
      localStringBuilder.append((String)localObject);
    }
    for (;;)
    {
      localStringBuilder.append(paramString);
      return Uri.parse(localStringBuilder.toString());
      localStringBuilder.append("/");
    }
  }
  
  public static String b()
  {
    try
    {
      Object localObject = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS");
      ((SimpleDateFormat)localObject).setTimeZone(i());
      localObject = ((SimpleDateFormat)localObject).format(new Date());
      return (String)localObject;
    }
    catch (Exception localException)
    {
      a.b(a, localException.getMessage());
    }
    return null;
  }
  
  public static int c()
  {
    try
    {
      SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("Z");
      localSimpleDateFormat.setTimeZone(i());
      int i = Integer.parseInt(localSimpleDateFormat.format(new Date())) / 100;
      return i;
    }
    catch (Exception localException)
    {
      a.b(a, localException.getMessage());
    }
    return 0;
  }
  
  public static Date d()
  {
    Object localObject = new SimpleDateFormat("yyyy-MM-dd");
    ((SimpleDateFormat)localObject).setTimeZone(TimeZone.getTimeZone("UTC"));
    Calendar localCalendar = Calendar.getInstance();
    int k;
    int j;
    if ((g != null) && (f != null) && (e != null))
    {
      k = g.intValue();
      j = f.intValue();
    }
    for (int i = e.intValue();; i = localCalendar.get(5))
    {
      try
      {
        localObject = ((SimpleDateFormat)localObject).parse(k + "-" + j + "-" + i);
        return (Date)localObject;
      }
      catch (ParseException localParseException)
      {
        a.b(a, localParseException.getMessage());
      }
      k = localCalendar.get(1);
      j = localCalendar.get(2) + 1;
    }
    return null;
  }
  
  public static Date e()
  {
    Object localObject = new SimpleDateFormat("HH:mm");
    ((SimpleDateFormat)localObject).setTimeZone(i());
    int j;
    if ((c != null) && (d != null)) {
      j = c.intValue();
    }
    for (int i = d.intValue();; i = Calendar.getInstance().get(12))
    {
      try
      {
        localObject = ((SimpleDateFormat)localObject).parse(j + ":" + i);
        return (Date)localObject;
      }
      catch (ParseException localParseException)
      {
        a.b(a, localParseException.getMessage());
      }
      j = Calendar.getInstance().get(11);
    }
    return null;
  }
  
  public static String f()
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
    localSimpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
    return localSimpleDateFormat.format(new Date());
  }
  
  public static int g()
  {
    if (b != null) {
      return b.intValue();
    }
    return Calendar.getInstance().get(7);
  }
  
  public static int h()
  {
    int j = g() - 1;
    int i = j;
    if (j < 1) {
      i = 7;
    }
    return i;
  }
  
  public static TimeZone i()
  {
    if (h != null) {
      return TimeZone.getTimeZone(h);
    }
    return TimeZone.getDefault();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */