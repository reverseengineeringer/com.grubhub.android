package android.support.v4.app;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class Fragment$SavedState
  implements Parcelable
{
  public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator()
  {
    public Fragment.SavedState a(Parcel paramAnonymousParcel)
    {
      return new Fragment.SavedState(paramAnonymousParcel, null);
    }
    
    public Fragment.SavedState[] a(int paramAnonymousInt)
    {
      return new Fragment.SavedState[paramAnonymousInt];
    }
  };
  final Bundle a;
  
  Fragment$SavedState(Bundle paramBundle)
  {
    a = paramBundle;
  }
  
  Fragment$SavedState(Parcel paramParcel, ClassLoader paramClassLoader)
  {
    a = paramParcel.readBundle();
    if ((paramClassLoader != null) && (a != null)) {
      a.setClassLoader(paramClassLoader);
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeBundle(a);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.Fragment.SavedState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */