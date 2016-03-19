package com.facebook;

import android.graphics.Bitmap;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.facebook.internal.ak;
import com.facebook.internal.al;
import com.facebook.internal.ap;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class GraphRequest
{
  public static final String a = GraphRequest.class.getSimpleName();
  private static String b;
  private static Pattern c = Pattern.compile("^/?v\\d+\\.\\d+/(.*)");
  private static volatile String q;
  private AccessToken d;
  private ab e;
  private String f;
  private JSONObject g;
  private String h;
  private String i;
  private boolean j = true;
  private Bundle k;
  private r l;
  private String m;
  private Object n;
  private String o;
  private boolean p = false;
  
  public GraphRequest()
  {
    this(null, null, null, null, null);
  }
  
  public GraphRequest(AccessToken paramAccessToken, String paramString, Bundle paramBundle, ab paramab)
  {
    this(paramAccessToken, paramString, paramBundle, paramab, null);
  }
  
  public GraphRequest(AccessToken paramAccessToken, String paramString, Bundle paramBundle, ab paramab, r paramr)
  {
    this(paramAccessToken, paramString, paramBundle, paramab, paramr, null);
  }
  
  public GraphRequest(AccessToken paramAccessToken, String paramString1, Bundle paramBundle, ab paramab, r paramr, String paramString2)
  {
    d = paramAccessToken;
    f = paramString1;
    o = paramString2;
    a(paramr);
    a(paramab);
    if (paramBundle != null) {}
    for (k = new Bundle(paramBundle);; k = new Bundle())
    {
      if (o == null) {
        o = ak.d();
      }
      return;
    }
  }
  
  public static GraphRequest a(AccessToken paramAccessToken, String paramString, r paramr)
  {
    return new GraphRequest(paramAccessToken, paramString, null, null, paramr);
  }
  
  public static GraphRequest a(AccessToken paramAccessToken, String paramString, JSONObject paramJSONObject, r paramr)
  {
    paramAccessToken = new GraphRequest(paramAccessToken, paramString, null, ab.POST, paramr);
    paramAccessToken.a(paramJSONObject);
    return paramAccessToken;
  }
  
  public static aa a(GraphRequest paramGraphRequest)
  {
    paramGraphRequest = a(new GraphRequest[] { paramGraphRequest });
    if ((paramGraphRequest == null) || (paramGraphRequest.size() != 1)) {
      throw new h("invalid state: expected a single response");
    }
    return (aa)paramGraphRequest.get(0);
  }
  
  public static HttpURLConnection a(x paramx)
  {
    d(paramx);
    for (;;)
    {
      try
      {
        if (paramx.size() == 1) {
          localObject = new URL(paramx.a(0).l());
        }
      }
      catch (MalformedURLException paramx)
      {
        Object localObject;
        throw new h("could not construct URL for request", paramx);
      }
      try
      {
        localObject = a((URL)localObject);
        a(paramx, (HttpURLConnection)localObject);
        return (HttpURLConnection)localObject;
      }
      catch (IOException paramx)
      {
        throw new h("could not construct request body", paramx);
      }
      catch (JSONException paramx)
      {
        throw new h("could not construct request body", paramx);
      }
      localObject = new URL(ak.b());
    }
  }
  
  private static HttpURLConnection a(URL paramURL)
    throws IOException
  {
    paramURL = (HttpURLConnection)paramURL.openConnection();
    paramURL.setRequestProperty("User-Agent", p());
    paramURL.setRequestProperty("Accept-Language", Locale.getDefault().toString());
    paramURL.setChunkedStreamingMode(0);
    return paramURL;
  }
  
  public static List<aa> a(HttpURLConnection paramHttpURLConnection, x paramx)
  {
    List localList = aa.a(paramHttpURLConnection, paramx);
    al.a(paramHttpURLConnection);
    int i1 = paramx.size();
    if (i1 != localList.size()) {
      throw new h(String.format(Locale.US, "Received %d responses while expecting %d", new Object[] { Integer.valueOf(localList.size()), Integer.valueOf(i1) }));
    }
    a(paramx, localList);
    c.a().d();
    return localList;
  }
  
  public static List<aa> a(Collection<GraphRequest> paramCollection)
  {
    return b(new x(paramCollection));
  }
  
  public static List<aa> a(GraphRequest... paramVarArgs)
  {
    ap.a(paramVarArgs, "requests");
    return a(Arrays.asList(paramVarArgs));
  }
  
  private static void a(Bundle paramBundle, v paramv, GraphRequest paramGraphRequest)
    throws IOException
  {
    Iterator localIterator = paramBundle.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject = paramBundle.get(str);
      if (e(localObject)) {
        paramv.a(str, localObject, paramGraphRequest);
      }
    }
  }
  
  private static void a(v paramv, Collection<GraphRequest> paramCollection, Map<String, q> paramMap)
    throws JSONException, IOException
  {
    JSONArray localJSONArray = new JSONArray();
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext()) {
      ((GraphRequest)localIterator.next()).a(localJSONArray, paramMap);
    }
    paramv.a("batch", localJSONArray, paramCollection);
  }
  
  private static void a(x paramx, com.facebook.internal.ab paramab, int paramInt, URL paramURL, OutputStream paramOutputStream, boolean paramBoolean)
    throws IOException, JSONException
  {
    paramOutputStream = new v(paramOutputStream, paramab, paramBoolean);
    if (paramInt == 1)
    {
      paramx = paramx.a(0);
      HashMap localHashMap = new HashMap();
      Iterator localIterator = k.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        Object localObject = k.get(str);
        if (d(localObject)) {
          localHashMap.put(str, new q(paramx, localObject));
        }
      }
      if (paramab != null) {
        paramab.c("  Parameters:\n");
      }
      a(k, paramOutputStream, paramx);
      if (paramab != null) {
        paramab.c("  Attachments:\n");
      }
      a(localHashMap, paramOutputStream);
      if (g != null) {
        a(g, paramURL.getPath(), paramOutputStream);
      }
      return;
    }
    paramURL = g(paramx);
    if (al.a(paramURL)) {
      throw new h("App ID was not specified at the request or Settings.");
    }
    paramOutputStream.a("batch_app_id", paramURL);
    paramURL = new HashMap();
    a(paramOutputStream, paramx, paramURL);
    if (paramab != null) {
      paramab.c("  Attachments:\n");
    }
    a(paramURL, paramOutputStream);
  }
  
  /* Error */
  static final void a(x paramx, HttpURLConnection paramHttpURLConnection)
    throws IOException, JSONException
  {
    // Byte code:
    //   0: new 330	com/facebook/internal/ab
    //   3: dup
    //   4: getstatic 367	com/facebook/ad:REQUESTS	Lcom/facebook/ad;
    //   7: ldc_w 369
    //   10: invokespecial 372	com/facebook/internal/ab:<init>	(Lcom/facebook/ad;Ljava/lang/String;)V
    //   13: astore 7
    //   15: aload_0
    //   16: invokevirtual 143	com/facebook/x:size	()I
    //   19: istore_3
    //   20: aload_0
    //   21: invokestatic 375	com/facebook/GraphRequest:f	(Lcom/facebook/x;)Z
    //   24: istore 4
    //   26: iload_3
    //   27: iconst_1
    //   28: if_icmpne +140 -> 168
    //   31: aload_0
    //   32: iconst_0
    //   33: invokevirtual 148	com/facebook/x:a	(I)Lcom/facebook/GraphRequest;
    //   36: getfield 377	com/facebook/GraphRequest:e	Lcom/facebook/ab;
    //   39: astore 5
    //   41: aload_1
    //   42: aload 5
    //   44: invokevirtual 380	com/facebook/ab:name	()Ljava/lang/String;
    //   47: invokevirtual 383	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   50: aload_1
    //   51: iload 4
    //   53: invokestatic 386	com/facebook/GraphRequest:a	(Ljava/net/HttpURLConnection;Z)V
    //   56: aload_1
    //   57: invokevirtual 390	java/net/HttpURLConnection:getURL	()Ljava/net/URL;
    //   60: astore 8
    //   62: aload 7
    //   64: ldc_w 392
    //   67: invokevirtual 332	com/facebook/internal/ab:c	(Ljava/lang/String;)V
    //   70: aload 7
    //   72: ldc_w 394
    //   75: aload_0
    //   76: invokevirtual 395	com/facebook/x:b	()Ljava/lang/String;
    //   79: invokevirtual 398	com/facebook/internal/ab:a	(Ljava/lang/String;Ljava/lang/Object;)V
    //   82: aload 7
    //   84: ldc_w 400
    //   87: aload 8
    //   89: invokevirtual 398	com/facebook/internal/ab:a	(Ljava/lang/String;Ljava/lang/Object;)V
    //   92: aload 7
    //   94: ldc_w 402
    //   97: aload_1
    //   98: invokevirtual 405	java/net/HttpURLConnection:getRequestMethod	()Ljava/lang/String;
    //   101: invokevirtual 398	com/facebook/internal/ab:a	(Ljava/lang/String;Ljava/lang/Object;)V
    //   104: aload 7
    //   106: ldc -82
    //   108: aload_1
    //   109: ldc -82
    //   111: invokevirtual 409	java/net/HttpURLConnection:getRequestProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   114: invokevirtual 398	com/facebook/internal/ab:a	(Ljava/lang/String;Ljava/lang/Object;)V
    //   117: aload 7
    //   119: ldc_w 411
    //   122: aload_1
    //   123: ldc_w 411
    //   126: invokevirtual 409	java/net/HttpURLConnection:getRequestProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   129: invokevirtual 398	com/facebook/internal/ab:a	(Ljava/lang/String;Ljava/lang/Object;)V
    //   132: aload_1
    //   133: aload_0
    //   134: invokevirtual 413	com/facebook/x:a	()I
    //   137: invokevirtual 416	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   140: aload_1
    //   141: aload_0
    //   142: invokevirtual 413	com/facebook/x:a	()I
    //   145: invokevirtual 419	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   148: aload 5
    //   150: getstatic 104	com/facebook/ab:POST	Lcom/facebook/ab;
    //   153: if_acmpne +23 -> 176
    //   156: iconst_1
    //   157: istore_2
    //   158: iload_2
    //   159: ifne +22 -> 181
    //   162: aload 7
    //   164: invokevirtual 421	com/facebook/internal/ab:a	()V
    //   167: return
    //   168: getstatic 104	com/facebook/ab:POST	Lcom/facebook/ab;
    //   171: astore 5
    //   173: goto -132 -> 41
    //   176: iconst_0
    //   177: istore_2
    //   178: goto -20 -> 158
    //   181: aload_1
    //   182: iconst_1
    //   183: invokevirtual 425	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   186: new 427	java/io/BufferedOutputStream
    //   189: dup
    //   190: aload_1
    //   191: invokevirtual 431	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   194: invokespecial 434	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   197: astore 6
    //   199: aload 6
    //   201: astore_1
    //   202: iload 4
    //   204: ifeq +17 -> 221
    //   207: aload 6
    //   209: astore 5
    //   211: new 436	java/util/zip/GZIPOutputStream
    //   214: dup
    //   215: aload 6
    //   217: invokespecial 437	java/util/zip/GZIPOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   220: astore_1
    //   221: aload_1
    //   222: astore 5
    //   224: aload_0
    //   225: invokestatic 439	com/facebook/GraphRequest:e	(Lcom/facebook/x;)Z
    //   228: ifeq +116 -> 344
    //   231: aload_1
    //   232: astore 5
    //   234: new 441	com/facebook/ag
    //   237: dup
    //   238: aload_0
    //   239: invokevirtual 444	com/facebook/x:c	()Landroid/os/Handler;
    //   242: invokespecial 447	com/facebook/ag:<init>	(Landroid/os/Handler;)V
    //   245: astore 6
    //   247: aload_1
    //   248: astore 5
    //   250: aload_0
    //   251: aconst_null
    //   252: iload_3
    //   253: aload 8
    //   255: aload 6
    //   257: iload 4
    //   259: invokestatic 449	com/facebook/GraphRequest:a	(Lcom/facebook/x;Lcom/facebook/internal/ab;ILjava/net/URL;Ljava/io/OutputStream;Z)V
    //   262: aload_1
    //   263: astore 5
    //   265: aload 6
    //   267: invokevirtual 450	com/facebook/ag:a	()I
    //   270: istore_2
    //   271: aload_1
    //   272: astore 5
    //   274: new 452	com/facebook/ah
    //   277: dup
    //   278: aload_1
    //   279: aload_0
    //   280: aload 6
    //   282: invokevirtual 455	com/facebook/ag:b	()Ljava/util/Map;
    //   285: iload_2
    //   286: i2l
    //   287: invokespecial 458	com/facebook/ah:<init>	(Ljava/io/OutputStream;Lcom/facebook/x;Ljava/util/Map;J)V
    //   290: astore_1
    //   291: aload_0
    //   292: aload 7
    //   294: iload_3
    //   295: aload 8
    //   297: aload_1
    //   298: iload 4
    //   300: invokestatic 449	com/facebook/GraphRequest:a	(Lcom/facebook/x;Lcom/facebook/internal/ab;ILjava/net/URL;Ljava/io/OutputStream;Z)V
    //   303: aload_1
    //   304: ifnull +7 -> 311
    //   307: aload_1
    //   308: invokevirtual 463	java/io/OutputStream:close	()V
    //   311: aload 7
    //   313: invokevirtual 421	com/facebook/internal/ab:a	()V
    //   316: return
    //   317: astore_0
    //   318: aconst_null
    //   319: astore 5
    //   321: aload 5
    //   323: ifnull +8 -> 331
    //   326: aload 5
    //   328: invokevirtual 463	java/io/OutputStream:close	()V
    //   331: aload_0
    //   332: athrow
    //   333: astore_0
    //   334: goto -13 -> 321
    //   337: astore_0
    //   338: aload_1
    //   339: astore 5
    //   341: goto -20 -> 321
    //   344: goto -53 -> 291
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	347	0	paramx	x
    //   0	347	1	paramHttpURLConnection	HttpURLConnection
    //   157	129	2	i1	int
    //   19	276	3	i2	int
    //   24	275	4	bool	boolean
    //   39	301	5	localObject1	Object
    //   197	84	6	localObject2	Object
    //   13	299	7	localab	com.facebook.internal.ab
    //   60	236	8	localURL	URL
    // Exception table:
    //   from	to	target	type
    //   186	199	317	finally
    //   211	221	333	finally
    //   224	231	333	finally
    //   234	247	333	finally
    //   250	262	333	finally
    //   265	271	333	finally
    //   274	291	333	finally
    //   291	303	337	finally
  }
  
  static void a(final x paramx, List<aa> paramList)
  {
    int i2 = paramx.size();
    ArrayList localArrayList = new ArrayList();
    int i1 = 0;
    while (i1 < i2)
    {
      GraphRequest localGraphRequest = paramx.a(i1);
      if (l != null) {
        localArrayList.add(new Pair(l, paramList.get(i1)));
      }
      i1 += 1;
    }
    if (localArrayList.size() > 0)
    {
      paramList = new Runnable()
      {
        public void run()
        {
          Iterator localIterator = iterator();
          while (localIterator.hasNext())
          {
            Pair localPair = (Pair)localIterator.next();
            ((r)first).a((aa)second);
          }
          localIterator = paramx.e().iterator();
          while (localIterator.hasNext()) {
            ((y)localIterator.next()).a(paramx);
          }
        }
      };
      paramx = paramx.c();
      if (paramx == null) {
        paramList.run();
      }
    }
    else
    {
      return;
    }
    paramx.post(paramList);
  }
  
  private static void a(String paramString, Object paramObject, t paramt, boolean paramBoolean)
    throws IOException
  {
    Object localObject = paramObject.getClass();
    if (JSONObject.class.isAssignableFrom((Class)localObject))
    {
      paramObject = (JSONObject)paramObject;
      if (paramBoolean)
      {
        localObject = ((JSONObject)paramObject).keys();
        while (((Iterator)localObject).hasNext())
        {
          String str = (String)((Iterator)localObject).next();
          a(String.format("%s[%s]", new Object[] { paramString, str }), ((JSONObject)paramObject).opt(str), paramt, paramBoolean);
        }
      }
      if (((JSONObject)paramObject).has("id")) {
        a(paramString, ((JSONObject)paramObject).optString("id"), paramt, paramBoolean);
      }
    }
    do
    {
      for (;;)
      {
        return;
        if (((JSONObject)paramObject).has("url"))
        {
          a(paramString, ((JSONObject)paramObject).optString("url"), paramt, paramBoolean);
          return;
        }
        if (((JSONObject)paramObject).has("fbsdk:create_object"))
        {
          a(paramString, ((JSONObject)paramObject).toString(), paramt, paramBoolean);
          return;
          if (!JSONArray.class.isAssignableFrom((Class)localObject)) {
            break;
          }
          paramObject = (JSONArray)paramObject;
          int i2 = ((JSONArray)paramObject).length();
          int i1 = 0;
          while (i1 < i2)
          {
            a(String.format(Locale.ROOT, "%s[%d]", new Object[] { paramString, Integer.valueOf(i1) }), ((JSONArray)paramObject).opt(i1), paramt, paramBoolean);
            i1 += 1;
          }
        }
      }
      if ((String.class.isAssignableFrom((Class)localObject)) || (Number.class.isAssignableFrom((Class)localObject)) || (Boolean.class.isAssignableFrom((Class)localObject)))
      {
        paramt.a(paramString, paramObject.toString());
        return;
      }
    } while (!Date.class.isAssignableFrom((Class)localObject));
    paramObject = (Date)paramObject;
    paramt.a(paramString, new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).format((Date)paramObject));
  }
  
  private static void a(HttpURLConnection paramHttpURLConnection, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramHttpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
      paramHttpURLConnection.setRequestProperty("Content-Encoding", "gzip");
      return;
    }
    paramHttpURLConnection.setRequestProperty("Content-Type", o());
  }
  
  private static void a(Map<String, q> paramMap, v paramv)
    throws IOException
  {
    Iterator localIterator = paramMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      q localq = (q)paramMap.get(str);
      if (d(localq.b())) {
        paramv.a(str, localq.b(), localq.a());
      }
    }
  }
  
  private void a(JSONArray paramJSONArray, final Map<String, q> paramMap)
    throws JSONException, IOException
  {
    JSONObject localJSONObject = new JSONObject();
    if (h != null)
    {
      localJSONObject.put("name", h);
      localJSONObject.put("omit_response_on_success", j);
    }
    if (i != null) {
      localJSONObject.put("depends_on", i);
    }
    String str1 = k();
    localJSONObject.put("relative_url", str1);
    localJSONObject.put("method", e);
    if (d != null) {
      com.facebook.internal.ab.a(d.b());
    }
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = k.keySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (String)localIterator.next();
      localObject = k.get((String)localObject);
      if (d(localObject))
      {
        String str2 = String.format(Locale.ROOT, "%s%d", new Object[] { "file", Integer.valueOf(paramMap.size()) });
        localArrayList.add(str2);
        paramMap.put(str2, new q(this, localObject));
      }
    }
    if (!localArrayList.isEmpty()) {
      localJSONObject.put("attached_files", TextUtils.join(",", localArrayList));
    }
    if (g != null)
    {
      paramMap = new ArrayList();
      a(g, str1, new t()
      {
        public void a(String paramAnonymousString1, String paramAnonymousString2)
          throws IOException
        {
          paramMap.add(String.format(Locale.US, "%s=%s", new Object[] { paramAnonymousString1, URLEncoder.encode(paramAnonymousString2, "UTF-8") }));
        }
      });
      localJSONObject.put("body", TextUtils.join("&", paramMap));
    }
    paramJSONArray.put(localJSONObject);
  }
  
  private static void a(JSONObject paramJSONObject, String paramString, t paramt)
    throws IOException
  {
    int i1;
    if (c(paramString))
    {
      i1 = paramString.indexOf(":");
      int i2 = paramString.indexOf("?");
      if ((i1 > 3) && ((i2 == -1) || (i1 < i2))) {
        i1 = 1;
      }
    }
    for (;;)
    {
      paramString = paramJSONObject.keys();
      label48:
      if (paramString.hasNext())
      {
        String str = (String)paramString.next();
        Object localObject = paramJSONObject.opt(str);
        if ((i1 != 0) && (str.equalsIgnoreCase("image"))) {}
        for (boolean bool = true;; bool = false)
        {
          a(str, localObject, paramt, bool);
          break label48;
          i1 = 0;
          break;
        }
      }
      return;
      i1 = 0;
    }
  }
  
  public static w b(Collection<GraphRequest> paramCollection)
  {
    return c(new x(paramCollection));
  }
  
  public static w b(GraphRequest... paramVarArgs)
  {
    ap.a(paramVarArgs, "requests");
    return b(Arrays.asList(paramVarArgs));
  }
  
  private String b(String paramString)
  {
    Uri.Builder localBuilder = new Uri.Builder().encodedPath(paramString);
    Iterator localIterator = k.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject = k.get(str);
      paramString = (String)localObject;
      if (localObject == null) {
        paramString = "";
      }
      if (e(paramString)) {
        localBuilder.appendQueryParameter(str, f(paramString).toString());
      } else if (e == ab.GET) {
        throw new IllegalArgumentException(String.format(Locale.US, "Unsupported parameter type for GET request: %s", new Object[] { paramString.getClass().getSimpleName() }));
      }
    }
    return localBuilder.toString();
  }
  
  public static List<aa> b(x paramx)
  {
    ap.c(paramx, "requests");
    try
    {
      HttpURLConnection localHttpURLConnection = a(paramx);
      return a(localHttpURLConnection, paramx);
    }
    catch (Exception localException)
    {
      List localList = aa.a(paramx.d(), null, new h(localException));
      a(paramx, localList);
      return localList;
    }
  }
  
  static final boolean b(GraphRequest paramGraphRequest)
  {
    String str = paramGraphRequest.d();
    if (al.a(str)) {
      return true;
    }
    paramGraphRequest = str;
    if (str.startsWith("v")) {
      paramGraphRequest = str.substring(1);
    }
    paramGraphRequest = paramGraphRequest.split("\\.");
    if (((paramGraphRequest.length >= 2) && (Integer.parseInt(paramGraphRequest[0]) > 2)) || ((Integer.parseInt(paramGraphRequest[0]) >= 2) && (Integer.parseInt(paramGraphRequest[1]) >= 4))) {}
    for (boolean bool = true;; bool = false) {
      return bool;
    }
  }
  
  public static w c(x paramx)
  {
    ap.c(paramx, "requests");
    paramx = new w(paramx);
    paramx.executeOnExecutor(m.d(), null);
    return paramx;
  }
  
  private static boolean c(String paramString)
  {
    Matcher localMatcher = c.matcher(paramString);
    if (localMatcher.matches()) {
      paramString = localMatcher.group(1);
    }
    return (paramString.startsWith("me/")) || (paramString.startsWith("/me/"));
  }
  
  static final void d(x paramx)
  {
    paramx = paramx.iterator();
    while (paramx.hasNext())
    {
      GraphRequest localGraphRequest = (GraphRequest)paramx.next();
      if ((ab.GET.equals(localGraphRequest.c())) && (b(localGraphRequest)))
      {
        Bundle localBundle = localGraphRequest.e();
        if ((!localBundle.containsKey("fields")) || (al.a(localBundle.getString("fields")))) {
          com.facebook.internal.ab.a(ad.DEVELOPER_ERRORS, 5, "Request", "starting with Graph API v2.4, GET requests for /%s should contain an explicit \"fields\" parameter.", new Object[] { localGraphRequest.b() });
        }
      }
    }
  }
  
  private static boolean d(Object paramObject)
  {
    return ((paramObject instanceof Bitmap)) || ((paramObject instanceof byte[])) || ((paramObject instanceof Uri)) || ((paramObject instanceof ParcelFileDescriptor)) || ((paramObject instanceof GraphRequest.ParcelableResourceWithMimeType));
  }
  
  private static boolean e(x paramx)
  {
    Iterator localIterator = paramx.e().iterator();
    while (localIterator.hasNext()) {
      if (((y)localIterator.next() instanceof z)) {
        return true;
      }
    }
    paramx = paramx.iterator();
    while (paramx.hasNext()) {
      if ((((GraphRequest)paramx.next()).g() instanceof u)) {
        return true;
      }
    }
    return false;
  }
  
  private static boolean e(Object paramObject)
  {
    return ((paramObject instanceof String)) || ((paramObject instanceof Boolean)) || ((paramObject instanceof Number)) || ((paramObject instanceof Date));
  }
  
  private static String f(Object paramObject)
  {
    if ((paramObject instanceof String)) {
      return (String)paramObject;
    }
    if (((paramObject instanceof Boolean)) || ((paramObject instanceof Number))) {
      return paramObject.toString();
    }
    if ((paramObject instanceof Date)) {
      return new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).format(paramObject);
    }
    throw new IllegalArgumentException("Unsupported parameter type.");
  }
  
  private static boolean f(x paramx)
  {
    GraphRequest localGraphRequest;
    String str;
    do
    {
      paramx = paramx.iterator();
      Iterator localIterator;
      while (!localIterator.hasNext())
      {
        if (!paramx.hasNext()) {
          break;
        }
        localGraphRequest = (GraphRequest)paramx.next();
        localIterator = k.keySet().iterator();
      }
      str = (String)localIterator.next();
    } while (!d(k.get(str)));
    return false;
    return true;
  }
  
  private static String g(x paramx)
  {
    if (!al.a(paramx.f())) {
      return paramx.f();
    }
    paramx = paramx.iterator();
    while (paramx.hasNext())
    {
      Object localObject = nextd;
      if (localObject != null)
      {
        localObject = ((AccessToken)localObject).h();
        if (localObject != null) {
          return (String)localObject;
        }
      }
    }
    if (!al.a(b)) {
      return b;
    }
    return m.i();
  }
  
  private void m()
  {
    String str1;
    if (d != null) {
      if (!k.containsKey("access_token"))
      {
        str1 = d.b();
        com.facebook.internal.ab.a(str1);
        k.putString("access_token", str1);
      }
    }
    do
    {
      for (;;)
      {
        k.putString("sdk", "android");
        k.putString("format", "json");
        if (!m.a(ad.GRAPH_API_DEBUG_INFO)) {
          break;
        }
        k.putString("debug", "info");
        return;
        if ((!p) && (!k.containsKey("access_token")))
        {
          str1 = m.i();
          String str2 = m.k();
          if ((!al.a(str1)) && (!al.a(str2)))
          {
            str1 = str1 + "|" + str2;
            k.putString("access_token", str1);
          }
          else
          {
            Log.d(a, "Warning: Request without access token missing application ID or client token.");
          }
        }
      }
    } while (!m.a(ad.GRAPH_API_DEBUG_WARNING));
    k.putString("debug", "warning");
  }
  
  private String n()
  {
    if (c.matcher(f).matches()) {
      return f;
    }
    return String.format("%s/%s", new Object[] { o, f });
  }
  
  private static String o()
  {
    return String.format("multipart/form-data; boundary=%s", new Object[] { "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f" });
  }
  
  private static String p()
  {
    if (q == null)
    {
      q = String.format("%s.%s", new Object[] { "FBAndroidSDK", "4.7.0" });
      String str = com.facebook.internal.z.a();
      if (!al.a(str)) {
        q = String.format(Locale.ROOT, "%s/%s", new Object[] { q, str });
      }
    }
    return q;
  }
  
  public final JSONObject a()
  {
    return g;
  }
  
  public final void a(Bundle paramBundle)
  {
    k = paramBundle;
  }
  
  public final void a(ab paramab)
  {
    if ((m != null) && (paramab != ab.GET)) {
      throw new h("Can't change HTTP method on request with overridden URL.");
    }
    if (paramab != null) {}
    for (;;)
    {
      e = paramab;
      return;
      paramab = ab.GET;
    }
  }
  
  public final void a(final r paramr)
  {
    if ((m.a(ad.GRAPH_API_DEBUG_INFO)) || (m.a(ad.GRAPH_API_DEBUG_WARNING)))
    {
      l = new r()
      {
        public void a(aa paramAnonymousaa)
        {
          Object localObject1 = paramAnonymousaa.b();
          JSONArray localJSONArray;
          label28:
          int i;
          label35:
          label65:
          Object localObject2;
          if (localObject1 != null)
          {
            localObject1 = ((JSONObject)localObject1).optJSONObject("__debug__");
            if (localObject1 == null) {
              break label181;
            }
            localJSONArray = ((JSONObject)localObject1).optJSONArray("messages");
            if (localJSONArray == null) {
              break label204;
            }
            i = 0;
            if (i >= localJSONArray.length()) {
              break label204;
            }
            localObject3 = localJSONArray.optJSONObject(i);
            if (localObject3 == null) {
              break label187;
            }
            localObject1 = ((JSONObject)localObject3).optString("message");
            if (localObject3 == null) {
              break label192;
            }
            localObject2 = ((JSONObject)localObject3).optString("type");
            label79:
            if (localObject3 == null) {
              break label198;
            }
          }
          label181:
          label187:
          label192:
          label198:
          for (Object localObject3 = ((JSONObject)localObject3).optString("link");; localObject3 = null)
          {
            if ((localObject1 != null) && (localObject2 != null))
            {
              ad localad = ad.GRAPH_API_DEBUG_INFO;
              if (((String)localObject2).equals("warning")) {
                localad = ad.GRAPH_API_DEBUG_WARNING;
              }
              localObject2 = localObject1;
              if (!al.a((String)localObject3)) {
                localObject2 = (String)localObject1 + " Link: " + (String)localObject3;
              }
              com.facebook.internal.ab.a(localad, GraphRequest.a, (String)localObject2);
            }
            i += 1;
            break label35;
            localObject1 = null;
            break;
            localJSONArray = null;
            break label28;
            localObject1 = null;
            break label65;
            localObject2 = null;
            break label79;
          }
          label204:
          if (paramr != null) {
            paramr.a(paramAnonymousaa);
          }
        }
      };
      return;
    }
    l = paramr;
  }
  
  public final void a(Object paramObject)
  {
    n = paramObject;
  }
  
  public final void a(String paramString)
  {
    o = paramString;
  }
  
  public final void a(JSONObject paramJSONObject)
  {
    g = paramJSONObject;
  }
  
  public final void a(boolean paramBoolean)
  {
    p = paramBoolean;
  }
  
  public final String b()
  {
    return f;
  }
  
  public final ab c()
  {
    return e;
  }
  
  public final String d()
  {
    return o;
  }
  
  public final Bundle e()
  {
    return k;
  }
  
  public final AccessToken f()
  {
    return d;
  }
  
  public final r g()
  {
    return l;
  }
  
  public final Object h()
  {
    return n;
  }
  
  public final aa i()
  {
    return a(this);
  }
  
  public final w j()
  {
    return b(new GraphRequest[] { this });
  }
  
  final String k()
  {
    if (m != null) {
      throw new h("Can't override URL for a batch request");
    }
    String str = n();
    m();
    return b(str);
  }
  
  final String l()
  {
    if (m != null) {
      return m.toString();
    }
    if ((c() == ab.POST) && (f != null) && (f.endsWith("/videos"))) {}
    for (String str = ak.c();; str = ak.b())
    {
      str = String.format("%s/%s", new Object[] { str, n() });
      m();
      return b(str);
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder().append("{Request: ").append(" accessToken: ");
    if (d == null) {}
    for (Object localObject = "null";; localObject = d) {
      return localObject + ", graphPath: " + f + ", graphObject: " + g + ", httpMethod: " + e + ", parameters: " + k + "}";
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.GraphRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */