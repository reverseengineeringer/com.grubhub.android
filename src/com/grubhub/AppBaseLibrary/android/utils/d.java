package com.grubhub.AppBaseLibrary.android.utils;

import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCreateOrderReviewDataModel.GHSAnswerDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSOrderReviewCheckDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewDataModel.GHSOrderReviewState;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewSurveyDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewSurveyDataModel.GHSAnswerType;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewSurveyDataModel.GHSIQuestionDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewSurveyDataModel.GHSIRulesDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewSurveyDataModel.GHSSurveyType;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderDataModel;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class d
{
  private static b a;
  
  protected static b a()
  {
    if (a == null) {
      a = GHSApplication.a().b();
    }
    return a;
  }
  
  public static e a(ArrayList<GHSIOrderReviewSurveyDataModel> paramArrayList)
  {
    if ((paramArrayList != null) && (!paramArrayList.isEmpty()))
    {
      Iterator localIterator1 = paramArrayList.iterator();
      if (localIterator1.hasNext())
      {
        paramArrayList = (GHSIOrderReviewSurveyDataModel)localIterator1.next();
        if ((paramArrayList == null) || (paramArrayList.getType() == null) || (paramArrayList.getType() == GHSIOrderReviewSurveyDataModel.GHSSurveyType.UNKNOWN)) {
          if ((paramArrayList == null) || (paramArrayList.getQuestions() == null) || (paramArrayList.getQuestions().isEmpty()) || (paramArrayList.getQuestions().get(0) == null)) {
            break label341;
          }
        }
      }
    }
    label180:
    label292:
    label332:
    label341:
    for (paramArrayList = ((GHSIOrderReviewSurveyDataModel.GHSIQuestionDataModel)paramArrayList.getQuestions().get(0)).getQuestionId();; paramArrayList = null)
    {
      return new e(false, paramArrayList);
      if (paramArrayList.getType() != GHSIOrderReviewSurveyDataModel.GHSSurveyType.RATING_REVIEW) {
        break;
      }
      int j;
      int i;
      int m;
      int k;
      Object localObject;
      if ((paramArrayList.getQuestions() != null) && (!paramArrayList.getQuestions().isEmpty()))
      {
        Iterator localIterator2 = paramArrayList.getQuestions().iterator();
        j = 0;
        i = 0;
        paramArrayList = null;
        m = j;
        k = i;
        localObject = paramArrayList;
        if (!localIterator2.hasNext()) {
          break label292;
        }
        localObject = (GHSIOrderReviewSurveyDataModel.GHSIQuestionDataModel)localIterator2.next();
        if (localObject == null) {
          break label332;
        }
        if (((GHSIOrderReviewSurveyDataModel.GHSIQuestionDataModel)localObject).getAnswerType() == GHSIOrderReviewSurveyDataModel.GHSAnswerType.RANGE)
        {
          i = j;
          j = 1;
        }
      }
      for (;;)
      {
        k = j;
        j = i;
        i = k;
        break label180;
        if (((GHSIOrderReviewSurveyDataModel.GHSIQuestionDataModel)localObject).getAnswerType() == GHSIOrderReviewSurveyDataModel.GHSAnswerType.FREE_TEXT)
        {
          k = 1;
          j = i;
          i = k;
        }
        else
        {
          if (paramArrayList == null)
          {
            paramArrayList = ((GHSIOrderReviewSurveyDataModel.GHSIQuestionDataModel)localObject).getQuestionId();
            k = i;
            i = j;
            j = k;
            continue;
            m = 0;
            k = 0;
            localObject = null;
            if ((k != 0) && (m != 0)) {
              break;
            }
            return new e(false, (String)localObject);
            return new e(true, null);
            return new e(false, null);
          }
          k = i;
          i = j;
          j = k;
        }
      }
    }
  }
  
  public static ArrayList<GHSOrderReviewCheckDataModel> a(List<GHSIPastOrderDataModel> paramList, Map<String, GHSIPastOrderDataModel> paramMap)
  {
    ArrayList localArrayList = new ArrayList();
    if ((paramList != null) && (!paramList.isEmpty()))
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        GHSIPastOrderDataModel localGHSIPastOrderDataModel = (GHSIPastOrderDataModel)paramList.next();
        if ((localGHSIPastOrderDataModel != null) && (f.b(localGHSIPastOrderDataModel.getOrderId())) && (localGHSIPastOrderDataModel.getTimePlacedMillis() > 0L) && (f.b(localGHSIPastOrderDataModel.getOrderState())))
        {
          localArrayList.add(new GHSOrderReviewCheckDataModel(localGHSIPastOrderDataModel.getOrderId(), localGHSIPastOrderDataModel.getTimePlacedMillis(), localGHSIPastOrderDataModel.getOrderState()));
          if (paramMap != null) {
            paramMap.put(localGHSIPastOrderDataModel.getOrderId(), localGHSIPastOrderDataModel);
          }
        }
      }
    }
    return localArrayList;
  }
  
  public static boolean a(GHSCreateOrderReviewDataModel.GHSAnswerDataModel paramGHSAnswerDataModel)
  {
    return (paramGHSAnswerDataModel != null) && (!f.a(paramGHSAnswerDataModel.getQuestionId())) && (paramGHSAnswerDataModel.isSkipped() != null) && ((paramGHSAnswerDataModel.isSkipped().booleanValue()) || (!f.a(paramGHSAnswerDataModel.getAnswerId())) || (!f.a(paramGHSAnswerDataModel.getValue())));
  }
  
  public static boolean a(GHSIOrderReviewSurveyDataModel paramGHSIOrderReviewSurveyDataModel, Map<String, GHSCreateOrderReviewDataModel.GHSAnswerDataModel> paramMap)
  {
    if ((paramGHSIOrderReviewSurveyDataModel == null) || (paramGHSIOrderReviewSurveyDataModel.getRules() == null) || (paramGHSIOrderReviewSurveyDataModel.getRules().isEmpty())) {
      return true;
    }
    if ((paramMap == null) || (paramMap.isEmpty())) {
      return false;
    }
    Object localObject2;
    do
    {
      paramGHSIOrderReviewSurveyDataModel = paramGHSIOrderReviewSurveyDataModel.getRules().iterator();
      Object localObject1;
      while (!((Iterator)localObject1).hasNext())
      {
        do
        {
          do
          {
            if (!paramGHSIOrderReviewSurveyDataModel.hasNext()) {
              break;
            }
            localObject2 = (GHSIOrderReviewSurveyDataModel.GHSIRulesDataModel)paramGHSIOrderReviewSurveyDataModel.next();
            localObject1 = ((GHSIOrderReviewSurveyDataModel.GHSIRulesDataModel)localObject2).getQuestionId();
            localObject2 = ((GHSIOrderReviewSurveyDataModel.GHSIRulesDataModel)localObject2).getPreconditions();
          } while ((!f.b((String)localObject1)) || (localObject2 == null) || (((ArrayList)localObject2).isEmpty()));
          localObject1 = (GHSCreateOrderReviewDataModel.GHSAnswerDataModel)paramMap.get(localObject1);
        } while ((localObject1 == null) || (((GHSCreateOrderReviewDataModel.GHSAnswerDataModel)localObject1).isSkipped() == null) || (((GHSCreateOrderReviewDataModel.GHSAnswerDataModel)localObject1).isSkipped().booleanValue()) || (!a((GHSCreateOrderReviewDataModel.GHSAnswerDataModel)localObject1)));
        localObject1 = ((ArrayList)localObject2).iterator();
      }
      localObject2 = (GHSCreateOrderReviewDataModel.GHSAnswerDataModel)paramMap.get((String)((Iterator)localObject1).next());
    } while ((localObject2 != null) && (((GHSCreateOrderReviewDataModel.GHSAnswerDataModel)localObject2).isSkipped() != null) && (!((GHSCreateOrderReviewDataModel.GHSAnswerDataModel)localObject2).isSkipped().booleanValue()) && (a((GHSCreateOrderReviewDataModel.GHSAnswerDataModel)localObject2)));
    return false;
    return true;
  }
  
  public static boolean a(Map<String, GHSCreateOrderReviewDataModel.GHSAnswerDataModel> paramMap)
  {
    if ((paramMap == null) || (paramMap.isEmpty())) {
      return false;
    }
    paramMap = paramMap.values().iterator();
    while (paramMap.hasNext()) {
      if (!a((GHSCreateOrderReviewDataModel.GHSAnswerDataModel)paramMap.next())) {
        return false;
      }
    }
    return true;
  }
  
  public static ArrayList<GHSIOrderReviewDataModel> b(ArrayList<GHSIOrderReviewDataModel> paramArrayList)
  {
    if ((paramArrayList != null) && (!paramArrayList.isEmpty()))
    {
      b localb = a();
      HashMap localHashMap = localb.h();
      ArrayList localArrayList1 = localb.l();
      ArrayList localArrayList2 = localb.j();
      if (paramArrayList != null)
      {
        Iterator localIterator = paramArrayList.iterator();
        while (localIterator.hasNext())
        {
          GHSIOrderReviewDataModel localGHSIOrderReviewDataModel = (GHSIOrderReviewDataModel)localIterator.next();
          String str = localGHSIOrderReviewDataModel.getOrderId();
          if (f.b(str)) {
            if ((localHashMap != null) && (localHashMap.containsKey(str))) {
              localGHSIOrderReviewDataModel.setState(GHSIOrderReviewDataModel.GHSOrderReviewState.PENDING);
            } else if ((localArrayList1 != null) && (localArrayList1.contains(str)))
            {
              if ((localGHSIOrderReviewDataModel.getState() == GHSIOrderReviewDataModel.GHSOrderReviewState.AVAILABLE) || (localGHSIOrderReviewDataModel.getState() == GHSIOrderReviewDataModel.GHSOrderReviewState.EXPIRED) || (localGHSIOrderReviewDataModel.getState() == GHSIOrderReviewDataModel.GHSOrderReviewState.QUIT))
              {
                localGHSIOrderReviewDataModel.setState(GHSIOrderReviewDataModel.GHSOrderReviewState.SUBMITTED);
              }
              else
              {
                localArrayList1.remove(str);
                localb.f(str);
              }
            }
            else if ((localArrayList2 != null) && (localArrayList2.contains(str))) {
              localGHSIOrderReviewDataModel.setState(GHSIOrderReviewDataModel.GHSOrderReviewState.QUIT);
            }
          }
        }
      }
    }
    return paramArrayList;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */