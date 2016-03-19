package com.grubhub.AppBaseLibrary.android.address;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import java.util.ArrayList;

class GHSAddressSuggestionDialogFragment$1
  implements DialogInterface.OnClickListener
{
  GHSAddressSuggestionDialogFragment$1(GHSAddressSuggestionDialogFragment paramGHSAddressSuggestionDialogFragment) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if ((GHSAddressSuggestionDialogFragment.a(a) != null) && (GHSAddressSuggestionDialogFragment.b(a) != null) && (paramInt >= 0) && (paramInt < GHSAddressSuggestionDialogFragment.b(a).size())) {
      GHSAddressSuggestionDialogFragment.a(a, (GHSIAddressDataModel)GHSAddressSuggestionDialogFragment.b(a).get(paramInt));
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.address.GHSAddressSuggestionDialogFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */