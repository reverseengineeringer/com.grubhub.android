package com.grubhub.AppBaseLibrary.android.review;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.q;
import android.support.v4.app.w;
import android.support.v4.view.de;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ViewFlipper;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCreateOrderReviewDataModel.GHSAnswerDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewSurveyDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewSurveyDataModel.GHSIAnswerOptionDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewSurveyDataModel.GHSIQuestionDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewSurveyDataModel.GHSSurveyType;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import com.grubhub.AppBaseLibrary.android.views.GHSHintViewPager;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class GHSReviewSurveyFragment
  extends Fragment
{
  private Integer a;
  private GHSIOrderReviewSurveyDataModel b;
  private ArrayList<GHSIOrderReviewSurveyDataModel> c;
  private w d;
  private c e;
  private d f;
  private boolean g;
  private com.grubhub.AppBaseLibrary.android.utils.c.c h;
  private ArrayList<Button> i;
  private GHSHintViewPager j;
  private ViewFlipper k;
  private Button l;
  private Button m;
  private de n = new de()
  {
    public void a(int paramAnonymousInt)
    {
      GHSIOrderReviewSurveyDataModel localGHSIOrderReviewSurveyDataModel = GHSReviewSurveyFragment.a(GHSReviewSurveyFragment.this).b(paramAnonymousInt);
      if ((localGHSIOrderReviewSurveyDataModel != null) && (!GHSReviewSurveyFragment.b(GHSReviewSurveyFragment.this)))
      {
        if (localGHSIOrderReviewSurveyDataModel.getType() != GHSIOrderReviewSurveyDataModel.GHSSurveyType.RATING_REVIEW) {
          break label101;
        }
        GHSReviewSurveyFragment.a(GHSReviewSurveyFragment.this, new com.grubhub.AppBaseLibrary.android.utils.c.c("submit ratings and reviews", "provide written review modal_impression", "", "true"));
      }
      for (;;)
      {
        h.a().a(GHSReviewSurveyFragment.c(GHSReviewSurveyFragment.this));
        GHSReviewSurveyFragment.a(GHSReviewSurveyFragment.this, true);
        GHSReviewSurveyFragment.a(GHSReviewSurveyFragment.this, localGHSIOrderReviewSurveyDataModel);
        GHSReviewSurveyFragment.b(GHSReviewSurveyFragment.this, localGHSIOrderReviewSurveyDataModel);
        return;
        label101:
        GHSReviewSurveyFragment.a(GHSReviewSurveyFragment.this, new com.grubhub.AppBaseLibrary.android.utils.c.c("submit ratings and reviews", "rating question modal_impression", "", "true"));
      }
    }
    
    public void a(int paramAnonymousInt1, float paramAnonymousFloat, int paramAnonymousInt2) {}
    
    public void b(int paramAnonymousInt) {}
  };
  private View.OnClickListener o = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      GHSReviewSurveyFragment.b(GHSReviewSurveyFragment.this, false);
      GHSCreateOrderReviewDataModel.GHSAnswerDataModel localGHSAnswerDataModel = (GHSCreateOrderReviewDataModel.GHSAnswerDataModel)paramAnonymousView.getTag();
      HashMap localHashMap = new HashMap();
      localHashMap.put(localGHSAnswerDataModel.getQuestionId(), localGHSAnswerDataModel);
      com.grubhub.AppBaseLibrary.android.utils.c.c localc;
      if (localGHSAnswerDataModel != null) {
        if (localGHSAnswerDataModel.isSkipped().booleanValue()) {
          localc = new com.grubhub.AppBaseLibrary.android.utils.c.c("submit ratings and reviews", "rating question modal-skip question_cta", "");
        }
      }
      for (;;)
      {
        if (localc != null) {
          h.a().a(localc);
        }
        if ((com.grubhub.AppBaseLibrary.android.utils.d.a(localHashMap)) && (com.grubhub.AppBaseLibrary.android.utils.d.a(GHSReviewSurveyFragment.d(GHSReviewSurveyFragment.this), localHashMap)))
        {
          if (GHSReviewSurveyFragment.e(GHSReviewSurveyFragment.this) != null) {
            GHSReviewSurveyFragment.e(GHSReviewSurveyFragment.this).a(localGHSAnswerDataModel);
          }
          paramAnonymousView = (Integer)paramAnonymousView.getTag(2131689480);
          GHSReviewSurveyFragment.a(GHSReviewSurveyFragment.this, paramAnonymousView);
          return;
          if ("Yes".equalsIgnoreCase(localGHSAnswerDataModel.getValue()))
          {
            localc = new com.grubhub.AppBaseLibrary.android.utils.c.c("submit ratings and reviews", "rating question modal-yes_cta", "");
            continue;
          }
          if ("No".equalsIgnoreCase(localGHSAnswerDataModel.getValue())) {
            localc = new com.grubhub.AppBaseLibrary.android.utils.c.c("submit ratings and reviews", "rating question modal-no_cta", "");
          }
        }
        else
        {
          com.grubhub.AppBaseLibrary.android.c.a(paramAnonymousView.getContext(), 2131231869, 2131231868, 2131231717, 0, 0, null);
          GHSReviewSurveyFragment.b(GHSReviewSurveyFragment.this, true);
          return;
        }
        localc = null;
      }
    }
  };
  
  private GHSIOrderReviewSurveyDataModel a(int paramInt)
  {
    if (c != null)
    {
      Iterator localIterator = c.iterator();
      while (localIterator.hasNext())
      {
        GHSIOrderReviewSurveyDataModel localGHSIOrderReviewSurveyDataModel = (GHSIOrderReviewSurveyDataModel)localIterator.next();
        if ((localGHSIOrderReviewSurveyDataModel != null) && (localGHSIOrderReviewSurveyDataModel.getNodeNumber().intValue() == paramInt)) {
          return localGHSIOrderReviewSurveyDataModel;
        }
      }
    }
    return null;
  }
  
  public static GHSReviewSurveyFragment a(ArrayList<GHSIOrderReviewSurveyDataModel> paramArrayList)
  {
    GHSReviewSurveyFragment localGHSReviewSurveyFragment = new GHSReviewSurveyFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelableArrayList("review_survey", paramArrayList);
    localGHSReviewSurveyFragment.setArguments(localBundle);
    return localGHSReviewSurveyFragment;
  }
  
  private void a(GHSIOrderReviewSurveyDataModel paramGHSIOrderReviewSurveyDataModel)
  {
    Object localObject1;
    if (paramGHSIOrderReviewSurveyDataModel != null)
    {
      if ((paramGHSIOrderReviewSurveyDataModel.getType() == GHSIOrderReviewSurveyDataModel.GHSSurveyType.SINGLE) && (paramGHSIOrderReviewSurveyDataModel.getQuestions() != null) && (!paramGHSIOrderReviewSurveyDataModel.getQuestions().isEmpty()))
      {
        localObject2 = (GHSIOrderReviewSurveyDataModel.GHSIQuestionDataModel)paramGHSIOrderReviewSurveyDataModel.getQuestions().get(0);
        localObject1 = ((GHSIOrderReviewSurveyDataModel.GHSIQuestionDataModel)localObject2).getQuestionId();
        localObject2 = ((GHSIOrderReviewSurveyDataModel.GHSIQuestionDataModel)localObject2).getAnswerOptions();
        i1 = 0;
        if (i1 < 3)
        {
          localButton = (Button)i.get(i1);
          if ((localObject2 != null) && (i1 < ((ArrayList)localObject2).size()))
          {
            localGHSIAnswerOptionDataModel = (GHSIOrderReviewSurveyDataModel.GHSIAnswerOptionDataModel)((ArrayList)localObject2).get(i1);
            localButton.setText(localGHSIAnswerOptionDataModel.getDisplayText());
            localButton.setTag(new GHSCreateOrderReviewDataModel.GHSAnswerDataModel((String)localObject1, localGHSIAnswerOptionDataModel.getAnswerId(), localGHSIAnswerOptionDataModel.getValue(), Boolean.valueOf(false)));
            localButton.setTag(2131689480, localGHSIAnswerOptionDataModel.getNextNodeNumber());
            localButton.setVisibility(0);
          }
          for (;;)
          {
            i1 += 1;
            break;
            localButton.setTag(null);
            localButton.setTag(2131689480, null);
            localButton.setVisibility(8);
          }
        }
        if (paramGHSIOrderReviewSurveyDataModel.isSkippable())
        {
          localObject1 = new GHSCreateOrderReviewDataModel.GHSAnswerDataModel((String)localObject1, null, null, Boolean.valueOf(true));
          l.setTag(localObject1);
          l.setTag(2131689480, paramGHSIOrderReviewSurveyDataModel.getSkipNextNodeNumber());
          l.setVisibility(0);
          k.setDisplayedChild(0);
          a(true);
        }
      }
      while (paramGHSIOrderReviewSurveyDataModel.getType() != GHSIOrderReviewSurveyDataModel.GHSSurveyType.RATING_REVIEW) {
        for (;;)
        {
          Object localObject2;
          int i1;
          Button localButton;
          GHSIOrderReviewSurveyDataModel.GHSIAnswerOptionDataModel localGHSIAnswerOptionDataModel;
          return;
          l.setTag(null);
          l.setTag(2131689480, null);
          l.setVisibility(4);
        }
      }
      m.setTag(2131689480, null);
      k.setDisplayedChild(1);
      a(true);
      return;
    }
    paramGHSIOrderReviewSurveyDataModel = i.iterator();
    while (paramGHSIOrderReviewSurveyDataModel.hasNext())
    {
      localObject1 = (Button)paramGHSIOrderReviewSurveyDataModel.next();
      ((Button)localObject1).setText(null);
      ((Button)localObject1).setTag(null);
      ((Button)localObject1).setTag(2131689480, null);
      ((Button)localObject1).setVisibility(4);
    }
    k.setDisplayedChild(0);
    a(false);
  }
  
  private void a(Integer paramInteger)
  {
    int i1;
    if (e.b() == 0)
    {
      i1 = 1;
      if (paramInteger != null) {
        break label43;
      }
      if (f != null) {
        f.h();
      }
    }
    for (;;)
    {
      a = paramInteger;
      return;
      i1 = 0;
      break;
      label43:
      if ((i1 != 0) || (a != paramInteger))
      {
        GHSIOrderReviewSurveyDataModel localGHSIOrderReviewSurveyDataModel = a(paramInteger.intValue());
        e.a(localGHSIOrderReviewSurveyDataModel);
        j.invalidate();
        g = false;
        if (i1 != 0)
        {
          n.a(0);
        }
        else
        {
          i1 = j.getCurrentItem();
          j.a(i1 + 1, true);
        }
      }
    }
  }
  
  private void a(boolean paramBoolean)
  {
    Iterator localIterator = i.iterator();
    while (localIterator.hasNext()) {
      ((Button)localIterator.next()).setEnabled(paramBoolean);
    }
    l.setEnabled(paramBoolean);
    m.setEnabled(paramBoolean);
  }
  
  public void a(String paramString)
  {
    Fragment localFragment = d.a(2131690090);
    if ((localFragment instanceof GHSReviewRatingFragment)) {
      ((GHSReviewRatingFragment)localFragment).a(paramString);
    }
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if ((paramActivity instanceof d)) {
      f = ((d)paramActivity);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = Integer.valueOf(1);
    c = getArguments().getParcelableArrayList("review_survey");
    d = getChildFragmentManager();
    e = new c(d);
    setHasOptionsMenu(true);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramBundle = paramViewGroup.getContext();
    paramLayoutInflater = paramLayoutInflater.inflate(2130903152, paramViewGroup, false);
    j = ((GHSHintViewPager)paramLayoutInflater.findViewById(2131690090));
    j.setHintMargins(paramBundle.getResources().getDimensionPixelSize(2131427515));
    j.setSwipeEnabled(false);
    j.setAdapter(e);
    j.a(n);
    paramViewGroup = (Button)paramLayoutInflater.findViewById(2131690085);
    paramBundle = (Button)paramLayoutInflater.findViewById(2131690086);
    Button localButton = (Button)paramLayoutInflater.findViewById(2131690087);
    i = new ArrayList(Arrays.asList(new Button[] { paramViewGroup, paramBundle, localButton }));
    k = ((ViewFlipper)paramLayoutInflater.findViewById(2131690084));
    l = ((Button)paramLayoutInflater.findViewById(2131690088));
    m = ((Button)paramLayoutInflater.findViewById(2131690089));
    m.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Object localObject = GHSReviewSurveyFragment.f(GHSReviewSurveyFragment.this).a(2131690090);
        if ((localObject instanceof GHSReviewRatingFragment)) {}
        for (localObject = ((GHSReviewRatingFragment)localObject).b();; localObject = null)
        {
          int i;
          if ((com.grubhub.AppBaseLibrary.android.utils.d.a((Map)localObject)) && (com.grubhub.AppBaseLibrary.android.utils.d.a(GHSReviewSurveyFragment.d(GHSReviewSurveyFragment.this), (Map)localObject)))
          {
            localObject = ((Map)localObject).values().iterator();
            i = 1;
            if (((Iterator)localObject).hasNext())
            {
              GHSCreateOrderReviewDataModel.GHSAnswerDataModel localGHSAnswerDataModel = (GHSCreateOrderReviewDataModel.GHSAnswerDataModel)((Iterator)localObject).next();
              if (!localGHSAnswerDataModel.isSkipped().booleanValue()) {}
              for (int j = 1;; j = 0)
              {
                j = i & j;
                i = j;
                if (GHSReviewSurveyFragment.e(GHSReviewSurveyFragment.this) == null) {
                  break;
                }
                GHSReviewSurveyFragment.e(GHSReviewSurveyFragment.this).a(localGHSAnswerDataModel);
                i = j;
                break;
              }
            }
            paramAnonymousView = (Integer)paramAnonymousView.getTag(2131689480);
            GHSReviewSurveyFragment.a(GHSReviewSurveyFragment.this, paramAnonymousView);
            localObject = h.a();
            if (i == 0) {
              break label223;
            }
          }
          label223:
          for (paramAnonymousView = "rating and written review";; paramAnonymousView = "rating only")
          {
            ((h)localObject).a(new com.grubhub.AppBaseLibrary.android.utils.c.c("submit ratings and reviews", "provide written review modal-submit_cta", paramAnonymousView));
            return;
            com.grubhub.AppBaseLibrary.android.c.a(paramAnonymousView.getContext(), 2131231869, 2131231868, 2131231717, 0, 0, null);
            GHSReviewSurveyFragment.b(GHSReviewSurveyFragment.this, true);
            i = 0;
            break;
          }
        }
      }
    });
    paramViewGroup.setOnClickListener(o);
    paramBundle.setOnClickListener(o);
    localButton.setOnClickListener(o);
    l.setOnClickListener(o);
    a(a);
    return paramLayoutInflater;
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    if (j != null) {
      j.b();
    }
  }
  
  public void onDetach()
  {
    super.onDetach();
    f = null;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 16908332)
    {
      getActivity().onBackPressed();
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    super.onPrepareOptionsMenu(paramMenu);
    paramMenu = getActivity().getActionBar();
    if (paramMenu != null) {
      paramMenu.setDisplayHomeAsUpEnabled(true);
    }
  }
  
  public void onStart()
  {
    super.onStart();
    if ((!g) && (h != null))
    {
      h.a().a(h);
      g = true;
    }
  }
  
  public void onStop()
  {
    super.onStop();
    g = false;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.review.GHSReviewSurveyFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */