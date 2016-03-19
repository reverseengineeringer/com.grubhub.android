package com.paypal.android.sdk;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.provider.Settings.Secure;
import android.telephony.ServiceState;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TimeZone;
import java.util.Timer;
import java.util.UUID;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONObject;

public class bf
  implements LocationListener
{
  private static final String a = bf.class.getSimpleName();
  private static bc x = new bc();
  private static final Object y = new Object();
  private static bf z;
  private Context b;
  private String c;
  private long d;
  private long e;
  private int f;
  private int g;
  private long h;
  private String i;
  private z j;
  private bd k;
  private bd l;
  private String m;
  private Map n;
  private Map o;
  private Location p;
  private Timer q;
  private Handler r;
  private ab s;
  private String t;
  private String u;
  private boolean v;
  private String w;
  
  private static long a(Context paramContext)
  {
    if (paramContext == null) {}
    for (;;)
    {
      return 0L;
      try
      {
        if (Build.VERSION.SDK_INT > 8) {
          return getPackageManagergetPackageInfogetPackageName0firstInstallTime;
        }
        paramContext = getPackageManagergetApplicationInfogetPackageName0sourceDir;
        if (paramContext != null)
        {
          long l1 = new File(paramContext).lastModified();
          return l1;
        }
      }
      catch (PackageManager.NameNotFoundException paramContext) {}
    }
    return 0L;
  }
  
  public static bf a()
  {
    synchronized (y)
    {
      if (z == null) {
        z = new bf();
      }
      bf localbf = z;
      return localbf;
    }
  }
  
  private static String a(TelephonyManager paramTelephonyManager)
  {
    try
    {
      paramTelephonyManager = paramTelephonyManager.getSimOperatorName();
      return paramTelephonyManager;
    }
    catch (SecurityException paramTelephonyManager)
    {
      ch.a(a, "Known SecurityException on some devices", paramTelephonyManager);
    }
    return null;
  }
  
  private void a(bd parambd1, bd parambd2)
  {
    boolean bool2 = true;
    if (parambd1 == null) {}
    do
    {
      return;
      ac = new HashMap(n);
      o = new HashMap(n);
      if (parambd2 == null) {
        break;
      }
      parambd1 = parambd1.a(parambd2);
      parambd2 = new ArrayList();
      parambd2.add(new BasicNameValuePair("appGuid", c));
      parambd2.add(new BasicNameValuePair("libraryVersion", d()));
      parambd2.add(new BasicNameValuePair("additionalData", parambd1.toString()));
      ch.a(a, "Dyson Risk Data " + parambd1.toString());
    } while (j == null);
    parambd1 = j.g();
    boolean bool3 = j.h();
    ch.a(a, "new LogRiskMetadataRequest to: " + parambd1);
    Object localObject = a;
    StringBuilder localStringBuilder = new StringBuilder("endpointIsStage: ").append(bool3).append(" (using SSL: ");
    if (!bool3)
    {
      bool1 = true;
      label219:
      ch.a((String)localObject, bool1 + ")");
      localObject = r;
      if (bool3) {
        break label287;
      }
    }
    label287:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      parambd1 = new bt(parambd1, parambd2, (Handler)localObject, bool1, null);
      bv.a().a(parambd1);
      return;
      parambd1 = parambd1.a();
      break;
      bool1 = false;
      break label219;
    }
  }
  
  private void a(z paramz)
  {
    j = paramz;
    ch.a(a, "Configuration loaded");
    ch.a(a, "URL:     " + j.a());
    ch.a(a, "Version: " + j.b());
    k();
    q = new Timer();
    long l1 = j.c();
    long l2 = j.d();
    long l3 = j.e();
    ch.a(a, "Sending logRiskMetadata every " + l1 + " seconds.");
    ch.a(a, "sessionTimeout set to " + l2 + " seconds.");
    ch.a(a, "compTimeout set to    " + l3 + " seconds.");
    d = (l1 * 1000L);
    e = (l3 * 1000L);
    bk.a(l2 * 1000L);
    if ((j != null) && (v))
    {
      k();
      q = new Timer();
      ch.a(a, "Starting LogRiskMetadataTask");
      q.scheduleAtFixedRate(new bg(this), 0L, d);
    }
  }
  
  private static long b(Context paramContext)
  {
    if (paramContext == null) {}
    for (;;)
    {
      return 0L;
      try
      {
        if (Build.VERSION.SDK_INT > 8) {
          return getPackageManagergetPackageInfogetPackageName0lastUpdateTime;
        }
        paramContext = getPackageManagergetApplicationInfogetPackageName0sourceDir;
        if (paramContext != null)
        {
          long l1 = new File(paramContext).lastModified();
          return l1;
        }
      }
      catch (PackageManager.NameNotFoundException paramContext) {}
    }
    return 0L;
  }
  
  public static String d()
  {
    return String.format(Locale.US, "Dyson/%S (%S %S)", new Object[] { "3.3.1.release", "Android", Build.VERSION.RELEASE });
  }
  
  private static String i()
  {
    return UUID.randomUUID().toString().replaceAll("-", "");
  }
  
  private String j()
  {
    StringBuilder localStringBuilder = new StringBuilder("https://b.stats.paypal.com/counter.cgi?p=");
    if ((s == null) || (s == ab.a)) {
      return "Beacon not recognize host app";
    }
    int i1 = s.a();
    if (u == null) {
      return "Beacon pairing id empty";
    }
    localStringBuilder.append(u).append("&i=");
    Object localObject = ch.b();
    if (((String)localObject).equals("")) {}
    for (;;)
    {
      try
      {
        localStringBuilder.append(bc.a("emptyIp")).append("&t=");
        localStringBuilder.append(String.valueOf(System.currentTimeMillis() / 1000L)).append("&a=").append(i1);
        ch.a(a, "Beacon Request URL " + localStringBuilder.toString());
        localObject = new bo(localStringBuilder.toString(), c, t, ch.a(b), r);
        bv.a().a((bu)localObject);
        return localStringBuilder.toString();
      }
      catch (IOException localIOException)
      {
        ch.a(a, "error reading property file", localIOException);
        continue;
      }
      localStringBuilder.append(localIOException).append("&t=");
    }
  }
  
  private void k()
  {
    if (q != null) {
      q.cancel();
    }
  }
  
  private bd l()
  {
    if (b == null) {
      return null;
    }
    bd localbd = new bd();
    Object localObject5;
    NetworkInfo localNetworkInfo;
    label110:
    label139:
    label216:
    label302:
    y localy;
    int i1;
    Object localObject2;
    try
    {
      localce = j.i();
      localTelephonyManager = (TelephonyManager)b.getSystemService("phone");
      localObject3 = (WifiManager)b.getSystemService("wifi");
      localObject1 = (ConnectivityManager)b.getSystemService("connectivity");
      if (!ch.a(b, "android.permission.ACCESS_WIFI_STATE")) {
        break label1849;
      }
      localObject5 = ((WifiManager)localObject3).getConnectionInfo();
      if (!ch.a(b, "android.permission.ACCESS_NETWORK_STATE")) {
        break label1855;
      }
      localNetworkInfo = ((ConnectivityManager)localObject1).getActiveNetworkInfo();
      if (ch.a(b, "android.permission.ACCESS_COARSE_LOCATION")) {
        break label1833;
      }
      if (!ch.a(b, "android.permission.ACCESS_FINE_LOCATION")) {
        break label1861;
      }
    }
    catch (RuntimeException localRuntimeException)
    {
      for (;;)
      {
        ce localce;
        TelephonyManager localTelephonyManager;
        Object localObject3;
        Object localObject1;
        throw localRuntimeException;
        i1 = ((CdmaCellLocation)localObject4).getBaseStationId();
        continue;
        i1 = ((CdmaCellLocation)localObject4).getNetworkId();
        continue;
        i1 = ((CdmaCellLocation)localObject4).getSystemId();
        continue;
        localObject4 = ((WifiInfo)localObject5).getBSSID();
        continue;
        i1 = localRuntimeException.getCid();
        continue;
        localObject4 = j.b();
        continue;
        localObject4 = localNetworkInfo.getTypeName();
        continue;
        localObject4 = new Location(p);
      }
    }
    catch (Exception localException1)
    {
      for (;;)
      {
        ch.a(a, "Unknown error in RiskComponent", localException1);
        break;
        i1 = localException1.getLac();
        continue;
        localObject2 = ((WifiInfo)localObject5).getMacAddress();
        continue;
        localObject2 = ((WifiInfo)localObject5).getSSID();
        continue;
        localObject2 = null;
        continue;
        boolean bool = false;
        continue;
        continue;
        i1 = 1;
        continue;
        continue;
        bool = true;
      }
    }
    bool = ch.a(b, "android.permission.READ_PHONE_STATE");
    switch (localTelephonyManager.getPhoneType())
    {
    case 0: 
      A = ("unknown (" + localTelephonyManager.getPhoneType() + ")");
      localObject3 = null;
      localObject1 = null;
      if (!localce.a(cf.w)) {
        A = null;
      }
      if (localce.a(cf.a)) {
        a = c;
      }
      if (localce.a(cf.O)) {
        S = u;
      }
      if (localce.a(cf.M))
      {
        if (s == null) {
          O = ab.a.a();
        }
      }
      else
      {
        if (localce.a(cf.N)) {
          P = t;
        }
        if (localce.a(cf.u)) {
          X = w;
        }
        if (localce.a(cf.S)) {
          V = Settings.Secure.getString(b.getContentResolver(), "android_id");
        }
        localy = ch.a(b);
        if (localce.a(cf.b)) {
          b = localy.a();
        }
        if (localce.a(cf.c)) {
          c = localy.b();
        }
        if (localce.a(cf.d))
        {
          if (localObject3 != null) {
            break label1697;
          }
          i1 = -1;
          d = i1;
        }
        if (localce.a(cf.I))
        {
          if (localObject3 != null) {
            break label1706;
          }
          i1 = -1;
          M = i1;
        }
        if (localce.a(cf.J))
        {
          if (localObject3 != null) {
            break label1715;
          }
          i1 = -1;
          L = i1;
        }
        if (localce.a(cf.e))
        {
          if (localObject5 != null) {
            break label1724;
          }
          localObject3 = null;
          e = ((String)localObject3);
        }
        if (localce.a(cf.f))
        {
          if (localObject1 != null) {
            break label1734;
          }
          i1 = -1;
          f = i1;
        }
        if (localce.a(cf.H)) {
          N = localTelephonyManager.getNetworkOperator();
        }
        g = "3.3.1.release";
        h = i;
        if (j != null) {
          break label1742;
        }
        localObject3 = null;
        i = ((String)localObject3);
        if (localce.a(cf.g))
        {
          if (localNetworkInfo != null) {
            break label1754;
          }
          localObject3 = null;
          j = ((String)localObject3);
        }
        if (localce.a(cf.h))
        {
          if (!bool) {
            break label1894;
          }
          localObject3 = localTelephonyManager.getDeviceId();
          label646:
          k = ((String)localObject3);
        }
        if (localce.a(cf.i)) {
          l = Build.MODEL;
        }
        if (localce.a(cf.j)) {
          m = Build.DEVICE;
        }
        if (localce.a(cf.k)) {
          n = SystemClock.uptimeMillis();
        }
        if (localce.a(cf.l)) {
          o = ch.b();
        }
        if (localce.a(cf.l)) {
          p = ch.a(true);
        }
        if (localce.a(cf.n))
        {
          if (!bool) {
            break label1900;
          }
          localObject3 = localTelephonyManager.getLine1Number();
          label771:
          r = ((String)localObject3);
        }
        if (localce.a(cf.o)) {
          s = ch.a();
        }
        if (localce.a(cf.p)) {
          t = Locale.getDefault().getCountry();
        }
        if (localce.a(cf.q)) {
          u = Locale.getDefault().getLanguage();
        }
        if (localce.a(cf.r))
        {
          if (p != null) {
            break label1764;
          }
          localObject3 = null;
          v = ((Location)localObject3);
        }
        if (localce.a(cf.s))
        {
          if (localObject1 != null) {
            break label1794;
          }
          i1 = -1;
          w = i1;
        }
        if (localce.a(cf.t))
        {
          if (localObject5 != null) {
            break label1802;
          }
          localObject1 = null;
          x = ((String)localObject1);
        }
        if (localce.a(cf.v)) {
          z = Build.VERSION.RELEASE;
        }
        if (localce.a(cf.x)) {
          B = bk.b();
        }
        if (localce.a(cf.y)) {
          C = Boolean.valueOf(new ServiceState().getRoaming());
        }
        if (localce.a(cf.z)) {
          D = a(localTelephonyManager);
        }
        if (localce.a(cf.R)) {
          if (!bool) {
            break label1906;
          }
        }
      }
      break;
    }
    label1697:
    label1706:
    label1715:
    label1724:
    label1734:
    label1742:
    label1754:
    label1764:
    label1794:
    label1802:
    label1820:
    label1825:
    label1830:
    label1833:
    label1841:
    label1846:
    label1849:
    label1855:
    label1861:
    label1866:
    label1872:
    label1877:
    label1889:
    label1894:
    label1900:
    label1906:
    for (localObject1 = localTelephonyManager.getSimSerialNumber();; localObject2 = null)
    {
      E = ((String)localObject1);
      if (Build.VERSION.SDK_INT >= 9) {
        Y = Build.SERIAL;
      }
      if (localce.a(cf.A)) {
        F = Boolean.valueOf(b.getPackageManager().hasSystemFeature("android.hardware.telephony"));
      }
      if (localce.a(cf.B))
      {
        if (localObject5 == null)
        {
          localObject1 = null;
          G = ((String)localObject1);
        }
      }
      else
      {
        if (localce.a(cf.C))
        {
          if (!bool) {
            break label1820;
          }
          localObject1 = localTelephonyManager.getSubscriberId();
          H = ((String)localObject1);
        }
        if (localce.a(cf.D)) {
          I = System.currentTimeMillis();
        }
        if (localce.a(cf.E)) {
          J = ch.c();
        }
        if (localce.a(cf.F)) {
          K = TimeZone.getDefault().getDisplayName();
        }
        if (localce.a(cf.K))
        {
          if ((Build.BRAND.equalsIgnoreCase("generic")) || (Build.PRODUCT.equals("sdk")) || (Build.HARDWARE.equals("goldfish")) || (Build.FINGERPRINT.startsWith("generic")) || (Build.MANUFACTURER.equals("unknown"))) {
            break label1841;
          }
          if (!Build.PRODUCT.matches(".*_?sdk_?.*")) {
            break label1825;
          }
          break label1841;
          Q = Boolean.valueOf(bool);
        }
        if (localce.a(cf.L)) {
          R = Boolean.valueOf(bm.a());
        }
        if (localce.a(cf.m))
        {
          localObject1 = new ArrayList();
          if (j != null)
          {
            localObject3 = j.f();
            try
            {
              localObject3 = ((List)localObject3).iterator();
              while (((Iterator)localObject3).hasNext())
              {
                localObject5 = (String)((Iterator)localObject3).next();
                if (ch.a(b.getPackageManager(), new Intent().setComponent(ComponentName.unflattenFromString((String)localObject5)))) {
                  ((List)localObject1).add(localObject5);
                }
              }
              if (((List)localObject1).size() != 0) {
                break label1830;
              }
            }
            catch (Exception localException2)
            {
              ch.a(a, "knownApps error", null);
            }
          }
          localObject1 = null;
          q = ((List)localObject1);
        }
        if (localce.a(cf.P)) {
          T = a(b);
        }
        if (localce.a(cf.Q)) {
          U = b(b);
        }
        ac = n;
        if (localce.a(cf.T)) {
          Z = ch.b(b);
        }
        if (localce.a(cf.U)) {
          ab = ch.e();
        }
        if (localce.a(cf.V)) {
          aa = ch.d();
        }
        if (localce.a(cf.G)) {
          W = ch.a(b, localbd);
        }
        if (localce.a(cf.v)) {
          break label1846;
        }
        y = null;
        break label1846;
        A = "none";
        localObject4 = null;
        localObject1 = null;
        break label216;
        A = "gsm";
        if (i1 == 0) {
          break label1872;
        }
        localObject1 = (GsmCellLocation)ch.a(localTelephonyManager.getCellLocation(), GsmCellLocation.class);
        break label1866;
        A = "cdma";
        if (i1 == 0) {
          break label1889;
        }
        localObject1 = (CdmaCellLocation)ch.a(localTelephonyManager.getCellLocation(), CdmaCellLocation.class);
        break label1877;
        O = s.a();
        break label302;
      }
      return localbd;
      localObject5 = null;
      break;
      localNetworkInfo = null;
      break label110;
      i1 = 0;
      break label139;
      for (;;)
      {
        localObject4 = null;
        break;
        localObject2 = null;
      }
      for (;;)
      {
        localy = null;
        localObject4 = localObject2;
        localObject2 = localy;
        break;
        localObject2 = null;
      }
      Object localObject4 = null;
      break label646;
      localObject4 = null;
      break label771;
    }
  }
  
  public final String a(Context paramContext, String paramString1, ab paramab, String paramString2, String paramString3, boolean paramBoolean, String paramString4, String paramString5)
  {
    b = paramContext;
    c = paramString1;
    v = paramBoolean;
    if (paramab == null) {}
    for (s = ab.a;; s = paramab)
    {
      t = paramString2;
      k = null;
      l = null;
      w = paramString5;
      n = new HashMap();
      g = 0;
      f = 0;
      u = i();
      paramContext = paramString3;
      if (paramString3 == null) {
        paramContext = "https://www.paypalobjects.com/webstatic/risk/dyson_config_android_v3.json";
      }
      try
      {
        i = paramContext;
        f();
        if (r == null)
        {
          r = new bj(this);
          paramContext = (LocationManager)b.getSystemService("location");
          if (paramContext != null)
          {
            onLocationChanged(ch.a(paramContext));
            if (paramContext.isProviderEnabled("network")) {
              paramContext.requestLocationUpdates("network", 3600000L, 10.0F, this);
            }
          }
        }
        k();
      }
      catch (Exception paramContext)
      {
        for (;;)
        {
          ch.a(a, null, paramContext);
        }
      }
      j();
      a(new z(b));
      return u;
    }
  }
  
  public final void a(Message paramMessage)
  {
    try
    {
      switch (what)
      {
      case 10: 
        ch.a(a, "Load Configuration URL: " + obj);
        return;
      }
    }
    catch (Exception paramMessage)
    {
      ch.a(a, null, paramMessage);
      return;
    }
    ch.a(a, "Dyson Async URL: " + obj);
    return;
    ch.a(a, "Beacon URL: " + obj);
    return;
    paramMessage = (z)obj;
    if (paramMessage != null)
    {
      a(paramMessage);
      return;
      paramMessage = (String)obj;
      ch.a(a, "LogRiskMetadataRequest Server returned: " + paramMessage);
      paramMessage = Uri.parse("?" + paramMessage);
    }
    try
    {
      paramMessage = paramMessage.getQueryParameter("responseEnvelope.ack");
      Map.Entry localEntry1;
      int i1;
      Iterator localIterator2;
      if ("Success".equals(paramMessage))
      {
        ch.a(a, "LogRiskMetadataRequest Success");
        paramMessage = new HashMap(n);
        Iterator localIterator1 = n.entrySet().iterator();
        if (localIterator1.hasNext())
        {
          localEntry1 = (Map.Entry)localIterator1.next();
          i1 = 0;
          localIterator2 = o.entrySet().iterator();
        }
      }
      for (;;)
      {
        if (localIterator2.hasNext())
        {
          Map.Entry localEntry2 = (Map.Entry)localIterator2.next();
          if (!((String)localEntry2.getKey()).equals(localEntry1.getKey())) {
            break label564;
          }
          if (localEntry2.getValue() == null) {
            if (localEntry1.getValue() != null) {
              break label564;
            }
          } else if (!localEntry2.getValue().equals(localEntry1.getValue())) {
            break label564;
          }
        }
        else
        {
          if (i1 == 0) {
            break;
          }
          paramMessage.remove(localEntry1.getKey());
          break;
          n = paramMessage;
          k = l;
          l = null;
          return;
          ch.a(a, "Beacon returned: " + obj);
          return;
          ch.a(a, "LoadConfigurationRequest failed.");
          return;
          ch.a(a, "LogRiskMetadataRequest failed.");
          return;
          ch.a(a, "BeaconRequest failed " + ((Exception)obj).getMessage());
          return;
          return;
        }
        i1 = 1;
      }
    }
    catch (UnsupportedOperationException paramMessage)
    {
      label564:
      for (;;)
      {
        paramMessage = null;
      }
    }
  }
  
  public final void b()
  {
    new Timer().schedule(new bh(this), 0L);
  }
  
  public final JSONObject c()
  {
    bk.a();
    k = l();
    if (k == null) {
      return null;
    }
    return k.a();
  }
  
  public final void e()
  {
    bk.a();
    k = l();
    a(k, null);
  }
  
  public final void f()
  {
    ch.a(a, "Host activity detected");
    h = System.currentTimeMillis();
  }
  
  public final String g()
  {
    String str = i();
    u = str;
    e();
    j();
    return str;
  }
  
  public void onLocationChanged(Location paramLocation)
  {
    if (paramLocation != null)
    {
      p = new Location(paramLocation);
      ch.a(a, "Location Update: " + paramLocation.toString());
    }
  }
  
  public void onProviderDisabled(String paramString) {}
  
  public void onProviderEnabled(String paramString) {}
  
  public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle) {}
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.bf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */