package com.grubhub.AppBaseLibrary.android.account;

import android.app.ActionBar;
import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.q;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import android.widget.ViewSwitcher;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.address.GHSAddressSuggestionDialogFragment;
import com.grubhub.AppBaseLibrary.android.dataServices.a.b.o;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSDeliveryInfoDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantAvailabilityDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.order.GHSOutOfRangeDialog;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import com.grubhub.AppBaseLibrary.android.utils.g;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class GHSAddressInfoFragment
  extends GHSInfoFragment
  implements com.grubhub.AppBaseLibrary.android.address.a
{
  private static final String a = GHSAddressInfoFragment.class.getSimpleName();
  private EditText A;
  private Spinner B;
  private Button C;
  private Button D;
  private Button E;
  private View F;
  private ImageView G;
  private View H;
  private TextView I;
  private boolean J;
  private ViewSwitcher K;
  private EditText L;
  private View M;
  private boolean N;
  private boolean O;
  private String P;
  private TextWatcher Q = new TextWatcher()
  {
    public void afterTextChanged(Editable paramAnonymousEditable)
    {
      GHSAddressInfoFragment.a(GHSAddressInfoFragment.this, true);
      GHSAddressInfoFragment.a(GHSAddressInfoFragment.this);
    }
    
    public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    
    public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
  };
  private TextWatcher R = new TextWatcher()
  {
    public void afterTextChanged(Editable paramAnonymousEditable)
    {
      GHSAddressInfoFragment.a(GHSAddressInfoFragment.this);
    }
    
    public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    
    public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
  };
  private TextWatcher S = new TextWatcher()
  {
    String a = null;
    
    public void afterTextChanged(Editable paramAnonymousEditable)
    {
      if (paramAnonymousEditable != null)
      {
        String str = paramAnonymousEditable.toString();
        if ((!str.toString().equals(a)) && (com.grubhub.AppBaseLibrary.android.utils.h.a.c(str)))
        {
          a = com.grubhub.AppBaseLibrary.android.utils.h.a.a(paramAnonymousEditable.toString());
          if (a != null)
          {
            GHSAddressInfoFragment.b(GHSAddressInfoFragment.this).setText(a);
            GHSAddressInfoFragment.b(GHSAddressInfoFragment.this).setSelection(a.length());
          }
        }
      }
      GHSAddressInfoFragment.a(GHSAddressInfoFragment.this);
    }
    
    public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    
    public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
  };
  private AdapterView.OnItemSelectedListener T = new AdapterView.OnItemSelectedListener()
  {
    public void onItemSelected(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
    {
      if ((GHSAddressInfoFragment.c(GHSAddressInfoFragment.this)) && (GHSAddressInfoFragment.d(GHSAddressInfoFragment.this) != paramAnonymousInt))
      {
        GHSAddressInfoFragment.a(GHSAddressInfoFragment.this, true);
        return;
      }
      GHSAddressInfoFragment.b(GHSAddressInfoFragment.this, true);
      GHSAddressInfoFragment.a(GHSAddressInfoFragment.this, paramAnonymousInt);
    }
    
    public void onNothingSelected(AdapterView<?> paramAnonymousAdapterView) {}
  };
  private GHSIAddressDataModel b;
  private GHSIUserAuthDataModel c;
  private b d;
  private a e;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.i.a f;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.i.d g;
  private o h;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.g.b i;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.e j;
  private boolean k;
  private boolean l;
  private boolean m;
  private boolean n;
  private boolean o;
  private int p;
  private ScrollView q;
  private EditText r;
  private EditText s;
  private EditText t;
  private EditText u;
  private EditText v;
  private EditText w;
  private EditText x;
  private TextView y;
  private EditText z;
  
  public static GHSAddressInfoFragment a(a parama, boolean paramBoolean1, boolean paramBoolean2, String paramString)
  {
    return a(parama, paramBoolean1, paramBoolean2, false, false, paramString);
  }
  
  public static GHSAddressInfoFragment a(a parama, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    return a(parama, paramBoolean1, paramBoolean2, paramBoolean3, paramBoolean4, null);
  }
  
  private static GHSAddressInfoFragment a(a parama, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, String paramString)
  {
    GHSAddressInfoFragment localGHSAddressInfoFragment = new GHSAddressInfoFragment();
    Bundle localBundle = new Bundle();
    localBundle.putInt("address_info_type", parama.getValue());
    localBundle.putBoolean("cross_street_required", paramBoolean1);
    localBundle.putBoolean("notify_missing_field_on_load", paramBoolean2);
    localBundle.putBoolean("should_save_to_cart", paramBoolean3);
    localBundle.putBoolean("allow_out_of_range_address", paramBoolean4);
    localBundle.putString("deliver_to_restaurant_id", paramString);
    localGHSAddressInfoFragment.setArguments(localBundle);
    return localGHSAddressInfoFragment;
  }
  
  private void a(com.grubhub.AppBaseLibrary.android.utils.c.e parame, com.grubhub.AppBaseLibrary.android.utils.c.f paramf, String paramString)
  {
    h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(parame, paramf, paramString));
  }
  
  private void a(String paramString)
  {
    h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("user account settings", "address_save", paramString));
  }
  
  private void a(boolean paramBoolean)
  {
    r.setEnabled(paramBoolean);
    s.setEnabled(paramBoolean);
    t.setEnabled(paramBoolean);
    u.setEnabled(paramBoolean);
    v.setEnabled(paramBoolean);
    w.setEnabled(paramBoolean);
    x.setEnabled(paramBoolean);
    y.setEnabled(paramBoolean);
    z.setEnabled(paramBoolean);
    A.setEnabled(paramBoolean);
    B.setEnabled(paramBoolean);
    D.setEnabled(paramBoolean);
    E.setEnabled(paramBoolean);
    F.setEnabled(paramBoolean);
    G.setEnabled(paramBoolean);
    I.setEnabled(paramBoolean);
    L.setEnabled(paramBoolean);
    C.setEnabled(paramBoolean);
  }
  
  private void b(View paramView)
  {
    View localView1 = paramView.findViewById(2131689769);
    View localView2 = paramView.findViewById(2131689748);
    r = ((EditText)paramView.findViewById(2131689752));
    r.addTextChangedListener(R);
    s = ((EditText)paramView.findViewById(2131689754));
    s.addTextChangedListener(R);
    if (e == a.VERIFY)
    {
      t = ((EditText)paramView.findViewById(2131689756));
      t.addTextChangedListener(S);
      localView1.setVisibility(8);
      localView2.setVisibility(0);
      return;
    }
    t = ((EditText)paramView.findViewById(2131689771));
    t.addTextChangedListener(S);
    localView2.setVisibility(8);
    localView1.setVisibility(0);
  }
  
  private GHSIAddressDataModel c()
  {
    GHSAddressDataModel localGHSAddressDataModel = new GHSAddressDataModel();
    localGHSAddressDataModel.setAddress1(u.getText().toString().trim());
    localGHSAddressDataModel.setAddress2(w.getText().toString().trim());
    localGHSAddressDataModel.setCity(v.getText().toString().trim());
    localGHSAddressDataModel.setState(com.grubhub.AppBaseLibrary.android.order.a.a(((TextView)B.getSelectedView().findViewById(2131689661)).getText().toString().trim()));
    localGHSAddressDataModel.setZip(A.getText().toString().trim());
    localGHSAddressDataModel.setCrossStreet(z.getText().toString().trim());
    localGHSAddressDataModel.setDeliveryInstructions(x.getText().toString().trim());
    localGHSAddressDataModel.setLabel(m().trim());
    localGHSAddressDataModel.setPhone(t.getText().toString().trim());
    return localGHSAddressDataModel;
  }
  
  private void c(View paramView)
  {
    B = ((Spinner)paramView.findViewById(2131689766));
    Object localObject = new ArrayAdapter(getActivity(), 2130903085, 2131689661, getResources().getStringArray(2131623945));
    ((ArrayAdapter)localObject).setDropDownViewResource(2130903239);
    B.setAdapter((SpinnerAdapter)localObject);
    B.setOnItemSelectedListener(T);
    u = ((EditText)paramView.findViewById(2131689760));
    u.addTextChangedListener(Q);
    v = ((EditText)paramView.findViewById(2131689764));
    v.addTextChangedListener(Q);
    w = ((EditText)paramView.findViewById(2131689762));
    w.addTextChangedListener(R);
    y = ((TextView)paramView.findViewById(2131689775));
    x = ((EditText)paramView.findViewById(2131689776));
    x.addTextChangedListener(new TextWatcher()
    {
      public void afterTextChanged(Editable paramAnonymousEditable)
      {
        GHSAddressInfoFragment.t(GHSAddressInfoFragment.this).setText(String.valueOf(GHSAddressInfoFragment.h(GHSAddressInfoFragment.this).getText().length()) + getResources().getString(2131230901));
      }
      
      public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    localObject = (TextView)paramView.findViewById(2131689767);
    if (!l)
    {
      String str = ((TextView)localObject).getText().toString();
      if (str.contains("*")) {
        ((TextView)localObject).setText(str.replaceAll("\\*", ""));
      }
    }
    z = ((EditText)paramView.findViewById(2131689768));
    z.addTextChangedListener(R);
    A = ((EditText)paramView.findViewById(2131689773));
    A.addTextChangedListener(Q);
    D = ((Button)paramView.findViewById(2131689779));
    D.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (!GHSAddressInfoFragment.u(GHSAddressInfoFragment.this).isSelected())
        {
          GHSAddressInfoFragment.v(GHSAddressInfoFragment.this);
          GHSAddressInfoFragment.u(GHSAddressInfoFragment.this).setSelected(true);
        }
        GHSAddressInfoFragment.a(GHSAddressInfoFragment.this);
      }
    });
    E = ((Button)paramView.findViewById(2131689780));
    E.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (!GHSAddressInfoFragment.w(GHSAddressInfoFragment.this).isSelected())
        {
          GHSAddressInfoFragment.v(GHSAddressInfoFragment.this);
          GHSAddressInfoFragment.w(GHSAddressInfoFragment.this).setSelected(true);
        }
        GHSAddressInfoFragment.a(GHSAddressInfoFragment.this);
      }
    });
    F = paramView.findViewById(2131689781);
    F.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (GHSAddressInfoFragment.x(GHSAddressInfoFragment.this))
        {
          if (!GHSAddressInfoFragment.y(GHSAddressInfoFragment.this).isSelected())
          {
            GHSAddressInfoFragment.v(GHSAddressInfoFragment.this);
            GHSAddressInfoFragment.y(GHSAddressInfoFragment.this).setSelected(true);
          }
          return;
        }
        GHSAddressInfoFragment.z(GHSAddressInfoFragment.this).setDisplayedChild(1);
        GHSAddressInfoFragment.A(GHSAddressInfoFragment.this).requestFocus();
        ((InputMethodManager)getActivity().getSystemService("input_method")).showSoftInput(GHSAddressInfoFragment.A(GHSAddressInfoFragment.this), 1);
      }
    });
    I = ((TextView)paramView.findViewById(2131689782));
    G = ((ImageButton)paramView.findViewById(2131689784));
    G.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        GHSAddressInfoFragment.A(GHSAddressInfoFragment.this).setText(GHSAddressInfoFragment.B(GHSAddressInfoFragment.this).getText().toString());
        GHSAddressInfoFragment.A(GHSAddressInfoFragment.this).setSelection(GHSAddressInfoFragment.A(GHSAddressInfoFragment.this).getText().toString().length());
        GHSAddressInfoFragment.z(GHSAddressInfoFragment.this).setDisplayedChild(1);
        GHSAddressInfoFragment.A(GHSAddressInfoFragment.this).requestFocus();
        ((InputMethodManager)getActivity().getSystemService("input_method")).showSoftInput(GHSAddressInfoFragment.A(GHSAddressInfoFragment.this), 1);
      }
    });
    H = paramView.findViewById(2131689783);
    K = ((ViewSwitcher)paramView.findViewById(2131689778));
    ((Button)paramView.findViewById(2131689785)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        GHSAddressInfoFragment.C(GHSAddressInfoFragment.this);
      }
    });
    L = ((EditText)paramView.findViewById(2131689786));
    L.setOnEditorActionListener(new TextView.OnEditorActionListener()
    {
      public boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
      {
        if (paramAnonymousInt == 6)
        {
          GHSAddressInfoFragment.C(GHSAddressInfoFragment.this);
          return true;
        }
        return false;
      }
    });
    L.addTextChangedListener(new TextWatcher()
    {
      public void afterTextChanged(Editable paramAnonymousEditable)
      {
        View localView = GHSAddressInfoFragment.D(GHSAddressInfoFragment.this);
        if (paramAnonymousEditable.length() > 0) {}
        for (int i = 0;; i = 8)
        {
          localView.setVisibility(i);
          return;
        }
      }
      
      public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    M = paramView.findViewById(2131689787);
    M.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        GHSAddressInfoFragment.A(GHSAddressInfoFragment.this).setText("");
      }
    });
    C = ((Button)paramView.findViewById(2131689789));
    C.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        d_();
        d();
        if (GHSAddressInfoFragment.E(GHSAddressInfoFragment.this))
        {
          paramAnonymousView = GHSAddressInfoFragment.F(GHSAddressInfoFragment.this);
          GHSAddressInfoFragment.d(GHSAddressInfoFragment.this, paramAnonymousView);
          return;
        }
        GHSAddressInfoFragment.G(GHSAddressInfoFragment.this);
        GHSAddressInfoFragment.a(GHSAddressInfoFragment.this, "incomplete fields required");
      }
    });
  }
  
  private void c(GHSIAddressDataModel paramGHSIAddressDataModel)
  {
    if (n)
    {
      paramGHSIAddressDataModel = com.grubhub.AppBaseLibrary.android.order.a.b(paramGHSIAddressDataModel);
      i = new com.grubhub.AppBaseLibrary.android.dataServices.a.g.b(getActivity(), paramGHSIAddressDataModel, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()new com.grubhub.AppBaseLibrary.android.dataServices.a.i
      {
        public void a()
        {
          GHSAddressInfoFragment.e(GHSAddressInfoFragment.this);
        }
      }, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
      {
        public void a()
        {
          GHSAddressInfoFragment.a(GHSAddressInfoFragment.this, null);
        }
      });
      i.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
      {
        public void a(ArrayList<GHSIAddressDataModel> paramAnonymousArrayList)
        {
          ArrayList localArrayList = com.grubhub.AppBaseLibrary.android.order.a.a(paramAnonymousArrayList);
          if (localArrayList.size() == 1) {}
          for (int i = 1; i != 0; i = 0)
          {
            paramAnonymousArrayList = (GHSIAddressDataModel)paramAnonymousArrayList.get(0);
            paramAnonymousArrayList.setAddress2(GHSAddressInfoFragment.f(GHSAddressInfoFragment.this).getText().toString().trim());
            paramAnonymousArrayList.setCrossStreet(GHSAddressInfoFragment.g(GHSAddressInfoFragment.this).getText().toString().trim());
            paramAnonymousArrayList.setDeliveryInstructions(GHSAddressInfoFragment.h(GHSAddressInfoFragment.this).getText().toString().trim());
            paramAnonymousArrayList.setLabel(GHSAddressInfoFragment.i(GHSAddressInfoFragment.this).trim());
            paramAnonymousArrayList.setPhone(GHSAddressInfoFragment.b(GHSAddressInfoFragment.this).getText().toString().trim());
            GHSAddressInfoFragment.a(GHSAddressInfoFragment.this, paramAnonymousArrayList);
            return;
          }
          if (!localArrayList.isEmpty())
          {
            ((GHSBaseActivity)getActivity()).a(false);
            GHSAddressSuggestionDialogFragment.a(localArrayList).show(getChildFragmentManager(), GHSAddressSuggestionDialogFragment.class.getSimpleName());
            GHSAddressInfoFragment.j(GHSAddressInfoFragment.this);
            return;
          }
          a(new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_ADDRESS_LOOKUP_ZERO_RESULTS).getLocalizedMessage(), true);
          GHSAddressInfoFragment.j(GHSAddressInfoFragment.this);
          GHSAddressInfoFragment.a(GHSAddressInfoFragment.this, "error");
        }
      });
      i.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
      {
        public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
        {
          a(paramAnonymousb.getMessage(), true);
          GHSAddressInfoFragment.j(GHSAddressInfoFragment.this);
          GHSAddressInfoFragment.a(GHSAddressInfoFragment.this, "error");
        }
      });
      i.a();
      return;
    }
    paramGHSIAddressDataModel.setCountry(b.getCountry());
    paramGHSIAddressDataModel.setLatitude(b.getLatitude());
    paramGHSIAddressDataModel.setLongitude(b.getLongitude());
    d(paramGHSIAddressDataModel);
  }
  
  private void d(GHSIAddressDataModel paramGHSIAddressDataModel)
  {
    if ((N) || (e == a.ENTER) || (e == a.VERIFY))
    {
      f(paramGHSIAddressDataModel);
      return;
    }
    if (P != null)
    {
      e(paramGHSIAddressDataModel);
      return;
    }
    if (e == a.EDIT)
    {
      h(paramGHSIAddressDataModel);
      return;
    }
    g(paramGHSIAddressDataModel);
  }
  
  private void e()
  {
    a(false);
    q localq = getActivity();
    if ((localq != null) && ((localq instanceof GHSBaseActivity))) {
      ((GHSBaseActivity)getActivity()).a(true);
    }
  }
  
  private void e(final GHSIAddressDataModel paramGHSIAddressDataModel)
  {
    j = new com.grubhub.AppBaseLibrary.android.dataServices.a.e(getActivity(), P, paramGHSIAddressDataModel.getLatitude(), paramGHSIAddressDataModel.getLongitude(), new com.grubhub.AppBaseLibrary.android.dataServices.a.i()new com.grubhub.AppBaseLibrary.android.dataServices.a.i
    {
      public void a()
      {
        GHSAddressInfoFragment.e(GHSAddressInfoFragment.this);
      }
    }, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
    {
      public void a()
      {
        GHSAddressInfoFragment.a(GHSAddressInfoFragment.this, null);
      }
    });
    j.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(GHSIRestaurantAvailabilityDataModel paramAnonymousGHSIRestaurantAvailabilityDataModel)
      {
        if ((paramAnonymousGHSIRestaurantAvailabilityDataModel != null) && (paramAnonymousGHSIRestaurantAvailabilityDataModel.getSummary(GHSAddressInfoFragment.k(GHSAddressInfoFragment.this)) != null))
        {
          if (paramAnonymousGHSIRestaurantAvailabilityDataModel.getSummary(GHSAddressInfoFragment.k(GHSAddressInfoFragment.this)).offersDeliveryToDinerLocation())
          {
            if (GHSAddressInfoFragment.l(GHSAddressInfoFragment.this) == a.EDIT)
            {
              GHSAddressInfoFragment.b(GHSAddressInfoFragment.this, paramGHSIAddressDataModel);
              return;
            }
            GHSAddressInfoFragment.c(GHSAddressInfoFragment.this, paramGHSIAddressDataModel);
            return;
          }
          paramAnonymousGHSIRestaurantAvailabilityDataModel = new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_ADDRESS_OUT_OF_DELIVERY_AREA);
          com.grubhub.AppBaseLibrary.android.c.a(getActivity(), paramAnonymousGHSIRestaurantAvailabilityDataModel.f(), paramAnonymousGHSIRestaurantAvailabilityDataModel.getLocalizedMessage(), null, null, getString(2131231717), null);
          GHSAddressInfoFragment.j(GHSAddressInfoFragment.this);
          return;
        }
        a(new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN).getLocalizedMessage(), true);
        GHSAddressInfoFragment.j(GHSAddressInfoFragment.this);
      }
    });
    j.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        a(paramAnonymousb.getMessage(), true);
        GHSAddressInfoFragment.j(GHSAddressInfoFragment.this);
      }
    });
    j.a();
  }
  
  private void f()
  {
    a(true);
    q localq = getActivity();
    if ((localq != null) && ((localq instanceof GHSBaseActivity))) {
      ((GHSBaseActivity)getActivity()).a(false);
    }
    n();
  }
  
  private void f(final GHSIAddressDataModel paramGHSIAddressDataModel)
  {
    GHSDeliveryInfoDataModel localGHSDeliveryInfoDataModel = new GHSDeliveryInfoDataModel(paramGHSIAddressDataModel);
    h = new o(getActivity(), false, localGHSDeliveryInfoDataModel, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()new com.grubhub.AppBaseLibrary.android.dataServices.a.i
    {
      public void a()
      {
        GHSAddressInfoFragment.e(GHSAddressInfoFragment.this);
      }
    }, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
    {
      public void a()
      {
        GHSAddressInfoFragment.a(GHSAddressInfoFragment.this, null);
      }
    });
    h.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(GHSICartDataModel paramAnonymousGHSICartDataModel)
      {
        q localq = getActivity();
        if (localq != null)
        {
          if ((paramAnonymousGHSICartDataModel == null) || (paramAnonymousGHSICartDataModel.getDeliveryAddress() == null)) {
            break label69;
          }
          GHSAddressInfoFragment.m(GHSAddressInfoFragment.this);
          if (GHSAddressInfoFragment.l(GHSAddressInfoFragment.this) == a.EDIT) {
            GHSAddressInfoFragment.b(GHSAddressInfoFragment.this, paramGHSIAddressDataModel);
          }
        }
        else
        {
          return;
        }
        GHSAddressInfoFragment.c(GHSAddressInfoFragment.this, paramGHSIAddressDataModel);
        return;
        label69:
        a(localq.getString(2131231489), true);
        GHSAddressInfoFragment.j(GHSAddressInfoFragment.this);
        GHSAddressInfoFragment.a(GHSAddressInfoFragment.this, "error");
      }
    });
    h.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        if (paramAnonymousb.c() == com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_ADDRESS_OUT_OF_DELIVERY_AREA)
        {
          GHSAddressInfoFragment.m(GHSAddressInfoFragment.this);
          if ((GHSAddressInfoFragment.n(GHSAddressInfoFragment.this)) && (GHSAddressInfoFragment.l(GHSAddressInfoFragment.this) == a.EDIT)) {
            new AlertDialog.Builder(getActivity()).setTitle(getString(2131230912)).setMessage(getString(2131230910)).setPositiveButton(getString(2131230911), new DialogInterface.OnClickListener()
            {
              public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
              {
                com.grubhub.AppBaseLibrary.android.order.cart.i.a();
                GHSAddressInfoFragment.c(GHSAddressInfoFragment.this, false);
                GHSAddressInfoFragment.b(GHSAddressInfoFragment.this, a);
              }
            }).setNegativeButton(getString(2131230945), new DialogInterface.OnClickListener()
            {
              public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
              {
                paramAnonymous2DialogInterface.dismiss();
              }
            }).setIcon(17301543).show();
          }
        }
        for (;;)
        {
          GHSAddressInfoFragment.j(GHSAddressInfoFragment.this);
          GHSAddressInfoFragment.a(GHSAddressInfoFragment.this, "error");
          return;
          paramAnonymousb = GHSApplication.a().b().U();
          GHSOutOfRangeDialog.a(paramAnonymousb.getRestaurantId(), paramAnonymousb.getRestaurantName(), paramAnonymousb.offersPickup(), paramGHSIAddressDataModel, com.grubhub.AppBaseLibrary.android.order.i.ORDER, "enter info_address").show(getChildFragmentManager(), GHSOutOfRangeDialog.class.getSimpleName());
          continue;
          a(paramAnonymousb.getMessage(), true);
        }
      }
    });
    h.a();
  }
  
  private void g()
  {
    if (!k)
    {
      GHSApplication.a().b().h(t.getText().toString());
      k = true;
    }
  }
  
  private void g(GHSIAddressDataModel paramGHSIAddressDataModel)
  {
    f = new com.grubhub.AppBaseLibrary.android.dataServices.a.i.a(getActivity(), paramGHSIAddressDataModel, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()new com.grubhub.AppBaseLibrary.android.dataServices.a.i
    {
      public void a()
      {
        GHSAddressInfoFragment.d(GHSAddressInfoFragment.this, false);
        GHSAddressInfoFragment.e(GHSAddressInfoFragment.this);
      }
    }, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
    {
      public void a()
      {
        GHSAddressInfoFragment.a(GHSAddressInfoFragment.this, null);
        GHSAddressInfoFragment.j(GHSAddressInfoFragment.this);
      }
    });
    f.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(ArrayList<GHSIAddressDataModel> paramAnonymousArrayList)
      {
        q localq = getActivity();
        GHSIAddressDataModel localGHSIAddressDataModel;
        if (localq != null)
        {
          if (paramAnonymousArrayList == null) {
            break label221;
          }
          GHSAddressInfoFragment.m(GHSAddressInfoFragment.this);
          localGHSIAddressDataModel = null;
          if (paramAnonymousArrayList.size() > 0) {
            localGHSIAddressDataModel = (GHSIAddressDataModel)paramAnonymousArrayList.get(0);
          }
          if (localGHSIAddressDataModel == null) {
            break label197;
          }
          if ((GHSAddressInfoFragment.o(GHSAddressInfoFragment.this)) || (GHSAddressInfoFragment.l(GHSAddressInfoFragment.this) == a.ENTER) || (GHSAddressInfoFragment.l(GHSAddressInfoFragment.this) == a.VERIFY)) {
            GHSApplication.a().b().a(localGHSIAddressDataModel);
          }
          if (GHSAddressInfoFragment.l(GHSAddressInfoFragment.this) != a.VERIFY) {
            GHSAddressInfoFragment.a(GHSAddressInfoFragment.this, "successful");
          }
          if (GHSAddressInfoFragment.p(GHSAddressInfoFragment.this) != null)
          {
            if (GHSAddressInfoFragment.l(GHSAddressInfoFragment.this) != a.VERIFY) {
              break label178;
            }
            GHSAddressInfoFragment.p(GHSAddressInfoFragment.this).a(GHSAddressInfoFragment.q(GHSAddressInfoFragment.this).getText().toString(), GHSAddressInfoFragment.r(GHSAddressInfoFragment.this).getText().toString(), localGHSIAddressDataModel);
          }
        }
        return;
        label178:
        GHSAddressInfoFragment.p(GHSAddressInfoFragment.this).d(localGHSIAddressDataModel.getId());
        return;
        label197:
        a(localq.getString(2131231592), true);
        GHSAddressInfoFragment.a(GHSAddressInfoFragment.this, "error");
        return;
        label221:
        a(localq.getString(2131231489), true);
        GHSAddressInfoFragment.a(GHSAddressInfoFragment.this, "error");
      }
    });
    f.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        a(paramAnonymousb.getMessage(), true);
        GHSAddressInfoFragment.a(GHSAddressInfoFragment.this, "error");
      }
    });
    f.a();
  }
  
  private void h()
  {
    if (c != null)
    {
      r.setText(c.getFirstName());
      s.setText(c.getLastName());
    }
  }
  
  private void h(final GHSIAddressDataModel paramGHSIAddressDataModel)
  {
    g = new com.grubhub.AppBaseLibrary.android.dataServices.a.i.d(getActivity(), b.getId(), paramGHSIAddressDataModel, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()new com.grubhub.AppBaseLibrary.android.dataServices.a.i
    {
      public void a()
      {
        GHSAddressInfoFragment.e(GHSAddressInfoFragment.this);
      }
    }, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
    {
      public void a()
      {
        GHSAddressInfoFragment.a(GHSAddressInfoFragment.this, null);
        GHSAddressInfoFragment.j(GHSAddressInfoFragment.this);
      }
    });
    g.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(ArrayList<GHSIAddressDataModel> paramAnonymousArrayList)
      {
        Object localObject1 = GHSApplication.a().b();
        Object localObject2 = ((com.grubhub.AppBaseLibrary.android.dataServices.b.b)localObject1).z();
        if (localObject2 != null)
        {
          String str = ((GHSFilterSortCriteria)localObject2).getSavedAddressId();
          if ((str != null) && (str.equals(GHSAddressInfoFragment.s(GHSAddressInfoFragment.this).getId())))
          {
            ((GHSFilterSortCriteria)localObject2).setAddress(paramGHSIAddressDataModel, com.grubhub.AppBaseLibrary.android.order.a.b(paramGHSIAddressDataModel));
            ((com.grubhub.AppBaseLibrary.android.dataServices.b.b)localObject1).a((GHSFilterSortCriteria)localObject2);
          }
        }
        localObject2 = getActivity();
        if (localObject2 != null)
        {
          if (paramAnonymousArrayList == null) {
            break label207;
          }
          GHSAddressInfoFragment.m(GHSAddressInfoFragment.this);
          localObject1 = null;
          if (paramAnonymousArrayList.size() > 0) {
            localObject1 = (GHSIAddressDataModel)paramAnonymousArrayList.get(0);
          }
          if (localObject1 == null) {
            break label183;
          }
          if ((paramAnonymousArrayList.size() > 0) && (GHSAddressInfoFragment.o(GHSAddressInfoFragment.this))) {
            GHSApplication.a().b().a((GHSIAddressDataModel)localObject1);
          }
          GHSAddressInfoFragment.a(GHSAddressInfoFragment.this, "successful");
          if (GHSAddressInfoFragment.p(GHSAddressInfoFragment.this) != null) {
            GHSAddressInfoFragment.p(GHSAddressInfoFragment.this).d(((GHSIAddressDataModel)localObject1).getId());
          }
        }
        return;
        label183:
        a(((Activity)localObject2).getString(2131231592), true);
        GHSAddressInfoFragment.a(GHSAddressInfoFragment.this, "error");
        return;
        label207:
        a(((Activity)localObject2).getString(2131231489), true);
        GHSAddressInfoFragment.a(GHSAddressInfoFragment.this, "error");
      }
    });
    g.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        a(paramAnonymousb.getMessage(), true);
        GHSAddressInfoFragment.a(GHSAddressInfoFragment.this, "error");
      }
    });
    g.a();
  }
  
  private void i()
  {
    if (b != null)
    {
      u.setText(b.getAddress1());
      w.setText(b.getAddress2());
      v.setText(b.getCity());
      A.setText(b.getZip());
      z.setText(b.getCrossStreet());
      x.setText(b.getDeliveryInstructions());
      int i2 = ((ArrayAdapter)B.getAdapter()).getPosition(b.getState());
      int i1 = i2;
      if (i2 == -1) {
        i1 = Arrays.asList(getResources().getStringArray(2131623944)).indexOf(b.getState());
      }
      B.setSelection(i1);
      if (!com.grubhub.AppBaseLibrary.android.utils.h.a.b(b.getPhone())) {
        break label226;
      }
      t.setText(b.getPhone());
    }
    String str;
    for (;;)
    {
      str = b.getLabel();
      if (!TextUtils.isEmpty(str)) {
        break;
      }
      D.setSelected(true);
      return;
      label226:
      if ((b.getPhone() == null) || (b.getPhone().length() == 0)) {
        t.setText(GHSApplication.a().b().B());
      }
    }
    if (str.equals(getResources().getString(2131230892)))
    {
      D.setSelected(true);
      return;
    }
    if (str.equals(getResources().getString(2131230897)))
    {
      E.setSelected(true);
      return;
    }
    F.setSelected(true);
    I.setText(str);
    J = true;
    G.setVisibility(0);
  }
  
  private void j()
  {
    Resources localResources = getResources();
    Object localObject2 = null;
    Object localObject1 = localObject2;
    int i1;
    if (e == a.VERIFY)
    {
      if (!g.c(r.getText().toString()))
      {
        localObject1 = null + localResources.getString(2131231769);
        a(r, q);
      }
    }
    else
    {
      if (localObject1 != null) {
        break label565;
      }
      if (g.d(u.getText().toString())) {
        break label282;
      }
      localObject1 = localResources.getString(2131230887);
      a(u, q);
      i1 = 0;
    }
    for (;;)
    {
      if (localObject1 != null)
      {
        localObject2 = localObject1;
        if (i1 == 0) {
          localObject2 = localResources.getString(2131231602) + " " + (String)localObject1;
        }
        a((String)localObject2, true);
      }
      return;
      if (!g.c(s.getText().toString()))
      {
        localObject1 = null + localResources.getString(2131231770);
        a(s, q);
        break;
      }
      localObject1 = localObject2;
      if (!com.grubhub.AppBaseLibrary.android.utils.f.a(t.getText().toString())) {
        break;
      }
      localObject1 = null + localResources.getString(2131230895);
      a(t, q);
      break;
      label282:
      if (!g.e(v.getText().toString()))
      {
        localObject1 = localResources.getString(2131230889);
        a(v, q);
        i1 = 0;
      }
      else if ((l) && (!g.f(z.getText().toString())))
      {
        localObject1 = localResources.getString(2131230893);
        a(z, q);
        i1 = 0;
      }
      else if (com.grubhub.AppBaseLibrary.android.utils.f.a(A.getText().toString()))
      {
        localObject1 = localResources.getString(2131230898);
        a(A, q);
        i1 = 0;
      }
      else if (!g.g(A.getText().toString()))
      {
        localObject1 = localResources.getString(2131230899);
        a(A, q);
        i1 = 1;
      }
      else if (com.grubhub.AppBaseLibrary.android.utils.f.a(t.getText().toString()))
      {
        localObject1 = localResources.getString(2131230895);
        a(t, q);
        i1 = 0;
      }
      else if (!com.grubhub.AppBaseLibrary.android.utils.h.a.b(t.getText().toString()))
      {
        localObject1 = localResources.getString(2131231459);
        a(t, q);
        i1 = 1;
      }
      else if (com.grubhub.AppBaseLibrary.android.utils.f.a(m()))
      {
        localObject1 = localResources.getString(2131231458);
        i1 = 1;
      }
      else
      {
        label565:
        i1 = 0;
      }
    }
  }
  
  private void k()
  {
    String str = L.getText().toString().trim();
    if (str.length() > 0)
    {
      J = true;
      I.setText(str);
      G.setVisibility(0);
      H.setVisibility(0);
      l();
    }
    for (;;)
    {
      F.setSelected(J);
      L.setText(null);
      K.setDisplayedChild(0);
      d();
      n();
      return;
      J = false;
      I.setText(2131230890);
      G.setVisibility(8);
      H.setVisibility(8);
    }
  }
  
  private void l()
  {
    D.setSelected(false);
    E.setSelected(false);
    F.setSelected(false);
  }
  
  private String m()
  {
    String str = "";
    if (D.isSelected()) {
      str = D.getText().toString();
    }
    do
    {
      return str;
      if (E.isSelected()) {
        return E.getText().toString();
      }
    } while (!F.isSelected());
    return I.getText().toString();
  }
  
  private void n()
  {
    boolean bool1 = true;
    boolean bool2;
    if (C != null)
    {
      if ((!g.d(u.getText().toString())) || (!g.e(v.getText().toString())) || (!com.grubhub.AppBaseLibrary.android.utils.h.a.b(t.getText().toString())) || (!g.g(A.getText().toString())) || (!com.grubhub.AppBaseLibrary.android.utils.f.b(m()))) {
        break label191;
      }
      bool2 = true;
      m = bool2;
      if (e == a.VERIFY)
      {
        bool2 = m;
        if ((!g.c(r.getText().toString())) || (!g.c(s.getText().toString()))) {
          break label196;
        }
      }
    }
    for (;;)
    {
      m = (bool2 & bool1);
      if (l) {
        m &= g.f(z.getText().toString());
      }
      if (!m) {
        break label201;
      }
      C.setBackgroundResource(2130837627);
      return;
      label191:
      bool2 = false;
      break;
      label196:
      bool1 = false;
    }
    label201:
    C.setBackgroundResource(2130837628);
  }
  
  public void a(GHSIAddressDataModel paramGHSIAddressDataModel)
  {
    b = paramGHSIAddressDataModel;
  }
  
  public void b(GHSIAddressDataModel paramGHSIAddressDataModel)
  {
    if (b != null)
    {
      b.setAddress1(paramGHSIAddressDataModel.getAddress1());
      b.setCity(paramGHSIAddressDataModel.getCity());
      b.setState(paramGHSIAddressDataModel.getState());
      b.setZip(paramGHSIAddressDataModel.getZip());
      b.setCountry(paramGHSIAddressDataModel.getCountry());
      b.setLatitude(paramGHSIAddressDataModel.getLatitude());
      b.setLongitude(paramGHSIAddressDataModel.getLongitude());
      b.setAddress2(w.getText().toString().trim());
      b.setCrossStreet(z.getText().toString().trim());
      b.setDeliveryInstructions(x.getText().toString().trim());
      b.setLabel(m().trim());
      b.setPhone(t.getText().toString().trim());
      i();
      n = false;
    }
  }
  
  protected void d_()
  {
    r.setBackgroundResource(2130837569);
    s.setBackgroundResource(2130837569);
    t.setBackgroundResource(2130837569);
    u.setBackgroundResource(2130837569);
    v.setBackgroundResource(2130837569);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if ((getParentFragment() instanceof b)) {
      d = ((b)getParentFragment());
    }
    while (!(paramActivity instanceof b)) {
      return;
    }
    d = ((b)paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    e = a.getAddressInfoEnum(getArguments().getInt("address_info_type"));
    l = getArguments().getBoolean("cross_street_required", false);
    N = getArguments().getBoolean("should_save_to_cart");
    O = getArguments().getBoolean("allow_out_of_range_address");
    P = getArguments().getString("deliver_to_restaurant_id");
    if (b == null)
    {
      if ((e != a.ENTER) && (e != a.EDIT) && (e != a.VERIFY)) {
        break label208;
      }
      paramBundle = GHSApplication.a().b();
      b = paramBundle.t();
      if ((e == a.ENTER) || (e == a.VERIFY))
      {
        if (b == null)
        {
          GHSFilterSortCriteria localGHSFilterSortCriteria = paramBundle.z();
          if (localGHSFilterSortCriteria != null) {
            b = localGHSFilterSortCriteria.getAddress();
          }
        }
        c = paramBundle.N();
      }
    }
    for (;;)
    {
      k = com.grubhub.AppBaseLibrary.android.utils.f.b(GHSApplication.a().b().B());
      setHasOptionsMenu(true);
      return;
      label208:
      b = new GHSAddressDataModel();
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903113, paramViewGroup, false);
    q = ((ScrollView)paramLayoutInflater.findViewById(2131689747));
    b(paramLayoutInflater);
    c(paramLayoutInflater);
    if (paramBundle == null)
    {
      h();
      i();
      if (getArguments().getBoolean("notify_missing_field_on_load")) {
        j();
      }
      n = false;
    }
    if ((b != null) && (com.grubhub.AppBaseLibrary.android.utils.f.a(b.getCountry()))) {
      n = true;
    }
    n();
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
    int i1;
    if ((paramMenu instanceof GHSBaseActivity))
    {
      if (e != a.ADD) {
        break label48;
      }
      i1 = 2131230855;
    }
    for (;;)
    {
      ((GHSBaseActivity)paramMenu).b(i1);
      return;
      label48:
      if (e == a.EDIT) {
        i1 = 2131230842;
      } else if (e == a.VERIFY) {
        i1 = 2131230875;
      } else {
        i1 = 2131230838;
      }
    }
  }
  
  public void onStart()
  {
    super.onStart();
    if (e == a.ADD)
    {
      a(com.grubhub.AppBaseLibrary.android.utils.c.e.CONVENIENCE_FEATURES, com.grubhub.AppBaseLibrary.android.utils.c.f.USER_ACCOUNT_INFO, "edit info_add address");
      return;
    }
    if (e == a.EDIT)
    {
      a(com.grubhub.AppBaseLibrary.android.utils.c.e.CONVENIENCE_FEATURES, com.grubhub.AppBaseLibrary.android.utils.c.f.USER_ACCOUNT_INFO, "edit info_address");
      return;
    }
    if (e == a.VERIFY)
    {
      a(com.grubhub.AppBaseLibrary.android.utils.c.e.CORE_ORDERING_EXP, com.grubhub.AppBaseLibrary.android.utils.c.f.ORDER_PROCESSING, "verify address");
      return;
    }
    a(com.grubhub.AppBaseLibrary.android.utils.c.e.CORE_ORDERING_EXP, com.grubhub.AppBaseLibrary.android.utils.c.f.ORDER_PROCESSING, "enter info_address");
  }
  
  public void onStop()
  {
    super.onStop();
    if (f != null)
    {
      f.g();
      f = null;
    }
    if (g != null)
    {
      g.g();
      g = null;
    }
    if (h != null)
    {
      h.g();
      h = null;
    }
    if (i != null)
    {
      i.g();
      i = null;
    }
    if (j != null)
    {
      j.g();
      j = null;
    }
    f();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSAddressInfoFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */