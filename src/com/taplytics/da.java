package com.taplytics;

import android.util.Pair;
import java.lang.reflect.Method;
import org.json.JSONArray;
import org.json.JSONObject;

class da
  implements Runnable
{
  da(cz paramcz) {}
  
  public void run()
  {
    int i = 0;
    for (;;)
    {
      try
      {
        cy.a(a.a).setAccessible(true);
        Object localObject = cy.a(a.a).invoke(cy.b(a.a), new Object[] { fy.e().p() });
        cy.a(a.a).setAccessible(false);
        cy.a(a.a, localObject.getClass().getDeclaredMethod("getEvents", new Class[] { Long.TYPE, Integer.TYPE }));
        cy.c(a.a).setAccessible(true);
        localObject = (Pair)cy.c(a.a).invoke(localObject, new Object[] { Long.valueOf(Long.MAX_VALUE), Integer.valueOf(30) });
        cy.c(a.a).setAccessible(false);
        if (i < ((JSONArray)second).length())
        {
          if (!(((JSONArray)second).opt(i) instanceof JSONObject)) {
            break label404;
          }
          JSONObject localJSONObject = ((JSONArray)second).getJSONObject(i);
          if (localJSONObject.optLong("event_id") > cy.d(a.a))
          {
            cy.a(a.a, localJSONObject.optLong("event_id"));
            fy.e().n().a("amplitude", localJSONObject.optString("event_type"), null, localJSONObject.optJSONObject("event_properties"));
            if (ck.c()) {
              ck.a("logged amplitude event");
            }
            if (localJSONObject.optLong("event_id") > cy.d(a.a)) {
              cy.a(a.a, localJSONObject.optLong("event_id"));
            }
          }
          else
          {
            long l1 = i;
            long l2 = cy.d(a.a);
            long l3 = localJSONObject.optLong("event_id");
            i = (int)(l1 + (l2 - l3));
          }
        }
      }
      catch (Exception localException)
      {
        ck.c("error while getting amplitude event: " + localException.getMessage());
      }
      return;
      label404:
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.da
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */