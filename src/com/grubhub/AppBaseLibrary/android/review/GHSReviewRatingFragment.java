package com.grubhub.AppBaseLibrary.android.review;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.q;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCreateOrderReviewDataModel.GHSAnswerDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewSurveyDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewSurveyDataModel.GHSAnswerType;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewSurveyDataModel.GHSIAnswerValidationDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewSurveyDataModel.GHSIQuestionDataModel;
import com.grubhub.AppBaseLibrary.android.utils.f;
import com.grubhub.AppBaseLibrary.android.views.GHSReviewRatingView;
import com.grubhub.AppBaseLibrary.android.views.x;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class GHSReviewRatingFragment
  extends GHSReviewPageBaseFragment
{
  private GHSIOrderReviewSurveyDataModel b;
  private int c;
  private int d;
  private int e;
  private String f;
  private String g;
  private GHSCreateOrderReviewDataModel.GHSAnswerDataModel h;
  private GHSCreateOrderReviewDataModel.GHSAnswerDataModel i;
  private HashMap<String, GHSCreateOrderReviewDataModel.GHSAnswerDataModel> j;
  private d k;
  private GHSReviewRatingView l;
  private TextView m;
  private TextView n;
  private View o;
  private TextView p;
  private TextView q;
  
  public static GHSReviewRatingFragment a(GHSIOrderReviewSurveyDataModel paramGHSIOrderReviewSurveyDataModel)
  {
    GHSReviewRatingFragment localGHSReviewRatingFragment = new GHSReviewRatingFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("review_survey", paramGHSIOrderReviewSurveyDataModel);
    localGHSReviewRatingFragment.setArguments(localBundle);
    return localGHSReviewRatingFragment;
  }
  
  private void b(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      m.setText(null);
      n.setText(g);
    }
    for (;;)
    {
      m.setVisibility(0);
      n.setVisibility(0);
      o.setVisibility(0);
      return;
      m.setText(2131231838);
      n.setText(2131231849);
      continue;
      m.setText(2131231840);
      n.setText(2131231851);
      continue;
      m.setText(2131231839);
      n.setText(2131231850);
      continue;
      m.setText(2131231837);
      n.setText(2131231848);
      continue;
      m.setText(2131231836);
      n.setText(2131231847);
    }
  }
  
  public void a(String paramString)
  {
    if (f.b(paramString))
    {
      p.setText(2131231842);
      q.setText(paramString.trim());
      i.setValue(paramString.trim());
      i.setSkipped(Boolean.valueOf(false));
      return;
    }
    p.setText(2131231871);
    q.setText(2131231843);
    i.setValue(null);
    i.setSkipped(Boolean.valueOf(true));
  }
  
  public Map<String, GHSCreateOrderReviewDataModel.GHSAnswerDataModel> b()
  {
    return j;
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if ((paramActivity instanceof d)) {
      k = ((d)paramActivity);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    int i2 = 0;
    super.onCreate(paramBundle);
    if (paramBundle != null)
    {
      h = ((GHSCreateOrderReviewDataModel.GHSAnswerDataModel)paramBundle.getParcelable("rating_answer"));
      i = ((GHSCreateOrderReviewDataModel.GHSAnswerDataModel)paramBundle.getParcelable("writeup_answer"));
    }
    if (h == null) {
      h = new GHSCreateOrderReviewDataModel.GHSAnswerDataModel();
    }
    if (i == null) {
      i = new GHSCreateOrderReviewDataModel.GHSAnswerDataModel();
    }
    b = ((GHSIOrderReviewSurveyDataModel)getArguments().getParcelable("review_survey"));
    j = new HashMap();
    int i1;
    GHSIOrderReviewSurveyDataModel.GHSIQuestionDataModel localGHSIQuestionDataModel;
    if ((b != null) && (b.getQuestions() != null))
    {
      paramBundle = b.getQuestions().iterator();
      i1 = 0;
      if (paramBundle.hasNext())
      {
        localGHSIQuestionDataModel = (GHSIOrderReviewSurveyDataModel.GHSIQuestionDataModel)paramBundle.next();
        if ((i1 == 0) || (i2 == 0)) {
          break label168;
        }
      }
    }
    setHasOptionsMenu(true);
    return;
    label168:
    String str;
    GHSIOrderReviewSurveyDataModel.GHSAnswerType localGHSAnswerType;
    GHSIOrderReviewSurveyDataModel.GHSIAnswerValidationDataModel localGHSIAnswerValidationDataModel;
    if ((localGHSIQuestionDataModel != null) && (f.b(localGHSIQuestionDataModel.getQuestionId())))
    {
      str = localGHSIQuestionDataModel.getQuestionId();
      localGHSAnswerType = localGHSIQuestionDataModel.getAnswerType();
      localGHSIAnswerValidationDataModel = localGHSIQuestionDataModel.getAnswerValidations();
      if (localGHSAnswerType == null) {}
    }
    label248:
    int i3;
    switch (3.a[localGHSAnswerType.ordinal()])
    {
    default: 
      i3 = i2;
      i2 = i1;
      i1 = i3;
    }
    for (;;)
    {
      i3 = i2;
      i2 = i1;
      i1 = i3;
      break;
      if (i2 != 0) {
        break label248;
      }
      i.setQuestionId(str);
      j.put(str, i);
      g = localGHSIQuestionDataModel.getDisplayText();
      if ((localGHSIAnswerValidationDataModel != null) && (localGHSIAnswerValidationDataModel.getMinWordCount() != null)) {
        c = localGHSIAnswerValidationDataModel.getMinWordCount().intValue();
      }
      i3 = 1;
      i2 = i1;
      i1 = i3;
      continue;
      if (i1 != 0) {
        break label248;
      }
      h.setQuestionId(str);
      j.put(str, h);
      f = localGHSIQuestionDataModel.getDisplayText();
      if ((localGHSIAnswerValidationDataModel != null) && (localGHSIAnswerValidationDataModel.getMinRangeValue() != null) && (localGHSIAnswerValidationDataModel.getMaxRangeValue() != null))
      {
        d = localGHSIAnswerValidationDataModel.getMinRangeValue().intValue();
        e = localGHSIAnswerValidationDataModel.getMaxRangeValue().intValue();
      }
      i1 = i2;
      i2 = 1;
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramBundle = paramViewGroup.getContext();
    paramViewGroup = paramLayoutInflater.inflate(2130903151, paramViewGroup, false);
    if (f.b(f)) {
      ((TextView)paramViewGroup.findViewById(2131690077)).setText(f);
    }
    l = ((GHSReviewRatingView)paramViewGroup.findViewById(2131690078));
    l.setOnRatingSelectedListener(new x()
    {
      public void a(int paramAnonymousInt)
      {
        GHSReviewRatingFragment.a(GHSReviewRatingFragment.this).setValue(String.valueOf(paramAnonymousInt));
        GHSReviewRatingFragment.a(GHSReviewRatingFragment.this).setSkipped(Boolean.valueOf(false));
        GHSReviewRatingFragment.a(GHSReviewRatingFragment.this, paramAnonymousInt);
      }
    });
    l.a(d, e);
    m = ((TextView)paramViewGroup.findViewById(2131690079));
    n = ((TextView)paramViewGroup.findViewById(2131690080));
    p = ((TextView)paramViewGroup.findViewById(2131690082));
    q = ((TextView)paramViewGroup.findViewById(2131690083));
    o = paramViewGroup.findViewById(2131690081);
    o.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (GHSReviewRatingFragment.b(GHSReviewRatingFragment.this) != null)
        {
          paramAnonymousView = GHSReviewRatingFragment.c(GHSReviewRatingFragment.this).getValue();
          GHSReviewRatingFragment.b(GHSReviewRatingFragment.this).a(paramAnonymousView, GHSReviewRatingFragment.d(GHSReviewRatingFragment.this));
        }
      }
    });
    if (h.getValue() != null) {}
    for (paramLayoutInflater = Integer.valueOf(h.getValue());; paramLayoutInflater = null)
    {
      l.setSelectedRating(paramLayoutInflater);
      a(i.getValue());
      paramViewGroup.setContentDescription(paramBundle.getString(2131231222) + " " + (a + 1));
      return paramViewGroup;
    }
  }
  
  public void onDetach()
  {
    super.onDetach();
    k = null;
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
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    Bundle localBundle = paramBundle;
    if (paramBundle == null) {
      localBundle = new Bundle();
    }
    localBundle.putParcelable("rating_answer", h);
    localBundle.putParcelable("writeup_answer", i);
    super.onSaveInstanceState(localBundle);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.review.GHSReviewRatingFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */