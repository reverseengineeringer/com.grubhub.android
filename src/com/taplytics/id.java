package com.taplytics;

import android.os.AsyncTask;
import com.android.volley.DefaultRetryPolicy;
import com.android.volley.RequestQueue;
import com.android.volley.toolbox.JsonObjectRequest;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public class id
  extends AsyncTask<Object, Void, Void>
{
  public id(hn paramhn) {}
  
  protected Void a(Object... paramVarArgs)
  {
    if (paramVarArgs[0] == null) {}
    for (;;)
    {
      try
      {
        localObject1 = new HashMap();
        paramVarArgs = (ij)paramVarArgs[1];
        StringBuilder localStringBuilder = new StringBuilder(hn.b(a) + hn.c(a) + "/api/v1/clientConfig");
        String str1 = localStringBuilder.toString();
        Object localObject2 = fy.e();
        ((fy)localObject2).m().a(localStringBuilder);
        String str2 = ((fy)localObject2).n().a().a("user_id");
        if (str2 != null) {
          ((Map)localObject1).put("uid", str2);
        }
        localObject2 = ((fy)localObject2).n().a().a("email");
        if (localObject2 != null) {
          ((Map)localObject1).put("email", localObject2);
        }
        iz.a((Map)localObject1, localStringBuilder);
        localObject1 = new Date();
        if (ck.c()) {
          ck.a("Get Properties From Server, url: " + localStringBuilder.toString().replaceAll(" ", "%20"));
        }
        paramVarArgs = new JsonObjectRequest(0, localStringBuilder.toString().replaceAll(" ", "%20"), new JSONObject(), new ie(this, (Date)localObject1, paramVarArgs), new if(this, str1, paramVarArgs));
        paramVarArgs.setTag("get_clientConfig");
        paramVarArgs.setRetryPolicy(new DefaultRetryPolicy(15000, 3, 1.0F));
        hn.a(a).add(paramVarArgs);
        return null;
      }
      catch (Throwable paramVarArgs)
      {
        Object localObject1;
        if (!(paramVarArgs instanceof Exception)) {
          break;
        }
      }
      localObject1 = (Map)paramVarArgs[0];
    }
    for (paramVarArgs = (Exception)paramVarArgs;; paramVarArgs = null)
    {
      ck.b("error getting TLProperties from Server", paramVarArgs);
      return null;
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.id
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */