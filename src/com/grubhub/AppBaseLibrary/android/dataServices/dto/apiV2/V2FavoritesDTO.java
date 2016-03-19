package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.favorites.GHSIFavoriteDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.favorites.GHSIFavoriteListDataModel;
import java.util.ArrayList;

public class V2FavoritesDTO
  implements GHSIFavoriteListDataModel
{
  private ArrayList<V2FavoritesDTO.GHSFavorite> favorite_restaurants = new ArrayList();
  
  public ArrayList<GHSIFavoriteDataModel> getFavoriteRestaurants()
  {
    ArrayList localArrayList = new ArrayList();
    if (favorite_restaurants != null) {
      localArrayList.addAll(favorite_restaurants);
    }
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2FavoritesDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */