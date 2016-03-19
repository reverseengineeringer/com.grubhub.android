package com.grubhub.AppBaseLibrary.android.account;

import android.widget.EditText;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.address.GHSAddressSuggestionDialogFragment;
import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import java.util.ArrayList;

class GHSAddressInfoFragment$32
  implements e<ArrayList<GHSIAddressDataModel>>
{
  GHSAddressInfoFragment$32(GHSAddressInfoFragment paramGHSAddressInfoFragment) {}
  
  public void a(ArrayList<GHSIAddressDataModel> paramArrayList)
  {
    ArrayList localArrayList = com.grubhub.AppBaseLibrary.android.order.a.a(paramArrayList);
    if (localArrayList.size() == 1) {}
    for (int i = 1; i != 0; i = 0)
    {
      paramArrayList = (GHSIAddressDataModel)paramArrayList.get(0);
      paramArrayList.setAddress2(GHSAddressInfoFragment.f(a).getText().toString().trim());
      paramArrayList.setCrossStreet(GHSAddressInfoFragment.g(a).getText().toString().trim());
      paramArrayList.setDeliveryInstructions(GHSAddressInfoFragment.h(a).getText().toString().trim());
      paramArrayList.setLabel(GHSAddressInfoFragment.i(a).trim());
      paramArrayList.setPhone(GHSAddressInfoFragment.b(a).getText().toString().trim());
      GHSAddressInfoFragment.a(a, paramArrayList);
      return;
    }
    if (!localArrayList.isEmpty())
    {
      ((GHSBaseActivity)a.getActivity()).a(false);
      GHSAddressSuggestionDialogFragment.a(localArrayList).show(a.getChildFragmentManager(), GHSAddressSuggestionDialogFragment.class.getSimpleName());
      GHSAddressInfoFragment.j(a);
      return;
    }
    a.a(new b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_ADDRESS_LOOKUP_ZERO_RESULTS).getLocalizedMessage(), true);
    GHSAddressInfoFragment.j(a);
    GHSAddressInfoFragment.a(a, "error");
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSAddressInfoFragment.32
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */