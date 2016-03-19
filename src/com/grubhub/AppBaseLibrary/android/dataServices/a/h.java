package com.grubhub.AppBaseLibrary.android.dataServices.a;

import android.content.Context;
import android.text.TextUtils;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIMenuItem;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIMenuSection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;

public class h
  extends a<ArrayList<GHSIFoodMenuDataModel.GHSIMenuItem>>
  implements i
{
  private static final String b = h.class.getSimpleName();
  private GHSIFoodMenuDataModel c;
  private String d;
  
  public h(Context paramContext, String paramString, GHSIFoodMenuDataModel paramGHSIFoodMenuDataModel, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
    d = paramString;
    c = paramGHSIFoodMenuDataModel;
  }
  
  private void a(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    if (c != null)
    {
      Object localObject1 = c.getMenuSections();
      if ((!TextUtils.isEmpty(paramString)) && (localObject1 != null) && (((ArrayList)localObject1).size() > 0))
      {
        String str = paramString.toLowerCase(Locale.US);
        Iterator localIterator = ((ArrayList)localObject1).iterator();
        while (localIterator.hasNext())
        {
          Object localObject2 = (GHSIFoodMenuDataModel.GHSIMenuSection)localIterator.next();
          if ((localObject2 != null) && (((GHSIFoodMenuDataModel.GHSIMenuSection)localObject2).getMenuSectionMenuItems() != null) && (((GHSIFoodMenuDataModel.GHSIMenuSection)localObject2).getMenuSectionMenuItems().size() > 0) && (!((GHSIFoodMenuDataModel.GHSIMenuSection)localObject2).getMenuSectionName().equals("Most Popular")) && (!((GHSIFoodMenuDataModel.GHSIMenuSection)localObject2).getMenuSectionName().equals("Previously Ordered")))
          {
            if (((GHSIFoodMenuDataModel.GHSIMenuSection)localObject2).getMenuSectionName() != null)
            {
              paramString = ((GHSIFoodMenuDataModel.GHSIMenuSection)localObject2).getMenuSectionName().toLowerCase(Locale.US);
              label162:
              if (((GHSIFoodMenuDataModel.GHSIMenuSection)localObject2).getMenuSectionDescription() == null) {
                break label225;
              }
            }
            label225:
            for (localObject1 = ((GHSIFoodMenuDataModel.GHSIMenuSection)localObject2).getMenuSectionDescription().toLowerCase(Locale.US);; localObject1 = "")
            {
              if ((!paramString.contains(str)) && (!((String)localObject1).contains(str))) {
                break label231;
              }
              localArrayList.addAll(((GHSIFoodMenuDataModel.GHSIMenuSection)localObject2).getMenuSectionMenuItems());
              break;
              paramString = "";
              break label162;
            }
            label231:
            localObject2 = ((GHSIFoodMenuDataModel.GHSIMenuSection)localObject2).getMenuSectionMenuItems().iterator();
            label243:
            label294:
            label346:
            label352:
            label356:
            for (;;)
            {
              GHSIFoodMenuDataModel.GHSIMenuItem localGHSIMenuItem;
              if (((Iterator)localObject2).hasNext())
              {
                localGHSIMenuItem = (GHSIFoodMenuDataModel.GHSIMenuItem)((Iterator)localObject2).next();
                if (localGHSIMenuItem == null) {
                  continue;
                }
                if (localGHSIMenuItem.getMenuItemName() == null) {
                  break label346;
                }
                paramString = localGHSIMenuItem.getMenuItemName().toLowerCase(Locale.US);
                if (localGHSIMenuItem.getMenuItemDescription() == null) {
                  break label352;
                }
              }
              for (localObject1 = localGHSIMenuItem.getMenuItemDescription().toLowerCase(Locale.US);; localObject1 = "")
              {
                if ((!paramString.contains(str)) && (!((String)localObject1).contains(str))) {
                  break label356;
                }
                localArrayList.add(localGHSIMenuItem);
                break label243;
                break;
                paramString = "";
                break label294;
              }
            }
          }
        }
      }
    }
    onResponse(localArrayList);
  }
  
  public void a()
  {
    a(d);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */