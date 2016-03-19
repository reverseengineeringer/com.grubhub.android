package com.grubhub.AppBaseLibrary.android.address;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.widget.ArrayAdapter;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.utils.c.c;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import java.util.ArrayList;

public class GHSAddressSuggestionDialogFragment
  extends DialogFragment
{
  private Dialog a;
  private ArrayList<GHSIAddressDataModel> b;
  private ArrayAdapter<String> c;
  private a d;
  
  public static GHSAddressSuggestionDialogFragment a(ArrayList<GHSIAddressDataModel> paramArrayList)
  {
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("addresses_key", paramArrayList);
    paramArrayList = new GHSAddressSuggestionDialogFragment();
    paramArrayList.setArguments(localBundle);
    return paramArrayList;
  }
  
  private void a()
  {
    ArrayList localArrayList;
    int i;
    if ((c != null) && (b != null))
    {
      localArrayList = new ArrayList();
      i = 0;
    }
    for (;;)
    {
      if (i < b.size())
      {
        GHSIAddressDataModel localGHSIAddressDataModel = (GHSIAddressDataModel)b.get(i);
        if (localGHSIAddressDataModel != null) {
          localArrayList.add(com.grubhub.AppBaseLibrary.android.order.a.b(localGHSIAddressDataModel));
        }
        if (i < 6) {}
      }
      else
      {
        c.clear();
        c.addAll(localArrayList);
        c.notifyDataSetChanged();
        return;
      }
      i += 1;
    }
  }
  
  private void a(GHSIAddressDataModel paramGHSIAddressDataModel)
  {
    if ((d != null) && (paramGHSIAddressDataModel != null)) {
      d.b(paramGHSIAddressDataModel);
    }
    h.a().a(new c("address verification", "suggested addresses-do you mean modal_CTA", "selected suggested address", "1"));
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if ((getParentFragment() instanceof a)) {
      d = ((a)getParentFragment());
    }
    while (!(paramActivity instanceof a)) {
      return;
    }
    d = ((a)paramActivity);
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    super.onCancel(paramDialogInterface);
    h.a().a(new c("address verification", "suggested addresses-do you mean modal_CTA", "modal dismissed", "1"));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b = ((ArrayList)getArguments().getSerializable("addresses_key"));
    c = new ArrayAdapter(getActivity(), 17367043);
    a();
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    h.a().a(new c("address verification", "suggested addresses-do you mean modal_impression", "modal displayed", "1"));
    paramBundle = new AlertDialog.Builder(getActivity());
    paramBundle.setTitle(getString(2131230886)).setAdapter(c, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        if ((GHSAddressSuggestionDialogFragment.a(GHSAddressSuggestionDialogFragment.this) != null) && (GHSAddressSuggestionDialogFragment.b(GHSAddressSuggestionDialogFragment.this) != null) && (paramAnonymousInt >= 0) && (paramAnonymousInt < GHSAddressSuggestionDialogFragment.b(GHSAddressSuggestionDialogFragment.this).size())) {
          GHSAddressSuggestionDialogFragment.a(GHSAddressSuggestionDialogFragment.this, (GHSIAddressDataModel)GHSAddressSuggestionDialogFragment.b(GHSAddressSuggestionDialogFragment.this).get(paramAnonymousInt));
        }
      }
    });
    a = paramBundle.create();
    a.setCanceledOnTouchOutside(false);
    return a;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.address.GHSAddressSuggestionDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */