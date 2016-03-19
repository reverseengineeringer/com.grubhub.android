package com.urbanairship.actions;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import com.urbanairship.R.string;
import com.urbanairship.UAirship;
import java.util.ArrayList;
import java.util.List;

public class ShareAction
  extends Action
{
  public static final String DEFAULT_REGISTRY_NAME = "share_action";
  public static final String DEFAULT_REGISTRY_SHORT_NAME = "^s";
  private static final List<String> ignoredPackages = new ArrayList() {};
  
  public boolean acceptsArguments(ActionArguments paramActionArguments)
  {
    switch (3.$SwitchMap$com$urbanairship$actions$Situation[paramActionArguments.getSituation().ordinal()])
    {
    }
    do
    {
      return false;
    } while (paramActionArguments.getValue().getString() == null);
    return true;
  }
  
  protected boolean excludePackage(String paramString)
  {
    return ignoredPackages.contains(paramString);
  }
  
  public ActionResult perform(final ActionArguments paramActionArguments)
  {
    final Context localContext = UAirship.getApplicationContext();
    paramActionArguments = new Intent("android.intent.action.SEND").setType("text/plain").putExtra("android.intent.extra.TEXT", paramActionArguments.getValue().getString());
    ArrayList localArrayList1 = new ArrayList();
    List localList = UAirship.getPackageManager().queryIntentActivities(paramActionArguments, 0);
    ArrayList localArrayList2 = new ArrayList();
    int i = 0;
    while (i < localList.size())
    {
      String str = getactivityInfo.packageName;
      if ((!excludePackage(str)) && (!localArrayList2.contains(str)))
      {
        localArrayList2.add(str);
        Intent localIntent = new Intent(paramActionArguments);
        localIntent.setPackage(str);
        localArrayList1.add(localIntent);
      }
      i += 1;
    }
    if (localArrayList1.isEmpty()) {}
    for (paramActionArguments = Intent.createChooser(paramActionArguments.setPackage(""), localContext.getString(R.string.ua_share_dialog_title)).setFlags(268435456);; paramActionArguments = Intent.createChooser((Intent)localArrayList1.remove(0), localContext.getString(R.string.ua_share_dialog_title)).putExtra("android.intent.extra.INITIAL_INTENTS", (Parcelable[])localArrayList1.toArray(new Intent[localArrayList1.size()])).setFlags(268435456))
    {
      new Handler(Looper.getMainLooper()).post(new Runnable()
      {
        public void run()
        {
          localContext.startActivity(paramActionArguments);
        }
      });
      return ActionResult.newEmptyResult();
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.actions.ShareAction
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */