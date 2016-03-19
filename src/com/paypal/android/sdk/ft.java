package com.paypal.android.sdk;

import android.app.ActionBar;
import android.app.Activity;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.text.Html;
import android.text.SpannableString;
import android.text.TextUtils;
import android.util.Log;
import android.widget.TextView;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import org.apache.http.Header;
import org.apache.http.message.BasicHeader;

public class ft
{
  public static String a(File paramFile)
  {
    paramFile = new RandomAccessFile(paramFile, "r");
    byte[] arrayOfByte = new byte[(int)paramFile.length()];
    paramFile.readFully(arrayOfByte);
    paramFile.close();
    return new String(arrayOfByte, "UTF-8");
  }
  
  public static String a(String paramString)
  {
    try
    {
      String str = URLEncoder.encode(paramString, "UTF-8");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException) {}
    return "unable_to_encode:" + paramString;
  }
  
  public static String a(Map paramMap)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    paramMap = paramMap.entrySet().iterator();
    int i = 1;
    if (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      if (i == 0) {
        localStringBuilder.append("&");
      }
      for (;;)
      {
        localStringBuilder.append((String)localEntry.getKey() + "=" + (String)localEntry.getValue());
        break;
        i = 0;
      }
    }
    return localStringBuilder.toString();
  }
  
  public static Header a(String paramString1, List paramList, String paramString2)
  {
    paramString1 = String.format("Trace: [%s] %s, %s", new Object[] { paramString1, "\"%08.8x: Operation = %80s Duration: %8.2f Iterations: %+4d\"", "memorySize * 8 + offset" });
    ArrayList localArrayList = new ArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Header localHeader = (Header)paramList.next();
      localArrayList.add(localHeader.getName() + ": " + localHeader.getValue());
    }
    Collections.sort(localArrayList);
    paramList = TextUtils.join(";", localArrayList.toArray()) + paramString2;
    paramString2 = Mac.getInstance("HmacSHA1");
    paramString2.init(new SecretKeySpec(paramString1.getBytes(), "HmacSHA1"));
    paramString2.update(paramList.getBytes());
    paramString1 = paramString2.doFinal();
    paramList = new StringBuilder();
    int j = paramString1.length;
    int i = 0;
    while (i < j)
    {
      paramList.append(String.format("%02x", new Object[] { Byte.valueOf(paramString1[i]) }));
      i += 1;
    }
    return new BasicHeader("PayPal-Item-Id", paramList.toString());
  }
  
  public static void a(Activity paramActivity)
  {
    if (a()) {
      paramActivity.requestWindowFeature(8);
    }
  }
  
  public static void a(Activity paramActivity, TextView paramTextView, String paramString1, String paramString2, Drawable paramDrawable)
  {
    paramActivity.setTitle(paramString2 + paramString1);
    if (a())
    {
      paramString2 = paramActivity.getActionBar();
      paramString2.setBackgroundDrawable(eb.c);
      paramString2.setTitle(paramString1);
      paramActivity = (TextView)paramActivity.findViewById(Resources.getSystem().getIdentifier("action_bar_title", "id", "android"));
      if (paramActivity != null) {
        paramActivity.setTextColor(-1);
      }
      paramString2.setDisplayHomeAsUpEnabled(false);
      if ((paramDrawable != null) && (Build.VERSION.SDK_INT >= 14))
      {
        paramString2.setIcon(paramDrawable);
        if (paramTextView != null) {
          paramTextView.setVisibility(8);
        }
      }
    }
    while (paramTextView == null) {
      for (;;)
      {
        return;
        paramString2.setDisplayShowHomeEnabled(false);
      }
    }
    paramTextView.setText(paramString1);
  }
  
  public static void a(Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException paramCloseable) {}
  }
  
  public static void a(File paramFile, String paramString)
  {
    try
    {
      localFileOutputStream = new FileOutputStream(paramFile);
      a(paramString);
    }
    finally
    {
      try
      {
        localFileOutputStream.write(paramString.getBytes("UTF-8"));
        a(localFileOutputStream);
        return;
      }
      finally
      {
        FileOutputStream localFileOutputStream;
        paramString = localFileOutputStream;
      }
      paramFile = finally;
      paramString = null;
    }
    throw paramFile;
  }
  
  public static boolean a()
  {
    return Build.VERSION.SDK_INT >= 11;
  }
  
  public static boolean a(CharSequence paramCharSequence)
  {
    return (paramCharSequence == null) || (paramCharSequence.length() == 0);
  }
  
  public static boolean a(String paramString1, String paramString2, String paramString3)
  {
    boolean bool1 = a(paramString2);
    if (bool1) {
      Log.e(paramString1, paramString3 + " is empty.");
    }
    boolean bool2 = d(paramString2);
    if (bool2) {
      Log.e(paramString1, paramString3 + " contains whitespace.");
    }
    return (!bool1) && (!bool2);
  }
  
  public static SpannableString b(String paramString)
  {
    String str = Locale.getDefault().getCountry().toLowerCase(Locale.US);
    if ((b(str)) || (!str.equals("jp"))) {}
    for (int i = 0; i == 0; i = 1) {
      return null;
    }
    str = ek.a(em.ao);
    if ((c(paramString)) && (paramString.equals("ja"))) {}
    for (paramString = "https://cms.paypal.com/jp/cgi-bin/marketingweb?cmd=_render-content&content_ID=ua/Legal_Hub_full&locale.x=ja_JP";; paramString = "https://cms.paypal.com/jp/cgi-bin/marketingweb?cmd=_render-content&content_ID=ua/Legal_Hub_full&locale.x=en_US") {
      return new SpannableString(Html.fromHtml(String.format(str, new Object[] { paramString, "https://www.paypal.jp/jp/contents/regulation/info/overseas-remittance/" })));
    }
  }
  
  public static void b(Activity paramActivity)
  {
    if (Build.VERSION.SDK_INT >= 11) {}
    for (int i = 1; i != 0; i = 0)
    {
      paramActivity.setTheme(16973934);
      return;
    }
    paramActivity.setTheme(16973836);
  }
  
  public static boolean b(CharSequence paramCharSequence)
  {
    boolean bool2 = false;
    int j;
    boolean bool1;
    if (paramCharSequence != null)
    {
      j = paramCharSequence.length();
      if (j != 0) {}
    }
    else
    {
      bool1 = true;
      return bool1;
    }
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        break label52;
      }
      bool1 = bool2;
      if (!Character.isWhitespace(paramCharSequence.charAt(i))) {
        break;
      }
      i += 1;
    }
    label52:
    return true;
  }
  
  public static boolean c(CharSequence paramCharSequence)
  {
    return !b(paramCharSequence);
  }
  
  public static boolean d(CharSequence paramCharSequence)
  {
    if (a(paramCharSequence)) {}
    for (;;)
    {
      return false;
      int j = paramCharSequence.length();
      int i = 0;
      while (i < j)
      {
        if (Character.isWhitespace(paramCharSequence.charAt(i))) {
          return true;
        }
        i += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.ft
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */