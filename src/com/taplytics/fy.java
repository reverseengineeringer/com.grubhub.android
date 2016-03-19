package com.taplytics;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.util.Log;
import android.util.Pair;
import com.taplytics.sdk.CodeBlockListener;
import com.taplytics.sdk.TaplyticsCodeExperimentListener;
import com.taplytics.sdk.TaplyticsDelayLoadListener;
import com.taplytics.sdk.TaplyticsExperimentsLoadedListener;
import com.taplytics.sdk.TaplyticsPushTokenListener;
import com.taplytics.sdk.TaplyticsRunningExperimentsListener;
import com.taplytics.sdk.a;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@TargetApi(11)
public class fy
  implements fd
{
  public static final ep a = new ep("1.7.8");
  private static final fy b = new fy();
  private boolean A = false;
  private boolean B = true;
  private c C = new c();
  private eo D = null;
  private Context E = null;
  private Activity F = null;
  private String G = null;
  private Executor H = new gl(null);
  private n I;
  private fb J = null;
  private List<Map<String, Object>> K = new ArrayList();
  private ArrayList<TaplyticsRunningExperimentsListener> L;
  private AlertDialog M = null;
  private hn c = null;
  private el d = null;
  private cc e = null;
  private gn f = null;
  private String g = null;
  private String h = null;
  private boolean i = false;
  private boolean j = false;
  private boolean k = false;
  private boolean l = true;
  private boolean m = false;
  private boolean n = false;
  private boolean o = false;
  private boolean p = false;
  private boolean q = false;
  private boolean r = false;
  private boolean s = false;
  private Date t = null;
  private Integer u = Integer.valueOf(10);
  private boolean v = false;
  private final boolean w = C();
  private boolean x = false;
  private TaplyticsExperimentsLoadedListener y = null;
  private a z = null;
  
  public static boolean C()
  {
    try
    {
      Class.forName("io.socket.client.Socket");
      return true;
    }
    catch (Exception localException) {}
    return false;
  }
  
  private n D()
  {
    return I;
  }
  
  private void E()
  {
    if (!i) {
      return;
    }
    c.a(new gg(this));
  }
  
  private void F()
  {
    if (K.size() > 0)
    {
      Iterator localIterator = K.iterator();
      while (localIterator.hasNext())
      {
        Map localMap = (Map)localIterator.next();
        a((String)localMap.get("experiment"), false, (TaplyticsCodeExperimentListener)localMap.get("listener"));
      }
      K.clear();
    }
  }
  
  private void G()
  {
    if (L != null)
    {
      Iterator localIterator = L.iterator();
      while (localIterator.hasNext()) {
        b((TaplyticsRunningExperimentsListener)localIterator.next());
      }
      L = null;
    }
  }
  
  private Map<String, Object> a(JSONObject paramJSONObject, JSONArray paramJSONArray)
    throws JSONException
  {
    HashMap localHashMap = new HashMap();
    int i1 = 0;
    for (;;)
    {
      try
      {
        if (i1 < paramJSONArray.length())
        {
          Object localObject = new en(paramJSONArray.getJSONObject(i1));
          if (!((en)localObject).a("_id")) {
            break label161;
          }
          str = ((en)localObject).optString("_id");
          if (((en)localObject).a("name"))
          {
            localObject = ((en)localObject).optString("name");
            if ((str != null) && (localObject != null) && (!str.equals("")) && (!((String)localObject).equals("")) && (paramJSONObject.has(str))) {
              localHashMap.put(localObject, paramJSONObject.get(str));
            }
          }
          else
          {
            localObject = "";
            continue;
          }
        }
        else
        {
          return localHashMap;
        }
      }
      catch (Exception paramJSONObject)
      {
        ck.b("Getting vars", paramJSONObject);
      }
      i1 += 1;
      continue;
      label161:
      String str = "";
    }
  }
  
  private boolean a(eo parameo)
  {
    boolean bool = true;
    int i1;
    if (parameo != null)
    {
      parameo = parameo.c();
      if (parameo != null)
      {
        parameo = parameo.optJSONObject("settings").optJSONArray("killForBuilds");
        int i2 = iz.c();
        String str1 = iz.b();
        if (parameo != null)
        {
          i1 = 0;
          try
          {
            if (i1 >= parameo.length()) {
              break label236;
            }
            String str2 = ((JSONObject)parameo.get(i1)).optString("appBuild");
            String str3 = ((JSONObject)parameo.get(i1)).optString("appVersion");
            if ((!String.valueOf(i2).equals(str2)) && (!str1.equals(str3))) {
              break label229;
            }
            l = false;
            if (ck.c()) {
              ck.a("TAPLYTICS IS NOW DISABLED");
            }
            try
            {
              if (J != null) {
                J.b();
              }
              if (I != null) {
                n.a(D());
              }
              if (e != null) {
                dg.b().r();
              }
              if ((f != null) && (f.a())) {
                f.b();
              }
            }
            catch (Exception parameo)
            {
              for (;;)
              {
                ck.b("error unregistering things for killswitch", parameo);
              }
            }
            if (l) {
              break label227;
            }
            return true;
          }
          catch (Exception parameo)
          {
            ck.b("error checking kill builds", parameo);
          }
        }
      }
    }
    label217:
    if (!l) {}
    for (;;)
    {
      return bool;
      label227:
      return false;
      label229:
      i1 += 1;
      break;
      label236:
      l = true;
      break label217;
      bool = false;
    }
  }
  
  private boolean a(ep paramep)
  {
    try
    {
      int i1 = a.a(paramep);
      switch (i1)
      {
      default: 
        return false;
      }
      return true;
    }
    catch (Exception paramep) {}
    return false;
  }
  
  private void b(Context paramContext, String paramString, Map<String, Object> paramMap, TaplyticsExperimentsLoadedListener paramTaplyticsExperimentsLoadedListener)
  {
    try
    {
      Log.d("Taplytics", "Starting taplytics version " + a.a());
      if ((paramContext == null) || (paramString == null))
      {
        Log.d("Taplytics", "Failed to start Taplytics, missing App Context or API Key");
        return;
      }
      if (!iz.a(paramContext, "android.permission.INTERNET"))
      {
        Log.w("Taplytics", "Failed to find the necessary android.permission.INTERNET permission.");
        return;
      }
    }
    catch (Exception paramContext)
    {
      ck.b("Master catch!", paramContext);
      return;
    }
    if ((g != null) && (paramString.equals(g)))
    {
      Log.d("Taplytics", "Taplytics has already started! Taplytics only needs to be started once, preferably in your Application subclass.");
      return;
    }
    if (ck.c()) {
      ck.a("Start Taplytics with API Key: " + paramString);
    }
    g = paramString;
    E = paramContext;
    d = new el(paramContext);
    c = new hn(paramContext);
    e = new cc();
    f = new gn();
    if (!k)
    {
      a(true, paramMap);
      k = true;
    }
    il localil = il.alpaca;
    Object localObject4;
    Object localObject6;
    Object localObject2;
    Object localObject7;
    Object localObject1;
    Object localObject3;
    if (paramMap != null)
    {
      localObject4 = paramMap.get("debugLogging");
      Object localObject5 = paramMap.get("liveUpdate");
      localObject6 = paramMap.get("shakeMenu");
      localObject2 = paramMap.get("server");
      localObject7 = paramMap.get("fragments");
      localObject1 = paramMap.get("sessionMinutes");
      localObject3 = paramMap.get("turnMenu");
      if ((localObject5 != null) && ((localObject5 instanceof Boolean))) {
        if ((!((Boolean)localObject5).booleanValue()) || (!w)) {
          break label796;
        }
      }
    }
    label793:
    label796:
    for (boolean bool = true;; bool = false)
    {
      i = bool;
      n = true;
      if ((localObject7 != null) && ((localObject7 instanceof Boolean))) {
        B = ((Boolean)localObject7).booleanValue();
      }
      if ((localObject4 != null) && ((localObject4 instanceof Boolean))) {
        ck.a().a(((Boolean)localObject4).booleanValue());
      }
      if ((localObject6 != null) && ((localObject6 instanceof Boolean)) && (!((Boolean)localObject6).booleanValue()))
      {
        fx.a().a(kb.caterpillar);
        if (J != null) {
          J.b();
        }
      }
      if ((localObject2 != null) && ((localObject2 instanceof String)))
      {
        localObject4 = (String)localObject2;
        if ((((String)localObject4).equals("local")) || (localObject2 == "localHost"))
        {
          localil = il.antelope;
          if (localObject1 != null)
          {
            bool = localObject1 instanceof Number;
            if (!bool) {}
          }
        }
        try
        {
          localObject2 = (Integer)localObject1;
          localObject1 = localObject2;
          if (((Integer)localObject2).intValue() > 1440)
          {
            ck.b("Session background time is greater then 24hrs, setting to 24hrs.");
            localObject1 = Integer.valueOf(1440);
          }
          a((Integer)localObject1);
        }
        catch (Exception localException)
        {
          for (;;)
          {
            ck.b("problem setting session interval time", localException);
          }
        }
        if (paramMap.containsKey("disable"))
        {
          localObject1 = paramMap.get("disable");
          if ((localObject1 instanceof ArrayList))
          {
            localObject1 = new HashSet((ArrayList)localObject1);
            fx.a().b((HashSet)localObject1);
          }
        }
        if ((localObject3 == null) || (!(localObject3 instanceof Boolean))) {
          break label793;
        }
        m = ((Boolean)localObject3).booleanValue();
        break label793;
      }
      for (;;)
      {
        c.a(localil);
        e.e();
        y = paramTaplyticsExperimentsLoadedListener;
        L = new ArrayList();
        L.add(new ge(this, paramMap));
        cs.a().a(new gf(this, paramString));
        if ((Build.VERSION.SDK_INT < 14) || (!j)) {
          t();
        }
        if ((getApplicationInfoflags & 0x2) != 0) {
          c.b(null);
        }
        s();
        return;
        if (((String)localObject4).equals("staging"))
        {
          localil = il.anteater;
          break;
        }
        if (((String)localObject4).equals("dev"))
        {
          localil = il.alligator;
          break;
        }
        break;
      }
    }
  }
  
  private void b(TaplyticsRunningExperimentsListener paramTaplyticsRunningExperimentsListener)
  {
    em localem = null;
    JSONArray localJSONArray1;
    HashMap localHashMap;
    if ((D != null) && (D.f() != null))
    {
      localJSONArray1 = D.f();
      localHashMap = new HashMap();
    }
    for (;;)
    {
      try
      {
        if (D.g() == null) {
          break label416;
        }
        localem = new em(D.g());
      }
      catch (Exception localException)
      {
        Object localObject1;
        String str3;
        JSONArray localJSONArray2;
        int i2;
        ck.b("Getting running experiments and variations", localException);
        return;
        String str2 = localException.optString("_id");
        continue;
        String str1 = localException.optString("_id");
        continue;
        i2 += 1;
        continue;
        return;
      }
      finally
      {
        paramTaplyticsRunningExperimentsListener.runningExperimentsAndVariation(localHashMap);
      }
      if (i1 < localJSONArray1.length())
      {
        localObject1 = localJSONArray1.optJSONObject(i1);
        if (localObject1 == null) {
          break label421;
        }
        str2 = ((JSONObject)localObject1).optString("_id");
        str3 = ((JSONObject)localObject1).optString("status");
        if ((localem == null) || (str2 == null) || (!localem.a(str2).booleanValue()) || (str3 == null) || (!str3.equals("active"))) {
          break label421;
        }
        if (((JSONObject)localObject1).has("name"))
        {
          str2 = ((JSONObject)localObject1).optString("name");
          str3 = "baseline";
          localJSONArray2 = ((JSONObject)localObject1).optJSONArray("variations");
          localObject1 = str3;
          if (localJSONArray2 != null)
          {
            localObject1 = str3;
            if (D.i() != null)
            {
              i2 = 0;
              localObject1 = str3;
              if (i2 < localJSONArray2.length())
              {
                localObject1 = new en(localJSONArray2.optJSONObject(i2));
                if ((!((en)localObject1).a("_id")) || (!D.i().toString().contains("\"" + ((en)localObject1).optString("_id") + "\""))) {
                  continue;
                }
                if (!((en)localObject1).has("name")) {
                  continue;
                }
                localObject1 = ((en)localObject1).optString("name");
              }
            }
          }
          localHashMap.put(str2, localObject1);
          break label421;
        }
      }
      paramTaplyticsRunningExperimentsListener.runningExperimentsAndVariation(null);
      return;
      label416:
      int i1 = 0;
      continue;
      label421:
      i1 += 1;
    }
  }
  
  private boolean b(String paramString)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (E != null)
    {
      PackageManager localPackageManager = E.getPackageManager();
      String str = paramString;
      if (paramString != null) {
        str = "tl-" + paramString + "://";
      }
      bool1 = bool2;
      if (localPackageManager.queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse(str)), 65568).size() > 0) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public static fy e()
  {
    return b;
  }
  
  public boolean A()
  {
    return n;
  }
  
  public String B()
  {
    String str = null;
    if (iz.c(h))
    {
      SharedPreferences localSharedPreferences = iz.a();
      if (localSharedPreferences != null) {
        str = localSharedPreferences.getString("DEVICE_TOKEN", null);
      }
      h = str;
      ck.a("Getting device token from prefs: " + h);
    }
    return h;
  }
  
  @SuppressLint({"NewApi"})
  public void a()
  {
    if (ck.c()) {
      ck.a("Shake Menu triggered");
    }
    try
    {
      if ((J != null) && (!fi.a().d()) && (!iz.a(kb.caterpillar)) && (g()) && (o)) {
        fi.a().b();
      }
      if ((l) && (g()) && (!aa)) {
        gq.h().l();
      }
      return;
    }
    catch (Exception localException)
    {
      ck.b("onshake", localException);
    }
  }
  
  public void a(Activity paramActivity)
  {
    try
    {
      if (!l)
      {
        F = null;
        return;
      }
      if ((F != null) && (x) && (g())) {
        paramActivity.runOnUiThread(new fz(this, paramActivity));
      }
      if (paramActivity == F) {
        break label207;
      }
      Iterator localIterator = fq.a().c().entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        if (((String)getValuefirst).equals(F.getClass().getSimpleName())) {
          jy.a(((Integer)localEntry.getKey()).intValue(), false);
        }
      }
      F = paramActivity;
    }
    catch (Exception paramActivity)
    {
      ck.b("Error setting activity.", paramActivity);
      return;
    }
    o = true;
    G = F.getClass().getSimpleName();
    v();
    fq.a().c().clear();
    fq.a().d().clear();
    if (ck.c()) {
      ck.a("Setting current activity");
    }
    label207:
    paramActivity = paramActivity.getIntent().getExtras();
    if ((paramActivity != null) && (paramActivity.getBoolean("tl_notif", false)) && (paramActivity.getString("tl_id") != null)) {
      e.a(paramActivity);
    }
  }
  
  public void a(Activity paramActivity, Drawable paramDrawable, int paramInt)
  {
    if (!iz.a(kb.cat)) {
      gq.h().a(paramActivity, paramDrawable, paramInt);
    }
  }
  
  public void a(Activity paramActivity, Drawable paramDrawable, int paramInt1, int paramInt2)
  {
    if (!iz.a(kb.cat)) {
      gq.h().a(paramActivity, paramDrawable, paramInt1, paramInt2);
    }
  }
  
  public void a(Context paramContext, String paramString, Map<String, Object> paramMap, TaplyticsExperimentsLoadedListener paramTaplyticsExperimentsLoadedListener)
  {
    if ((paramMap != null) && (paramMap.containsKey("async")) && (((Boolean)paramMap.get("async")).booleanValue())) {
      H = Executors.newSingleThreadExecutor();
    }
    if ((Build.VERSION.SDK_INT >= 14) && (!j)) {
      I = n.a(paramContext);
    }
    H.execute(new gd(this, paramContext, paramString, paramMap, paramTaplyticsExperimentsLoadedListener));
  }
  
  public void a(TaplyticsDelayLoadListener paramTaplyticsDelayLoadListener, int paramInt)
  {
    if (!iz.a(kb.cat)) {
      gq.h().a(paramTaplyticsDelayLoadListener, paramInt);
    }
  }
  
  public void a(TaplyticsDelayLoadListener paramTaplyticsDelayLoadListener, int paramInt1, int paramInt2)
  {
    if (!iz.a(kb.cat)) {
      gq.h().a(paramTaplyticsDelayLoadListener, paramInt1, paramInt2);
    }
  }
  
  public void a(TaplyticsPushTokenListener paramTaplyticsPushTokenListener)
  {
    if (o() != null) {
      o().a(paramTaplyticsPushTokenListener);
    }
  }
  
  public void a(TaplyticsRunningExperimentsListener paramTaplyticsRunningExperimentsListener)
  {
    if (!l)
    {
      paramTaplyticsRunningExperimentsListener.runningExperimentsAndVariation(null);
      return;
    }
    if (r)
    {
      b(paramTaplyticsRunningExperimentsListener);
      return;
    }
    if (L == null) {
      L = new ArrayList();
    }
    L.add(paramTaplyticsRunningExperimentsListener);
  }
  
  public void a(a parama)
  {
    z = parama;
  }
  
  public void a(Integer paramInteger)
  {
    u = paramInteger;
  }
  
  public void a(Runnable paramRunnable)
  {
    if (H != null) {
      H.execute(paramRunnable);
    }
  }
  
  public void a(String paramString)
  {
    h = paramString;
    SharedPreferences localSharedPreferences = iz.a();
    if (localSharedPreferences != null)
    {
      localSharedPreferences.edit().putString("DEVICE_TOKEN", paramString).apply();
      ck.a("Saving device token to prefs: " + paramString);
    }
  }
  
  public void a(String paramString, CodeBlockListener paramCodeBlockListener)
  {
    fe.a().b(paramString, paramCodeBlockListener);
  }
  
  public void a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    for (;;)
    {
      int i1;
      try
      {
        HashMap localHashMap = new HashMap();
        localHashMap.put("exp", paramString1);
        localHashMap.put("var", paramString2);
        if ((gq.h().a()) && (gq.h().f() != null) && (!gq.h().f().equals(paramString4)))
        {
          paramString1 = D.k();
          i1 = 0;
          if (i1 < paramString1.length())
          {
            paramString2 = (JSONObject)paramString1.get(i1);
            int i2 = paramString2.optJSONObject("initProperties").optInt("anID");
            if ((gq.h().c().containsKey(Integer.valueOf(i2))) && (((JSONObject)gq.h().c().get(Integer.valueOf(i2))).has("anProperties"))) {
              break label224;
            }
            paramString2.put("reset", true);
            gq.h().c().put(Integer.valueOf(i2), paramString2);
            break label224;
          }
        }
        paramString1 = new c();
        paramString1.a(new gk(this, paramString3, paramString4));
        e().a(localHashMap, paramString1);
        return;
      }
      catch (Exception paramString1)
      {
        ck.b("error switching variations", paramString1);
        return;
      }
      label224:
      i1 += 1;
    }
  }
  
  /* Error */
  public void a(String paramString, boolean paramBoolean, TaplyticsCodeExperimentListener paramTaplyticsCodeExperimentListener)
  {
    // Byte code:
    //   0: getstatic 915	com/taplytics/kb:camel	Lcom/taplytics/kb;
    //   3: invokestatic 697	com/taplytics/iz:a	(Lcom/taplytics/kb;)Z
    //   6: ifeq +4 -> 10
    //   9: return
    //   10: aload_0
    //   11: getfield 110	com/taplytics/fy:l	Z
    //   14: ifne +15 -> 29
    //   17: aload_3
    //   18: ifnull -9 -> 9
    //   21: aload_3
    //   22: aconst_null
    //   23: invokeinterface 918 2 0
    //   28: return
    //   29: aload_1
    //   30: ifnonnull +21 -> 51
    //   33: ldc_w 920
    //   36: invokestatic 922	com/taplytics/ck:c	(Ljava/lang/String;)V
    //   39: aload_3
    //   40: ifnull -31 -> 9
    //   43: aload_3
    //   44: aconst_null
    //   45: invokeinterface 918 2 0
    //   50: return
    //   51: aload_3
    //   52: ifnonnull +10 -> 62
    //   55: ldc_w 924
    //   58: invokestatic 922	com/taplytics/ck:c	(Ljava/lang/String;)V
    //   61: return
    //   62: aload_0
    //   63: getfield 158	com/taplytics/fy:D	Lcom/taplytics/eo;
    //   66: ifnonnull +51 -> 117
    //   69: iload_2
    //   70: ifne +47 -> 117
    //   73: new 257	java/util/HashMap
    //   76: dup
    //   77: invokespecial 258	java/util/HashMap:<init>	()V
    //   80: astore 9
    //   82: aload 9
    //   84: ldc -30
    //   86: aload_1
    //   87: invokeinterface 301 3 0
    //   92: pop
    //   93: aload 9
    //   95: ldc -22
    //   97: aload_3
    //   98: invokeinterface 301 3 0
    //   103: pop
    //   104: aload_0
    //   105: getfield 171	com/taplytics/fy:K	Ljava/util/List;
    //   108: aload 9
    //   110: invokeinterface 925 2 0
    //   115: pop
    //   116: return
    //   117: iconst_0
    //   118: istore 5
    //   120: aconst_null
    //   121: astore 17
    //   123: aconst_null
    //   124: astore 16
    //   126: aconst_null
    //   127: astore 15
    //   129: aconst_null
    //   130: astore 10
    //   132: aconst_null
    //   133: astore 12
    //   135: aconst_null
    //   136: astore 11
    //   138: aconst_null
    //   139: astore 9
    //   141: ldc_w 611
    //   144: astore 13
    //   146: aconst_null
    //   147: astore 18
    //   149: aload 10
    //   151: astore 14
    //   153: aload_0
    //   154: getfield 158	com/taplytics/fy:D	Lcom/taplytics/eo;
    //   157: ifnull +44 -> 201
    //   160: aload 10
    //   162: astore 14
    //   164: aload_0
    //   165: getfield 158	com/taplytics/fy:D	Lcom/taplytics/eo;
    //   168: invokevirtual 927	com/taplytics/eo:e	()Lcom/taplytics/en;
    //   171: ifnull +30 -> 201
    //   174: aload_0
    //   175: getfield 158	com/taplytics/fy:D	Lcom/taplytics/eo;
    //   178: invokevirtual 927	com/taplytics/eo:e	()Lcom/taplytics/en;
    //   181: aload_1
    //   182: invokevirtual 277	com/taplytics/en:a	(Ljava/lang/String;)Z
    //   185: ifeq +589 -> 774
    //   188: aload_0
    //   189: getfield 158	com/taplytics/fy:D	Lcom/taplytics/eo;
    //   192: invokevirtual 927	com/taplytics/eo:e	()Lcom/taplytics/en;
    //   195: aload_1
    //   196: invokevirtual 930	com/taplytics/en:b	(Ljava/lang/String;)Lcom/taplytics/en;
    //   199: astore 14
    //   201: aload 14
    //   203: ifnull +586 -> 789
    //   206: aload_0
    //   207: getfield 158	com/taplytics/fy:D	Lcom/taplytics/eo;
    //   210: invokevirtual 615	com/taplytics/eo:i	()Lorg/json/JSONArray;
    //   213: ifnull +576 -> 789
    //   216: aload 14
    //   218: ldc_w 274
    //   221: invokevirtual 281	com/taplytics/en:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   224: astore 10
    //   226: aload 18
    //   228: astore 11
    //   230: aload 16
    //   232: astore 12
    //   234: aload 14
    //   236: ldc_w 932
    //   239: invokevirtual 623	com/taplytics/en:has	(Ljava/lang/String;)Z
    //   242: ifeq +17 -> 259
    //   245: aload 16
    //   247: astore 12
    //   249: aload 14
    //   251: ldc_w 932
    //   254: invokevirtual 933	com/taplytics/en:optJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   257: astore 11
    //   259: aload 16
    //   261: astore 12
    //   263: aload 14
    //   265: ldc_w 611
    //   268: invokevirtual 930	com/taplytics/en:b	(Ljava/lang/String;)Lcom/taplytics/en;
    //   271: astore 17
    //   273: aload 15
    //   275: astore 9
    //   277: aload 17
    //   279: ifnull +42 -> 321
    //   282: aload 15
    //   284: astore 9
    //   286: aload 16
    //   288: astore 12
    //   290: aload 17
    //   292: ldc_w 935
    //   295: invokevirtual 277	com/taplytics/en:a	(Ljava/lang/String;)Z
    //   298: ifeq +23 -> 321
    //   301: aload 16
    //   303: astore 12
    //   305: aload_0
    //   306: aload 17
    //   308: ldc_w 935
    //   311: invokevirtual 936	com/taplytics/en:optJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   314: aload 11
    //   316: invokespecial 938	com/taplytics/fy:a	(Lorg/json/JSONObject;Lorg/json/JSONArray;)Ljava/util/Map;
    //   319: astore 9
    //   321: aload 9
    //   323: astore 12
    //   325: aload 14
    //   327: ldc_w 613
    //   330: invokevirtual 933	com/taplytics/en:optJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   333: astore 15
    //   335: aload 15
    //   337: ifnull +847 -> 1184
    //   340: iconst_0
    //   341: istore 4
    //   343: aload 9
    //   345: astore 12
    //   347: iload 4
    //   349: aload 15
    //   351: invokevirtual 263	org/json/JSONArray:length	()I
    //   354: if_icmpge +830 -> 1184
    //   357: aload 9
    //   359: astore 12
    //   361: new 265	com/taplytics/en
    //   364: dup
    //   365: aload 15
    //   367: iload 4
    //   369: invokevirtual 602	org/json/JSONArray:optJSONObject	(I)Lorg/json/JSONObject;
    //   372: invokespecial 272	com/taplytics/en:<init>	(Lorg/json/JSONObject;)V
    //   375: astore 14
    //   377: aload 9
    //   379: astore 12
    //   381: aload 14
    //   383: ldc_w 274
    //   386: invokevirtual 277	com/taplytics/en:a	(Ljava/lang/String;)Z
    //   389: ifeq +391 -> 780
    //   392: aload 9
    //   394: astore 12
    //   396: aload_0
    //   397: getfield 158	com/taplytics/fy:D	Lcom/taplytics/eo;
    //   400: invokevirtual 615	com/taplytics/eo:i	()Lorg/json/JSONArray;
    //   403: invokevirtual 616	org/json/JSONArray:toString	()Ljava/lang/String;
    //   406: new 403	java/lang/StringBuilder
    //   409: dup
    //   410: invokespecial 404	java/lang/StringBuilder:<init>	()V
    //   413: ldc_w 618
    //   416: invokevirtual 410	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   419: aload 14
    //   421: ldc_w 274
    //   424: invokevirtual 281	com/taplytics/en:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   427: invokevirtual 410	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   430: ldc_w 618
    //   433: invokevirtual 410	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   436: invokevirtual 415	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   439: invokevirtual 622	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   442: ifeq +338 -> 780
    //   445: aload 9
    //   447: astore 12
    //   449: aload 14
    //   451: ldc_w 274
    //   454: invokevirtual 939	com/taplytics/en:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   457: astore 15
    //   459: aload 15
    //   461: astore 12
    //   463: aload 14
    //   465: astore 13
    //   467: aload 12
    //   469: astore 14
    //   471: aload 11
    //   473: astore 12
    //   475: aload 9
    //   477: astore 11
    //   479: aload 10
    //   481: astore 9
    //   483: aload 14
    //   485: astore 10
    //   487: aload 13
    //   489: ifnull +689 -> 1178
    //   492: aload 13
    //   494: ldc_w 935
    //   497: invokevirtual 277	com/taplytics/en:a	(Ljava/lang/String;)Z
    //   500: ifeq +349 -> 849
    //   503: aload 13
    //   505: ldc_w 935
    //   508: invokevirtual 930	com/taplytics/en:b	(Ljava/lang/String;)Lcom/taplytics/en;
    //   511: astore 14
    //   513: aload 13
    //   515: ldc_w 283
    //   518: invokevirtual 281	com/taplytics/en:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   521: astore 13
    //   523: aload 13
    //   525: ldc_w 285
    //   528: invokevirtual 289	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   531: ifne +647 -> 1178
    //   534: invokestatic 353	com/taplytics/ck:c	()Z
    //   537: ifeq +37 -> 574
    //   540: new 403	java/lang/StringBuilder
    //   543: dup
    //   544: invokespecial 404	java/lang/StringBuilder:<init>	()V
    //   547: ldc_w 941
    //   550: invokevirtual 410	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   553: aload 13
    //   555: invokevirtual 410	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   558: ldc_w 943
    //   561: invokevirtual 410	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   564: aload_1
    //   565: invokevirtual 410	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   568: invokevirtual 415	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   571: invokestatic 357	com/taplytics/ck:a	(Ljava/lang/String;)V
    //   574: aload_3
    //   575: aload 13
    //   577: aload_0
    //   578: aload 14
    //   580: aload 12
    //   582: invokespecial 938	com/taplytics/fy:a	(Lorg/json/JSONObject;Lorg/json/JSONArray;)Ljava/util/Map;
    //   585: invokeinterface 947 3 0
    //   590: iconst_1
    //   591: istore 7
    //   593: iconst_1
    //   594: istore 8
    //   596: iconst_1
    //   597: istore 6
    //   599: iload 6
    //   601: istore 4
    //   603: aload 9
    //   605: ifnull +105 -> 710
    //   608: iload 6
    //   610: istore 4
    //   612: aload 10
    //   614: astore 14
    //   616: aload 9
    //   618: astore 13
    //   620: aload 11
    //   622: astore 15
    //   624: iload 8
    //   626: istore 5
    //   628: aload 9
    //   630: ldc_w 285
    //   633: invokevirtual 289	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   636: ifne +74 -> 710
    //   639: iload 6
    //   641: istore 4
    //   643: aload 10
    //   645: ifnull +65 -> 710
    //   648: iload 6
    //   650: istore 4
    //   652: aload 10
    //   654: astore 14
    //   656: aload 9
    //   658: astore 13
    //   660: aload 11
    //   662: astore 15
    //   664: iload 8
    //   666: istore 5
    //   668: aload 10
    //   670: ldc_w 285
    //   673: invokevirtual 289	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   676: ifne +34 -> 710
    //   679: aload 10
    //   681: astore 14
    //   683: aload 9
    //   685: astore 13
    //   687: aload 11
    //   689: astore 15
    //   691: iload 8
    //   693: istore 5
    //   695: aload_0
    //   696: getfield 96	com/taplytics/fy:e	Lcom/taplytics/cc;
    //   699: aload 9
    //   701: aload 10
    //   703: invokevirtual 950	com/taplytics/cc:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   706: iload 6
    //   708: istore 4
    //   710: iload 4
    //   712: ifne -703 -> 9
    //   715: invokestatic 353	com/taplytics/ck:c	()Z
    //   718: ifeq +26 -> 744
    //   721: new 403	java/lang/StringBuilder
    //   724: dup
    //   725: invokespecial 404	java/lang/StringBuilder:<init>	()V
    //   728: ldc_w 952
    //   731: invokevirtual 410	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   734: aload_1
    //   735: invokevirtual 410	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   738: invokevirtual 415	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   741: invokestatic 357	com/taplytics/ck:a	(Ljava/lang/String;)V
    //   744: aload_3
    //   745: aload 11
    //   747: invokeinterface 918 2 0
    //   752: aload 9
    //   754: ifnull -745 -> 9
    //   757: aload 10
    //   759: ifnull -750 -> 9
    //   762: aload_0
    //   763: getfield 96	com/taplytics/fy:e	Lcom/taplytics/cc;
    //   766: aload 9
    //   768: aload 10
    //   770: invokevirtual 950	com/taplytics/cc:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   773: return
    //   774: aconst_null
    //   775: astore 14
    //   777: goto -576 -> 201
    //   780: iload 4
    //   782: iconst_1
    //   783: iadd
    //   784: istore 4
    //   786: goto -443 -> 343
    //   789: aload 14
    //   791: ifnull +38 -> 829
    //   794: invokestatic 353	com/taplytics/ck:c	()Z
    //   797: ifeq +32 -> 829
    //   800: new 403	java/lang/StringBuilder
    //   803: dup
    //   804: invokespecial 404	java/lang/StringBuilder:<init>	()V
    //   807: ldc_w 954
    //   810: invokevirtual 410	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   813: aload_1
    //   814: invokevirtual 410	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   817: ldc_w 956
    //   820: invokevirtual 410	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   823: invokevirtual 415	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   826: invokestatic 357	com/taplytics/ck:a	(Ljava/lang/String;)V
    //   829: aconst_null
    //   830: astore 12
    //   832: aconst_null
    //   833: astore 11
    //   835: aconst_null
    //   836: astore 14
    //   838: aload 13
    //   840: astore 10
    //   842: aload 14
    //   844: astore 13
    //   846: goto -359 -> 487
    //   849: aconst_null
    //   850: astore 14
    //   852: goto -339 -> 513
    //   855: astore 14
    //   857: aconst_null
    //   858: astore 11
    //   860: iconst_0
    //   861: istore 4
    //   863: aload 12
    //   865: astore 9
    //   867: aload 13
    //   869: astore 10
    //   871: aload 14
    //   873: astore 12
    //   875: aload 10
    //   877: astore 14
    //   879: aload 9
    //   881: astore 13
    //   883: aload 11
    //   885: astore 15
    //   887: iload 4
    //   889: istore 5
    //   891: ldc_w 958
    //   894: aload 12
    //   896: invokestatic 308	com/taplytics/ck:b	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   899: iload 4
    //   901: ifne -892 -> 9
    //   904: invokestatic 353	com/taplytics/ck:c	()Z
    //   907: ifeq +26 -> 933
    //   910: new 403	java/lang/StringBuilder
    //   913: dup
    //   914: invokespecial 404	java/lang/StringBuilder:<init>	()V
    //   917: ldc_w 952
    //   920: invokevirtual 410	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   923: aload_1
    //   924: invokevirtual 410	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   927: invokevirtual 415	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   930: invokestatic 357	com/taplytics/ck:a	(Ljava/lang/String;)V
    //   933: aload_3
    //   934: aload 11
    //   936: invokeinterface 918 2 0
    //   941: aload 9
    //   943: ifnull -934 -> 9
    //   946: aload 10
    //   948: ifnull -939 -> 9
    //   951: aload_0
    //   952: getfield 96	com/taplytics/fy:e	Lcom/taplytics/cc;
    //   955: aload 9
    //   957: aload 10
    //   959: invokevirtual 950	com/taplytics/cc:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   962: return
    //   963: astore 12
    //   965: iload 5
    //   967: istore 4
    //   969: aload 17
    //   971: astore 10
    //   973: aload 11
    //   975: astore 9
    //   977: aload 13
    //   979: astore 14
    //   981: aload 12
    //   983: astore 11
    //   985: iload 4
    //   987: ifne +61 -> 1048
    //   990: invokestatic 353	com/taplytics/ck:c	()Z
    //   993: ifeq +26 -> 1019
    //   996: new 403	java/lang/StringBuilder
    //   999: dup
    //   1000: invokespecial 404	java/lang/StringBuilder:<init>	()V
    //   1003: ldc_w 952
    //   1006: invokevirtual 410	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1009: aload_1
    //   1010: invokevirtual 410	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1013: invokevirtual 415	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1016: invokestatic 357	com/taplytics/ck:a	(Ljava/lang/String;)V
    //   1019: aload_3
    //   1020: aload 10
    //   1022: invokeinterface 918 2 0
    //   1027: aload 9
    //   1029: ifnull +19 -> 1048
    //   1032: aload 14
    //   1034: ifnull +14 -> 1048
    //   1037: aload_0
    //   1038: getfield 96	com/taplytics/fy:e	Lcom/taplytics/cc;
    //   1041: aload 9
    //   1043: aload 14
    //   1045: invokevirtual 950	com/taplytics/cc:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   1048: aload 11
    //   1050: athrow
    //   1051: astore 11
    //   1053: aload 10
    //   1055: astore 9
    //   1057: aload 13
    //   1059: astore 14
    //   1061: aload 12
    //   1063: astore 10
    //   1065: iload 5
    //   1067: istore 4
    //   1069: goto -84 -> 985
    //   1072: astore 13
    //   1074: aload 11
    //   1076: astore 12
    //   1078: aload 13
    //   1080: astore 11
    //   1082: aload 10
    //   1084: astore 14
    //   1086: aload 12
    //   1088: astore 10
    //   1090: iload 5
    //   1092: istore 4
    //   1094: goto -109 -> 985
    //   1097: astore 11
    //   1099: aload 15
    //   1101: astore 10
    //   1103: iload 5
    //   1105: istore 4
    //   1107: aload 13
    //   1109: astore 9
    //   1111: goto -126 -> 985
    //   1114: astore 12
    //   1116: aload 10
    //   1118: astore 9
    //   1120: aconst_null
    //   1121: astore 11
    //   1123: iconst_0
    //   1124: istore 4
    //   1126: aload 13
    //   1128: astore 10
    //   1130: goto -255 -> 875
    //   1133: astore 12
    //   1135: aload 10
    //   1137: astore 11
    //   1139: aload 9
    //   1141: astore 14
    //   1143: iconst_0
    //   1144: istore 4
    //   1146: aload 13
    //   1148: astore 10
    //   1150: aload 11
    //   1152: astore 9
    //   1154: aload 14
    //   1156: astore 11
    //   1158: goto -283 -> 875
    //   1161: astore 12
    //   1163: iconst_0
    //   1164: istore 4
    //   1166: goto -291 -> 875
    //   1169: astore 12
    //   1171: iload 7
    //   1173: istore 4
    //   1175: goto -300 -> 875
    //   1178: iconst_0
    //   1179: istore 4
    //   1181: goto -471 -> 710
    //   1184: ldc_w 611
    //   1187: astore 12
    //   1189: aconst_null
    //   1190: astore 13
    //   1192: goto -725 -> 467
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1195	0	this	fy
    //   0	1195	1	paramString	String
    //   0	1195	2	paramBoolean	boolean
    //   0	1195	3	paramTaplyticsCodeExperimentListener	TaplyticsCodeExperimentListener
    //   341	839	4	i1	int
    //   118	986	5	i2	int
    //   597	110	6	i3	int
    //   591	581	7	i4	int
    //   594	98	8	i5	int
    //   80	1073	9	localObject1	Object
    //   130	1019	10	localObject2	Object
    //   136	913	11	localObject3	Object
    //   1051	24	11	localObject4	Object
    //   1080	1	11	localObject5	Object
    //   1097	1	11	localObject6	Object
    //   1121	36	11	localObject7	Object
    //   133	762	12	localObject8	Object
    //   963	99	12	localObject9	Object
    //   1076	11	12	localObject10	Object
    //   1114	1	12	localException1	Exception
    //   1133	1	12	localException2	Exception
    //   1161	1	12	localException3	Exception
    //   1169	1	12	localException4	Exception
    //   1187	1	12	str	String
    //   144	914	13	localObject11	Object
    //   1072	75	13	localObject12	Object
    //   1190	1	13	localObject13	Object
    //   151	700	14	localObject14	Object
    //   855	17	14	localException5	Exception
    //   877	278	14	localObject15	Object
    //   127	973	15	localObject16	Object
    //   124	178	16	localObject17	Object
    //   121	849	17	localen	en
    //   147	80	18	localObject18	Object
    // Exception table:
    //   from	to	target	type
    //   153	160	855	java/lang/Exception
    //   164	201	855	java/lang/Exception
    //   206	226	855	java/lang/Exception
    //   794	829	855	java/lang/Exception
    //   153	160	963	finally
    //   164	201	963	finally
    //   206	226	963	finally
    //   794	829	963	finally
    //   234	245	1051	finally
    //   249	259	1051	finally
    //   263	273	1051	finally
    //   290	301	1051	finally
    //   305	321	1051	finally
    //   325	335	1051	finally
    //   347	357	1051	finally
    //   361	377	1051	finally
    //   381	392	1051	finally
    //   396	445	1051	finally
    //   449	459	1051	finally
    //   492	513	1072	finally
    //   513	574	1072	finally
    //   574	590	1072	finally
    //   628	639	1097	finally
    //   668	679	1097	finally
    //   695	706	1097	finally
    //   891	899	1097	finally
    //   234	245	1114	java/lang/Exception
    //   249	259	1114	java/lang/Exception
    //   263	273	1114	java/lang/Exception
    //   290	301	1114	java/lang/Exception
    //   305	321	1114	java/lang/Exception
    //   325	335	1133	java/lang/Exception
    //   347	357	1133	java/lang/Exception
    //   361	377	1133	java/lang/Exception
    //   381	392	1133	java/lang/Exception
    //   396	445	1133	java/lang/Exception
    //   449	459	1133	java/lang/Exception
    //   492	513	1161	java/lang/Exception
    //   513	574	1161	java/lang/Exception
    //   574	590	1161	java/lang/Exception
    //   628	639	1169	java/lang/Exception
    //   668	679	1169	java/lang/Exception
    //   695	706	1169	java/lang/Exception
  }
  
  public void a(Map<String, Object> paramMap, c<?> paramc)
  {
    if (!l) {
      return;
    }
    Object localObject;
    if (C.c()) {
      if (paramc == null) {
        localObject = new c();
      }
    }
    for (;;)
    {
      C = ((c)localObject);
      c.a(paramMap, new gh(this, paramc));
      return;
      localObject = paramc;
      continue;
      localObject = C;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    j = paramBoolean;
  }
  
  public void a(boolean paramBoolean, Map paramMap)
  {
    boolean bool5 = true;
    boolean bool4 = true;
    boolean bool1;
    if ((E.getApplicationInfo().flags & 0x2) != 0) {
      bool1 = true;
    }
    for (;;)
    {
      if (bool1) {}
      try
      {
        Class.forName("com.github.nkzawa.socketio.client.Socket");
        x = true;
        if ((D != null) && (D.c() != null))
        {
          JSONObject localJSONObject2 = D.c().optJSONObject("settings");
          if (localJSONObject2 != null)
          {
            JSONObject localJSONObject1 = localJSONObject2.optJSONObject("enabledForReleaseModes");
            bool2 = localJSONObject2.optBoolean("setFromUserDevice", false);
            label120:
            boolean bool3;
            label164:
            int i1;
            if (localJSONObject1 != null) {
              if (bool1)
              {
                bool1 = localJSONObject1.optBoolean("dev", true);
                if ((paramMap != null) && (paramMap.containsKey("liveUpdate")))
                {
                  if ((!((Boolean)paramMap.get("liveUpdate")).booleanValue()) || (!w)) {
                    break label262;
                  }
                  bool3 = true;
                  i = bool3;
                  n = true;
                }
                if (!n)
                {
                  if (!bool2) {
                    break label279;
                  }
                  if (i == bool1) {
                    break label268;
                  }
                  i1 = 1;
                  label198:
                  if ((!bool1) || (!w)) {
                    break label273;
                  }
                }
              }
            }
            label262:
            label268:
            label273:
            for (bool1 = bool4;; bool1 = false)
            {
              i = bool1;
              if ((i1 != 0) && (!paramBoolean)) {
                a(null, null);
              }
              s();
              return;
              bool1 = false;
              break;
              bool1 = localJSONObject1.optBoolean("appStore", false);
              break label120;
              break label120;
              bool3 = false;
              break label164;
              i1 = 0;
              break label198;
            }
            label279:
            if ((bool1) && (w)) {}
            for (paramBoolean = bool5;; paramBoolean = false)
            {
              i = paramBoolean;
              break;
            }
          }
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          continue;
          boolean bool2 = false;
          Object localObject = null;
        }
      }
    }
  }
  
  public void b(Activity paramActivity)
  {
    if ((!l) || (b())) {}
    for (;;)
    {
      return;
      if (ck.c()) {
        ck.a("Checking for app link");
      }
      if (paramActivity != null) {
        try
        {
          paramActivity = paramActivity.getIntent();
          if ((paramActivity != null) && (paramActivity.getAction() != null))
          {
            if (ck.c()) {
              ck.a("Intent data string:" + paramActivity.getDataString());
            }
            if ((paramActivity.getAction().equals("android.intent.action.VIEW")) && (paramActivity.getDataString() != null) && (paramActivity.getDataString().startsWith("tl-")))
            {
              if (ck.c()) {
                ck.a("Found App Link!");
              }
              im.a().a(paramActivity.getDataString());
              return;
            }
          }
        }
        catch (Exception paramActivity)
        {
          ck.b("Error finding app link", paramActivity);
        }
      }
    }
  }
  
  public void b(String paramString, CodeBlockListener paramCodeBlockListener)
  {
    fe.a().a(paramString, paramCodeBlockListener);
  }
  
  public void b(boolean paramBoolean)
  {
    s = paramBoolean;
  }
  
  public boolean b()
  {
    return A;
  }
  
  public void c(boolean paramBoolean)
  {
    o = paramBoolean;
    if (paramBoolean) {
      v();
    }
    if (s) {
      s = false;
    }
  }
  
  public boolean c()
  {
    return B;
  }
  
  public c d()
  {
    return C;
  }
  
  public void d(boolean paramBoolean)
  {
    A = paramBoolean;
  }
  
  public void e(boolean paramBoolean)
  {
    v = paramBoolean;
  }
  
  public String f()
  {
    return g;
  }
  
  public boolean g()
  {
    return i;
  }
  
  public boolean h()
  {
    return p;
  }
  
  public boolean i()
  {
    return o;
  }
  
  public boolean j()
  {
    return l;
  }
  
  public eo k()
  {
    return D;
  }
  
  public hn l()
  {
    return c;
  }
  
  public el m()
  {
    return d;
  }
  
  public cc n()
  {
    return e;
  }
  
  public gn o()
  {
    return f;
  }
  
  public Context p()
  {
    return E;
  }
  
  public Activity q()
  {
    return F;
  }
  
  public String r()
  {
    return G;
  }
  
  public void s()
  {
    if ((((E.getApplicationInfo().flags & 0x2) != 0) || (g())) && (!iz.a(kb.caterpillar)) && (J == null))
    {
      J = new fb();
      J.a(this);
      J.a(E);
    }
  }
  
  public void t()
  {
    if (q) {
      return;
    }
    q = true;
    a(null, null);
    n().a("appActive");
    E();
  }
  
  public void u()
  {
    D.a(null);
    a(null, null);
  }
  
  public void v()
  {
    if ((t != null) && (s) && (new Date().getTime() - t.getTime() > u.intValue() * 60 * 1000))
    {
      q = false;
      u();
    }
    t = new Date();
  }
  
  public void w()
  {
    K.clear();
  }
  
  public void x()
  {
    D = null;
  }
  
  public boolean y()
  {
    return m;
  }
  
  public void z()
  {
    if ((i()) && (g()) && (j())) {
      fi.a().b();
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.fy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */