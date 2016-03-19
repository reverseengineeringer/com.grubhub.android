package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.android.volley.NetworkResponse;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2OrderHistoryDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderListDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.c;
import com.grubhub.AppBaseLibrary.android.dataServices.net.k;
import java.util.Map;

class ax
  extends c<GHSIPastOrderListDataModel>
{
  public ax(av paramav, String paramString)
  {
    super(paramString, new k(), V2OrderHistoryDTO.class, a, i, j);
  }
  
  protected Response<GHSIPastOrderListDataModel> parseNetworkResponse(NetworkResponse paramNetworkResponse)
  {
    Response localResponse2 = super.parseNetworkResponse(paramNetworkResponse);
    Response localResponse1 = localResponse2;
    if (localResponse2.isSuccess())
    {
      localResponse1 = localResponse2;
      if (headers != null)
      {
        localResponse1 = localResponse2;
        if (headers.containsKey("gh-hotpocket-status")) {
          localResponse1 = Response.error(new VolleyError(new NetworkResponse(500, data, headers, notModified)));
        }
      }
    }
    return localResponse1;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.ax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */