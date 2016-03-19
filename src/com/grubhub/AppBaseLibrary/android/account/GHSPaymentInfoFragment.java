package com.grubhub.AppBaseLibrary.android.account;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.ag;
import android.support.v4.app.q;
import android.support.v4.app.w;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIPaymentResourceCreatedDataModel;
import com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.GHSPaymentSelectionInfoFragment;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import com.grubhub.AppBaseLibrary.android.utils.g;
import io.card.payment.CardIOActivity;
import io.card.payment.CreditCard;
import java.util.Arrays;
import java.util.Calendar;
import java.util.List;

public class GHSPaymentInfoFragment
  extends GHSInfoFragment
  implements com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.a
{
  private static final String a = GHSPaymentInfoFragment.class.getSimpleName();
  private f b;
  private e c;
  private GHSPaymentSelectionInfoFragment d;
  private boolean e;
  private boolean f;
  private String g;
  private boolean h;
  private ScrollView i;
  private EditText j;
  private Spinner k;
  private Spinner l;
  private EditText m;
  private EditText n;
  private View o;
  private CheckBox p;
  private Button q;
  private String[] r;
  private TextWatcher s = new TextWatcher()
  {
    public void afterTextChanged(Editable paramAnonymousEditable)
    {
      GHSPaymentInfoFragment.a(GHSPaymentInfoFragment.this);
    }
    
    public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    
    public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
  };
  
  public static GHSPaymentInfoFragment a(e parame, boolean paramBoolean)
  {
    GHSPaymentInfoFragment localGHSPaymentInfoFragment = new GHSPaymentInfoFragment();
    Bundle localBundle = new Bundle();
    localBundle.putInt("PAYMENT_INFO_TYPE", parame.getValue());
    localBundle.putBoolean("SHOW_SAVE_CHECKBOX", paramBoolean);
    localGHSPaymentInfoFragment.setArguments(localBundle);
    return localGHSPaymentInfoFragment;
  }
  
  private void a(GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes)
  {
    if (paramPaymentTypes != null) {}
    switch (8.a[paramPaymentTypes.ordinal()])
    {
    default: 
      return;
    case 1: 
      a("successful_creditcard");
      return;
    case 2: 
      a("successful_cash");
      return;
    case 3: 
      a("successful_paypal");
      return;
    }
    a("successful_androidpay");
  }
  
  private void a(com.grubhub.AppBaseLibrary.android.utils.c.e parame, com.grubhub.AppBaseLibrary.android.utils.c.f paramf, String paramString)
  {
    h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(parame, paramf, paramString));
  }
  
  private void a(String paramString)
  {
    h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("user account settings", "payment_save", paramString));
  }
  
  private void a(boolean paramBoolean)
  {
    j.setEnabled(paramBoolean);
    k.setEnabled(paramBoolean);
    l.setEnabled(paramBoolean);
    m.setEnabled(paramBoolean);
    n.setEnabled(paramBoolean);
    q.setEnabled(paramBoolean);
  }
  
  private void b(View paramView)
  {
    int i3 = 0;
    k = ((Spinner)paramView.findViewById(2131689968));
    ArrayAdapter localArrayAdapter = new ArrayAdapter(getActivity(), 2130903085, 2131689661, getResources().getStringArray(2131623937));
    localArrayAdapter.setDropDownViewResource(2130903239);
    k.setAdapter(localArrayAdapter);
    l = ((Spinner)paramView.findViewById(2131689969));
    r = new String[20];
    int i2 = Calendar.getInstance().get(1) % 1000;
    int i1 = 0;
    while (i1 < r.length)
    {
      r[i1] = String.valueOf(i2);
      i2 += 1;
      i1 += 1;
    }
    localArrayAdapter = new ArrayAdapter(getActivity(), 2130903085, 2131689661, r);
    localArrayAdapter.setDropDownViewResource(2130903239);
    l.setAdapter(localArrayAdapter);
    j = ((EditText)paramView.findViewById(2131689965));
    j.addTextChangedListener(new TextWatcher()
    {
      public void afterTextChanged(Editable paramAnonymousEditable)
      {
        GHSPaymentInfoFragment.a(GHSPaymentInfoFragment.this);
        if (GHSPaymentInfoFragment.b(GHSPaymentInfoFragment.this).hasFocus()) {
          GHSPaymentInfoFragment.a(GHSPaymentInfoFragment.this, paramAnonymousEditable.toString());
        }
      }
      
      public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    j.setOnFocusChangeListener(new View.OnFocusChangeListener()
    {
      public void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
      {
        if (paramAnonymousBoolean)
        {
          GHSPaymentInfoFragment.b(GHSPaymentInfoFragment.this).setText(GHSPaymentInfoFragment.c(GHSPaymentInfoFragment.this));
          return;
        }
        GHSPaymentInfoFragment.a(GHSPaymentInfoFragment.this, GHSPaymentInfoFragment.b(GHSPaymentInfoFragment.this).getText().toString());
        GHSPaymentInfoFragment.b(GHSPaymentInfoFragment.this).setText(GHSPaymentInfoFragment.d(GHSPaymentInfoFragment.this));
      }
    });
    m = ((EditText)paramView.findViewById(2131689972));
    m.addTextChangedListener(s);
    n = ((EditText)paramView.findViewById(2131689974));
    n.addTextChangedListener(s);
    n.setOnEditorActionListener(new TextView.OnEditorActionListener()
    {
      public boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
      {
        if (paramAnonymousInt == 2)
        {
          GHSPaymentInfoFragment.e(GHSPaymentInfoFragment.this);
          return true;
        }
        return false;
      }
    });
    o = paramView.findViewById(2131689970);
    q = ((Button)paramView.findViewById(2131689976));
    q.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        GHSPaymentInfoFragment.e(GHSPaymentInfoFragment.this);
      }
    });
    ((Button)paramView.findViewById(2131689966)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        com.grubhub.AppBaseLibrary.android.utils.e.a.a.a("CREDIT_CARD_SCAN");
        GHSPaymentInfoFragment.f(GHSPaymentInfoFragment.this);
      }
    });
    p = ((CheckBox)paramView.findViewById(2131689975));
    p.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
    {
      public void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
      {
        if (paramAnonymousBoolean)
        {
          GHSPaymentInfoFragment.g(GHSPaymentInfoFragment.this).setText(2131230831);
          return;
        }
        GHSPaymentInfoFragment.g(GHSPaymentInfoFragment.this).setText(2131230830);
      }
    });
    paramView = p;
    if (f) {}
    for (i1 = i3;; i1 = 8)
    {
      paramView.setVisibility(i1);
      return;
    }
  }
  
  private void f()
  {
    d_();
    int i1;
    String str1;
    String str2;
    String str3;
    String str4;
    if ((!f) || (p == null) || (p.isChecked()))
    {
      i1 = 1;
      if (!e) {
        break label181;
      }
      d();
      b();
      localObject1 = d;
      localObject2 = g;
      str1 = ((TextView)k.getSelectedView().findViewById(2131689661)).getText().toString();
      str2 = "20" + ((TextView)l.getSelectedView().findViewById(2131689661)).getText().toString();
      str3 = m.getText().toString();
      str4 = n.getText().toString();
      if (i1 != 0) {
        break label176;
      }
    }
    label176:
    for (boolean bool = true;; bool = false)
    {
      ((GHSPaymentSelectionInfoFragment)localObject1).a((String)localObject2, str1, str2, str3, str4, bool);
      return;
      i1 = 0;
      break;
    }
    label181:
    Object localObject2 = getResources();
    Object localObject1 = ((Resources)localObject2).getString(2131231602) + " ";
    if (com.grubhub.AppBaseLibrary.android.utils.f.a(j.getText().toString()))
    {
      localObject1 = (String)localObject1 + ((Resources)localObject2).getString(2131231753);
      a(j, i);
    }
    for (;;)
    {
      a((String)localObject1, true);
      a("incomplete fields required");
      return;
      if (com.grubhub.AppBaseLibrary.android.utils.f.a(m.getText().toString()))
      {
        localObject1 = (String)localObject1 + ((Resources)localObject2).getString(2131231761);
        a(m, i, o.getTop());
      }
      else if (com.grubhub.AppBaseLibrary.android.utils.f.a(n.getText().toString()))
      {
        localObject1 = (String)localObject1 + ((Resources)localObject2).getString(2131231762);
        a(n, i, o.getTop());
      }
      else if (!g.g(n.getText().toString()))
      {
        localObject1 = ((Resources)localObject2).getString(2131231763);
        a(n, i, o.getTop());
      }
    }
  }
  
  private String g()
  {
    int i2 = 0;
    String str = "";
    int i1 = 0;
    if (i2 < g.length())
    {
      if (i1 != 4) {
        break label116;
      }
      str = str + "-";
      i1 = 0;
    }
    label116:
    for (;;)
    {
      if (i2 < 12) {}
      for (str = str + "x";; str = str + g.charAt(i2))
      {
        i2 += 1;
        i1 += 1;
        break;
      }
      return str;
    }
  }
  
  private void h()
  {
    if (q != null) {
      if ((j == null) || (!com.grubhub.AppBaseLibrary.android.utils.f.b(j.getText().toString())) || (k == null) || (l == null) || (m == null) || (!com.grubhub.AppBaseLibrary.android.utils.f.b(m.getText().toString())) || (n == null) || (!g.g(n.getText().toString()))) {
        break label115;
      }
    }
    label115:
    for (boolean bool = true;; bool = false)
    {
      e = bool;
      if (!e) {
        break;
      }
      q.setBackgroundResource(2130837627);
      return;
    }
    q.setBackgroundResource(2130837628);
  }
  
  private void i()
  {
    Intent localIntent = new Intent(getActivity(), CardIOActivity.class);
    localIntent.putExtra("io.card.payment.requireExpiry", true);
    localIntent.putExtra("io.card.payment.requireCVV", true);
    localIntent.putExtra("io.card.payment.requirePostalCode", false);
    if (getParentFragment() == null)
    {
      startActivityForResult(localIntent, 66);
      return;
    }
    getParentFragment().startActivityForResult(localIntent, 66);
  }
  
  private void j()
  {
    a(true);
    d.a();
    q localq = getActivity();
    if ((localq != null) && ((localq instanceof GHSBaseActivity))) {
      ((GHSBaseActivity)getActivity()).a(false);
    }
  }
  
  public void a(com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    com.grubhub.AppBaseLibrary.android.c.a(getActivity(), paramb.f(), paramb.getLocalizedMessage(), paramb.g(), paramb.h(), paramb.i(), null);
    j();
    h();
    a("error");
    if (b != null) {
      b.d(true);
    }
  }
  
  public void a(GHSIPaymentResourceCreatedDataModel paramGHSIPaymentResourceCreatedDataModel, GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes)
  {
    a(paramPaymentTypes);
    if (c == e.ADD)
    {
      j();
      if (b != null) {
        b.a(paramGHSIPaymentResourceCreatedDataModel.getId(), paramPaymentTypes, false);
      }
    }
    do
    {
      do
      {
        return;
        if (paramGHSIPaymentResourceCreatedDataModel != null) {
          break;
        }
        if ((paramPaymentTypes != GHSICartPaymentDataModel.PaymentTypes.CASH) && (paramPaymentTypes != GHSICartPaymentDataModel.PaymentTypes.ANDROID_PAY))
        {
          com.grubhub.AppBaseLibrary.android.utils.e.a.b("Vaulting the payment failed.", "Null response from the payments endpoint.");
          paramGHSIPaymentResourceCreatedDataModel = new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN);
          com.grubhub.AppBaseLibrary.android.c.a(getActivity(), paramGHSIPaymentResourceCreatedDataModel.f(), paramGHSIPaymentResourceCreatedDataModel.getMessage(), paramGHSIPaymentResourceCreatedDataModel.g(), paramGHSIPaymentResourceCreatedDataModel.h(), paramGHSIPaymentResourceCreatedDataModel.i(), null);
          j();
          return;
        }
        j();
      } while (b == null);
      b.a(null, paramPaymentTypes, true);
      return;
      j();
    } while (b == null);
    b.a(paramGHSIPaymentResourceCreatedDataModel.getId(), paramPaymentTypes, true);
  }
  
  public void b()
  {
    a(false);
    ((GHSBaseActivity)getActivity()).a(true);
  }
  
  public void c()
  {
    j();
  }
  
  protected void d_()
  {
    j.setBackgroundResource(2130837569);
    m.setBackgroundResource(2130837569);
    n.setBackgroundResource(2130837569);
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    switch (paramInt1)
    {
    default: 
    case 66: 
      do
      {
        return;
      } while ((paramIntent == null) || (!paramIntent.hasExtra("io.card.payment.scanResult")));
      CreditCard localCreditCard = (CreditCard)paramIntent.getParcelableExtra("io.card.payment.scanResult");
      String str = Integer.toString(expiryMonth);
      paramIntent = str;
      if (expiryMonth < 10) {
        paramIntent = "0" + str;
      }
      str = Integer.toString(expiryYear % 1000);
      paramInt1 = Arrays.asList(getResources().getStringArray(2131623937)).indexOf(paramIntent);
      k.setSelection(paramInt1);
      paramInt1 = Arrays.asList(r).indexOf(str);
      l.setSelection(paramInt1);
      g = cardNumber;
      if (j.hasFocus()) {
        j.setText(g);
      }
      for (;;)
      {
        m.setText(cvv);
        n.setText(postalCode);
        return;
        j.setText(g());
      }
    case 53655: 
      h = true;
    }
    getChildFragmentManager().a(2131689962).onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if ((getParentFragment() instanceof f)) {
      b = ((f)getParentFragment());
    }
    while (!(paramActivity instanceof f)) {
      return;
    }
    b = ((f)paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    c = e.getPaymentInfoEnum(getArguments().getInt("PAYMENT_INFO_TYPE"));
    f = getArguments().getBoolean("SHOW_SAVE_CHECKBOX");
    setHasOptionsMenu(true);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903141, paramViewGroup, false);
    if (b == null) {
      b = ((f)getParentFragment());
    }
    i = ((ScrollView)paramLayoutInflater.findViewById(2131689960));
    b(paramLayoutInflater);
    h();
    d = GHSPaymentSelectionInfoFragment.a(c);
    getChildFragmentManager().a().b(2131689962, d, d.getClass().getSimpleName()).a();
    return paramLayoutInflater;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 16908332)
    {
      d();
      paramMenuItem = getActivity();
      if ((paramMenuItem instanceof GHSBaseActivity)) {
        ((GHSBaseActivity)paramMenuItem).b(getClass().getSimpleName());
      }
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    super.onPrepareOptionsMenu(paramMenu);
    paramMenu = getActivity();
    paramMenu.getActionBar().setDisplayHomeAsUpEnabled(true);
    if ((paramMenu instanceof GHSBaseActivity)) {
      ((GHSBaseActivity)paramMenu).b(2131230856);
    }
  }
  
  public void onStart()
  {
    super.onStart();
    if (h)
    {
      h = false;
      return;
    }
    if (c == e.ADD)
    {
      a(com.grubhub.AppBaseLibrary.android.utils.c.e.CONVENIENCE_FEATURES, com.grubhub.AppBaseLibrary.android.utils.c.f.USER_ACCOUNT_INFO, "edit info_add payment details");
      return;
    }
    a(com.grubhub.AppBaseLibrary.android.utils.c.e.CORE_ORDERING_EXP, com.grubhub.AppBaseLibrary.android.utils.c.f.ORDER_PROCESSING, "enter info_payment details");
  }
  
  public void onStop()
  {
    super.onStop();
    a(true);
    ((GHSBaseActivity)getActivity()).a(false);
    h();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSPaymentInfoFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */