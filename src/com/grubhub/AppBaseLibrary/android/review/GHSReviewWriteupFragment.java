package com.grubhub.AppBaseLibrary.android.review;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.q;
import android.text.Editable;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.text.TextWatcher;
import android.text.method.ScrollingMovementMethod;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.a;
import com.grubhub.AppBaseLibrary.android.c;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.Locale;

public class GHSReviewWriteupFragment
  extends Fragment
  implements a
{
  private int a;
  private int b;
  private String c;
  private e d;
  private TextView e;
  private MenuItem f;
  
  public static GHSReviewWriteupFragment a(String paramString, int paramInt)
  {
    GHSReviewWriteupFragment localGHSReviewWriteupFragment = new GHSReviewWriteupFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("current_writeup", paramString);
    localBundle.putInt("minimum_word_count", paramInt);
    localGHSReviewWriteupFragment.setArguments(localBundle);
    return localGHSReviewWriteupFragment;
  }
  
  private void a(String paramString)
  {
    int i = com.grubhub.AppBaseLibrary.android.utils.b.a(paramString);
    Context localContext;
    if (e != null)
    {
      localContext = e.getContext();
      if (i < a) {
        e.setText(String.format(Locale.US, localContext.getString(2131231870), new Object[] { Integer.valueOf(i), Integer.valueOf(a) }));
      }
    }
    else
    {
      c = paramString;
      g();
      return;
    }
    if (f.b(paramString)) {}
    for (i = paramString.length();; i = 0)
    {
      e.setText(String.format(Locale.US, localContext.getString(2131231841), new Object[] { Integer.valueOf(i), Integer.valueOf(b) }));
      break;
    }
  }
  
  private void d()
  {
    q localq = getActivity();
    if ((localq instanceof GHSBaseActivity)) {
      ((GHSBaseActivity)localq).b(getClass().getSimpleName());
    }
  }
  
  private void e()
  {
    q localq = getActivity();
    if (localq != null) {
      c.a(localq, 2131231876, 2131231874, 2131231875, 2131231873, 0, new com.grubhub.AppBaseLibrary.android.b()
      {
        public void b(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          GHSReviewWriteupFragment.a(GHSReviewWriteupFragment.this);
        }
      });
    }
  }
  
  private void f()
  {
    q localq = getActivity();
    View localView = getView();
    if ((localq != null) && (localView != null)) {
      ((InputMethodManager)localq.getSystemService("input_method")).hideSoftInputFromWindow(localView.getWindowToken(), 2);
    }
  }
  
  private void g()
  {
    if (f != null)
    {
      if ((f.a(c)) || (com.grubhub.AppBaseLibrary.android.utils.b.a(c) < a)) {
        f.setEnabled(false);
      }
    }
    else {
      return;
    }
    f.setEnabled(true);
  }
  
  public void b() {}
  
  public void c() {}
  
  public boolean f_()
  {
    int i = com.grubhub.AppBaseLibrary.android.utils.b.a(c);
    if ((i > 0) && (i < a))
    {
      e();
      return true;
    }
    if (d != null) {
      d.c(c);
    }
    return false;
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if ((getParentFragment() instanceof e)) {
      d = ((e)getParentFragment());
    }
    while (!(paramActivity instanceof e)) {
      return;
    }
    d = ((e)paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null) {}
    for (c = paramBundle.getString("current_writeup");; c = getArguments().getString("current_writeup"))
    {
      a = getArguments().getInt("minimum_word_count");
      b = getResources().getInteger(2131492878);
      setHasOptionsMenu(true);
      return;
    }
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    paramMenuInflater.inflate(2131820546, paramMenu);
    super.onCreateOptionsMenu(paramMenu, paramMenuInflater);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903153, paramViewGroup, false);
    e = ((TextView)paramLayoutInflater.findViewById(2131690092));
    paramViewGroup = new TextWatcher()
    {
      public void afterTextChanged(Editable paramAnonymousEditable)
      {
        GHSReviewWriteupFragment.a(GHSReviewWriteupFragment.this, paramAnonymousEditable.toString());
      }
      
      public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    };
    paramBundle = (EditText)paramLayoutInflater.findViewById(2131690093);
    paramBundle.setFilters(new InputFilter[] { new InputFilter.LengthFilter(b) });
    paramBundle.setVerticalScrollBarEnabled(true);
    paramBundle.setMovementMethod(new ScrollingMovementMethod());
    paramBundle.addTextChangedListener(paramViewGroup);
    paramBundle.setText(c);
    a(c);
    return paramLayoutInflater;
  }
  
  public void onDetach()
  {
    super.onDetach();
    d = null;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    int i = paramMenuItem.getItemId();
    if (i == 16908332)
    {
      f();
      i = com.grubhub.AppBaseLibrary.android.utils.b.a(c);
      if ((i > 0) && (i < a))
      {
        e();
        return true;
      }
      if (d != null) {
        d.c(c);
      }
      d();
      return true;
    }
    if (i == 2131690347)
    {
      f();
      if (d != null) {
        d.c(c);
      }
      d();
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    super.onPrepareOptionsMenu(paramMenu);
    f = paramMenu.findItem(2131690347);
    g();
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
    localBundle.putString("current_writeup", c);
    super.onSaveInstanceState(localBundle);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.review.GHSReviewWriteupFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */