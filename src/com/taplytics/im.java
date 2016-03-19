package com.taplytics;

import android.app.AlertDialog;
import android.os.Handler;
import android.os.Looper;
import io.socket.client.IO;
import io.socket.client.IO.Options;
import io.socket.client.Socket;
import io.socket.emitter.Emitter;
import java.net.URISyntaxException;
import org.json.JSONObject;

public class im
{
  private static final im c = new im();
  public boolean a = false;
  public boolean b = false;
  private Socket d = null;
  private String e = null;
  private JSONObject f;
  private boolean g = false;
  private int h = 0;
  private c i = new c();
  private AlertDialog j = null;
  
  public static im a()
  {
    return c;
  }
  
  public void a(jm paramjm)
  {
    String str = fy.e().l().a();
    if (ck.c()) {
      ck.a("connecting socket");
    }
    try
    {
      if ((d == null) || (!d.connected()))
      {
        boolean bool = iz.a(kb.bison);
        if (!bool) {
          try
          {
            c();
            IO.Options localOptions = new IO.Options();
            forceNew = true;
            reconnection = true;
            reconnectionDelay = 5000L;
            timeout = -1L;
            d = IO.socket(str, localOptions);
            b = false;
            d.on("connect", new ix(this, paramjm)).on("connectTestDevice", new iw(this)).on("foundTestDevice", new iv(this)).on("clientShowExperiment", new iu(this)).on("clientHideExperiment", new it(this)).on("clientPickElement", new is(this)).on("highlightTapElement", new ir(this)).on("experimentUpdated", new iq(this)).on("dataUpdated", new ip(this)).on("chooseView", new io(this)).on("foundView", new jl(this)).on("pairTokenSuccessful", new ji(this)).on("pairTokenFailed", new jh(this)).on("disconnect", new jg(this, paramjm)).on("error", new jf(this)).on("reconnect_attempt", new je(this)).on("reconnect_failed", new jd(this)).on("connect_error", new iy(this)).on("subscribeFinished", new in(this));
            if (ck.c()) {
              ck.a("Connect SocketIO with path: " + str);
            }
            d.connect();
            return;
          }
          catch (URISyntaxException localURISyntaxException)
          {
            for (;;)
            {
              ck.b("Socket URI path error", localURISyntaxException);
            }
          }
        }
      }
      if (paramjm == null) {
        return;
      }
    }
    catch (Exception paramjm)
    {
      ck.b("socketio problem", paramjm);
      return;
    }
    paramjm.a(Boolean.valueOf(true));
  }
  
  public void a(String paramString)
  {
    if (g) {}
    do
    {
      return;
      if (paramString != null) {
        break;
      }
    } while (!ck.c());
    ck.a("Missing link to pair device");
    return;
    String str1 = paramString.substring(3);
    String str2 = str1.substring(str1.indexOf("://") + 3, str1.length());
    fy.e().a(str2);
    eo localeo = fy.e().k();
    try
    {
      if (!a)
      {
        a(new ja(this, paramString));
        return;
      }
      if ((fy.e().f() != null) && (localeo != null) && (localeo.c() != null))
      {
        String str3 = localeo.b();
        if (str3 != null) {
          try
          {
            if (f == null) {
              f = new JSONObject();
            }
            f.put("projectToken", fy.e().f());
            f.put("projectConnectToken", str1.substring(0, str1.indexOf("://")));
            f.put("deviceToken", str2);
            f.put("session_id", localeo.b());
            a("pairDeviceWithToken", f);
            g = true;
            return;
          }
          catch (Exception paramString)
          {
            ck.b("Sending pairing device socket", paramString);
            return;
          }
        }
      }
      new Handler(Looper.getMainLooper()).postDelayed(new jc(this, paramString), 1000L);
      return;
    }
    catch (Exception paramString) {}
  }
  
  public void a(String paramString, Object paramObject)
  {
    if (d != null)
    {
      if (ck.c()) {
        ck.a("Emit Socket Event: " + paramString + ", data: " + paramObject.toString());
      }
      if (paramObject != JSONObject.NULL) {
        d.emit(paramString, new Object[] { paramObject });
      }
    }
    else
    {
      return;
    }
    d.emit(paramString, new Object[0]);
  }
  
  public c b()
  {
    return i;
  }
  
  public void c()
  {
    if (d != null)
    {
      d.disconnect();
      a = false;
      b = false;
      d = null;
    }
  }
  
  public void d()
  {
    eo localeo = fy.e().k();
    if ((!fy.e().b()) && (localeo != null) && (localeo.c() != null) && (a)) {
      fy.e().n().a("tlHasAppLinking");
    }
    try
    {
      JSONObject localJSONObject = new JSONObject();
      if ((localeo.c() != null) && (localeo.c().has("_id"))) {
        localJSONObject.put("project_id", localeo.c().opt("_id"));
      }
      if ((localeo.j() != null) && (localeo.j().has("_id"))) {
        localJSONObject.put("appUser_id", localeo.j().opt("_id"));
      }
      if (localeo.b() != null) {
        localJSONObject.put("session_id", localeo.b());
      }
      a("hasAppLinking", localJSONObject);
      fy.e().d(true);
      return;
    }
    catch (Exception localException)
    {
      ck.b("Sending hasAppLinking Socket", localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.im
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */