package com.facebook;

import com.facebook.internal.ab;
import com.facebook.internal.al;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public class aa
{
  private final HttpURLConnection a;
  private final JSONObject b;
  private final JSONArray c;
  private final j d;
  private final String e;
  private final GraphRequest f;
  
  aa(GraphRequest paramGraphRequest, HttpURLConnection paramHttpURLConnection, j paramj)
  {
    this(paramGraphRequest, paramHttpURLConnection, null, null, null, paramj);
  }
  
  aa(GraphRequest paramGraphRequest, HttpURLConnection paramHttpURLConnection, String paramString, JSONArray paramJSONArray)
  {
    this(paramGraphRequest, paramHttpURLConnection, paramString, null, paramJSONArray, null);
  }
  
  aa(GraphRequest paramGraphRequest, HttpURLConnection paramHttpURLConnection, String paramString, JSONObject paramJSONObject)
  {
    this(paramGraphRequest, paramHttpURLConnection, paramString, paramJSONObject, null, null);
  }
  
  aa(GraphRequest paramGraphRequest, HttpURLConnection paramHttpURLConnection, String paramString, JSONObject paramJSONObject, JSONArray paramJSONArray, j paramj)
  {
    f = paramGraphRequest;
    a = paramHttpURLConnection;
    e = paramString;
    b = paramJSONObject;
    c = paramJSONArray;
    d = paramj;
  }
  
  private static aa a(GraphRequest paramGraphRequest, HttpURLConnection paramHttpURLConnection, Object paramObject1, Object paramObject2)
    throws JSONException
  {
    Object localObject = paramObject1;
    if ((paramObject1 instanceof JSONObject))
    {
      paramObject1 = (JSONObject)paramObject1;
      paramObject2 = j.a((JSONObject)paramObject1, paramObject2, paramHttpURLConnection);
      if (paramObject2 != null)
      {
        if ((((j)paramObject2).b() == 190) && (al.a(paramGraphRequest.f()))) {
          AccessToken.a(null);
        }
        return new aa(paramGraphRequest, paramHttpURLConnection, (j)paramObject2);
      }
      paramObject1 = al.a((JSONObject)paramObject1, "body", "FACEBOOK_NON_JSON_RESULT");
      if ((paramObject1 instanceof JSONObject)) {
        return new aa(paramGraphRequest, paramHttpURLConnection, paramObject1.toString(), (JSONObject)paramObject1);
      }
      if ((paramObject1 instanceof JSONArray)) {
        return new aa(paramGraphRequest, paramHttpURLConnection, paramObject1.toString(), (JSONArray)paramObject1);
      }
      localObject = JSONObject.NULL;
    }
    if (localObject == JSONObject.NULL) {
      return new aa(paramGraphRequest, paramHttpURLConnection, localObject.toString(), (JSONObject)null);
    }
    throw new h("Got unexpected object type in response, class: " + localObject.getClass().getSimpleName());
  }
  
  static List<aa> a(InputStream paramInputStream, HttpURLConnection paramHttpURLConnection, x paramx)
    throws h, JSONException, IOException
  {
    paramInputStream = al.a(paramInputStream);
    ab.a(ad.INCLUDE_RAW_RESPONSES, "Response", "Response (raw)\n  Size: %d\n  Response:\n%s\n", new Object[] { Integer.valueOf(paramInputStream.length()), paramInputStream });
    return a(paramInputStream, paramHttpURLConnection, paramx);
  }
  
  static List<aa> a(String paramString, HttpURLConnection paramHttpURLConnection, x paramx)
    throws h, JSONException, IOException
  {
    paramHttpURLConnection = a(paramHttpURLConnection, paramx, new JSONTokener(paramString).nextValue());
    ab.a(ad.REQUESTS, "Response", "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n", new Object[] { paramx.b(), Integer.valueOf(paramString.length()), paramHttpURLConnection });
    return paramHttpURLConnection;
  }
  
  /* Error */
  static List<aa> a(HttpURLConnection paramHttpURLConnection, x paramx)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 8
    //   3: aconst_null
    //   4: astore 9
    //   6: aconst_null
    //   7: astore 10
    //   9: aconst_null
    //   10: astore 11
    //   12: aconst_null
    //   13: astore_2
    //   14: aload_2
    //   15: astore 4
    //   17: aload 8
    //   19: astore 5
    //   21: aload 9
    //   23: astore 6
    //   25: aload 10
    //   27: astore 7
    //   29: aload 11
    //   31: astore_3
    //   32: aload_0
    //   33: invokevirtual 180	java/net/HttpURLConnection:getResponseCode	()I
    //   36: sipush 400
    //   39: if_icmplt +55 -> 94
    //   42: aload_2
    //   43: astore 4
    //   45: aload 8
    //   47: astore 5
    //   49: aload 9
    //   51: astore 6
    //   53: aload 10
    //   55: astore 7
    //   57: aload 11
    //   59: astore_3
    //   60: aload_0
    //   61: invokevirtual 184	java/net/HttpURLConnection:getErrorStream	()Ljava/io/InputStream;
    //   64: astore_2
    //   65: aload_2
    //   66: astore 4
    //   68: aload_2
    //   69: astore 5
    //   71: aload_2
    //   72: astore 6
    //   74: aload_2
    //   75: astore 7
    //   77: aload_2
    //   78: astore_3
    //   79: aload_2
    //   80: aload_0
    //   81: aload_1
    //   82: invokestatic 186	com/facebook/aa:a	(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/x;)Ljava/util/List;
    //   85: astore 8
    //   87: aload_2
    //   88: invokestatic 189	com/facebook/internal/al:a	(Ljava/io/Closeable;)V
    //   91: aload 8
    //   93: areturn
    //   94: aload_2
    //   95: astore 4
    //   97: aload 8
    //   99: astore 5
    //   101: aload 9
    //   103: astore 6
    //   105: aload 10
    //   107: astore 7
    //   109: aload 11
    //   111: astore_3
    //   112: aload_0
    //   113: invokevirtual 192	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   116: astore_2
    //   117: goto -52 -> 65
    //   120: astore_2
    //   121: aload 4
    //   123: astore_3
    //   124: getstatic 165	com/facebook/ad:REQUESTS	Lcom/facebook/ad;
    //   127: ldc -127
    //   129: ldc -62
    //   131: iconst_1
    //   132: anewarray 4	java/lang/Object
    //   135: dup
    //   136: iconst_0
    //   137: aload_2
    //   138: aastore
    //   139: invokestatic 147	com/facebook/internal/ab:a	(Lcom/facebook/ad;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   142: aload 4
    //   144: astore_3
    //   145: aload_1
    //   146: aload_0
    //   147: aload_2
    //   148: invokestatic 197	com/facebook/aa:a	(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/h;)Ljava/util/List;
    //   151: astore_0
    //   152: aload 4
    //   154: invokestatic 189	com/facebook/internal/al:a	(Ljava/io/Closeable;)V
    //   157: aload_0
    //   158: areturn
    //   159: astore_2
    //   160: aload 5
    //   162: astore_3
    //   163: getstatic 165	com/facebook/ad:REQUESTS	Lcom/facebook/ad;
    //   166: ldc -127
    //   168: ldc -62
    //   170: iconst_1
    //   171: anewarray 4	java/lang/Object
    //   174: dup
    //   175: iconst_0
    //   176: aload_2
    //   177: aastore
    //   178: invokestatic 147	com/facebook/internal/ab:a	(Lcom/facebook/ad;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   181: aload 5
    //   183: astore_3
    //   184: aload_1
    //   185: aload_0
    //   186: new 92	com/facebook/h
    //   189: dup
    //   190: aload_2
    //   191: invokespecial 200	com/facebook/h:<init>	(Ljava/lang/Throwable;)V
    //   194: invokestatic 197	com/facebook/aa:a	(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/h;)Ljava/util/List;
    //   197: astore_0
    //   198: aload 5
    //   200: invokestatic 189	com/facebook/internal/al:a	(Ljava/io/Closeable;)V
    //   203: aload_0
    //   204: areturn
    //   205: astore_2
    //   206: aload 6
    //   208: astore_3
    //   209: getstatic 165	com/facebook/ad:REQUESTS	Lcom/facebook/ad;
    //   212: ldc -127
    //   214: ldc -62
    //   216: iconst_1
    //   217: anewarray 4	java/lang/Object
    //   220: dup
    //   221: iconst_0
    //   222: aload_2
    //   223: aastore
    //   224: invokestatic 147	com/facebook/internal/ab:a	(Lcom/facebook/ad;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   227: aload 6
    //   229: astore_3
    //   230: aload_1
    //   231: aload_0
    //   232: new 92	com/facebook/h
    //   235: dup
    //   236: aload_2
    //   237: invokespecial 200	com/facebook/h:<init>	(Ljava/lang/Throwable;)V
    //   240: invokestatic 197	com/facebook/aa:a	(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/h;)Ljava/util/List;
    //   243: astore_0
    //   244: aload 6
    //   246: invokestatic 189	com/facebook/internal/al:a	(Ljava/io/Closeable;)V
    //   249: aload_0
    //   250: areturn
    //   251: astore_2
    //   252: aload 7
    //   254: astore_3
    //   255: getstatic 165	com/facebook/ad:REQUESTS	Lcom/facebook/ad;
    //   258: ldc -127
    //   260: ldc -62
    //   262: iconst_1
    //   263: anewarray 4	java/lang/Object
    //   266: dup
    //   267: iconst_0
    //   268: aload_2
    //   269: aastore
    //   270: invokestatic 147	com/facebook/internal/ab:a	(Lcom/facebook/ad;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   273: aload 7
    //   275: astore_3
    //   276: aload_1
    //   277: aload_0
    //   278: new 92	com/facebook/h
    //   281: dup
    //   282: aload_2
    //   283: invokespecial 200	com/facebook/h:<init>	(Ljava/lang/Throwable;)V
    //   286: invokestatic 197	com/facebook/aa:a	(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/h;)Ljava/util/List;
    //   289: astore_0
    //   290: aload 7
    //   292: invokestatic 189	com/facebook/internal/al:a	(Ljava/io/Closeable;)V
    //   295: aload_0
    //   296: areturn
    //   297: astore_0
    //   298: aload_3
    //   299: invokestatic 189	com/facebook/internal/al:a	(Ljava/io/Closeable;)V
    //   302: aload_0
    //   303: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	304	0	paramHttpURLConnection	HttpURLConnection
    //   0	304	1	paramx	x
    //   13	104	2	localInputStream1	InputStream
    //   120	28	2	localh	h
    //   159	32	2	localJSONException	JSONException
    //   205	32	2	localIOException	IOException
    //   251	32	2	localSecurityException	SecurityException
    //   31	268	3	localObject1	Object
    //   15	138	4	localInputStream2	InputStream
    //   19	180	5	localObject2	Object
    //   23	222	6	localObject3	Object
    //   27	264	7	localObject4	Object
    //   1	97	8	localList	List
    //   4	98	9	localObject5	Object
    //   7	99	10	localObject6	Object
    //   10	100	11	localObject7	Object
    // Exception table:
    //   from	to	target	type
    //   32	42	120	com/facebook/h
    //   60	65	120	com/facebook/h
    //   79	87	120	com/facebook/h
    //   112	117	120	com/facebook/h
    //   32	42	159	org/json/JSONException
    //   60	65	159	org/json/JSONException
    //   79	87	159	org/json/JSONException
    //   112	117	159	org/json/JSONException
    //   32	42	205	java/io/IOException
    //   60	65	205	java/io/IOException
    //   79	87	205	java/io/IOException
    //   112	117	205	java/io/IOException
    //   32	42	251	java/lang/SecurityException
    //   60	65	251	java/lang/SecurityException
    //   79	87	251	java/lang/SecurityException
    //   112	117	251	java/lang/SecurityException
    //   32	42	297	finally
    //   60	65	297	finally
    //   79	87	297	finally
    //   112	117	297	finally
    //   124	142	297	finally
    //   145	152	297	finally
    //   163	181	297	finally
    //   184	198	297	finally
    //   209	227	297	finally
    //   230	244	297	finally
    //   255	273	297	finally
    //   276	290	297	finally
  }
  
  private static List<aa> a(HttpURLConnection paramHttpURLConnection, List<GraphRequest> paramList, Object paramObject)
    throws h, JSONException
  {
    int j = 0;
    int k = paramList.size();
    ArrayList localArrayList = new ArrayList(k);
    GraphRequest localGraphRequest;
    if (k == 1) {
      localGraphRequest = (GraphRequest)paramList.get(0);
    }
    for (;;)
    {
      try
      {
        JSONObject localJSONObject = new JSONObject();
        localJSONObject.put("body", paramObject);
        if (paramHttpURLConnection == null) {
          continue;
        }
        i = paramHttpURLConnection.getResponseCode();
        localJSONObject.put("code", i);
        localJSONArray = new JSONArray();
        localJSONArray.put(localJSONObject);
      }
      catch (JSONException localJSONException1)
      {
        JSONArray localJSONArray;
        localArrayList.add(new aa(localGraphRequest, paramHttpURLConnection, new j(paramHttpURLConnection, localJSONException1)));
        Object localObject1 = paramObject;
        continue;
      }
      catch (IOException localIOException)
      {
        localArrayList.add(new aa(localGraphRequest, paramHttpURLConnection, new j(paramHttpURLConnection, localIOException)));
      }
      if (((localJSONArray instanceof JSONArray)) && (((JSONArray)localJSONArray).length() == k)) {
        break;
      }
      throw new h("Unexpected number of results");
      i = 200;
      continue;
      localObject2 = paramObject;
    }
    Object localObject2 = (JSONArray)localObject2;
    int i = j;
    for (;;)
    {
      if (i < ((JSONArray)localObject2).length())
      {
        localGraphRequest = (GraphRequest)paramList.get(i);
        try
        {
          localArrayList.add(a(localGraphRequest, paramHttpURLConnection, ((JSONArray)localObject2).get(i), paramObject));
          i += 1;
        }
        catch (JSONException localJSONException2)
        {
          for (;;)
          {
            localArrayList.add(new aa(localGraphRequest, paramHttpURLConnection, new j(paramHttpURLConnection, localJSONException2)));
          }
        }
        catch (h localh)
        {
          for (;;)
          {
            localArrayList.add(new aa(localGraphRequest, paramHttpURLConnection, new j(paramHttpURLConnection, localh)));
          }
        }
      }
    }
    return localArrayList;
  }
  
  static List<aa> a(List<GraphRequest> paramList, HttpURLConnection paramHttpURLConnection, h paramh)
  {
    int j = paramList.size();
    ArrayList localArrayList = new ArrayList(j);
    int i = 0;
    while (i < j)
    {
      localArrayList.add(new aa((GraphRequest)paramList.get(i), paramHttpURLConnection, new j(paramHttpURLConnection, paramh)));
      i += 1;
    }
    return localArrayList;
  }
  
  public final j a()
  {
    return d;
  }
  
  public final JSONObject b()
  {
    return b;
  }
  
  public String toString()
  {
    for (;;)
    {
      try
      {
        localObject = Locale.US;
        if (a == null) {
          continue;
        }
        i = a.getResponseCode();
        localObject = String.format((Locale)localObject, "%d", new Object[] { Integer.valueOf(i) });
      }
      catch (IOException localIOException)
      {
        Object localObject;
        int i;
        String str = "unknown";
        continue;
      }
      return "{Response: " + " responseCode: " + (String)localObject + ", graphObject: " + b + ", error: " + d + "}";
      i = 200;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */