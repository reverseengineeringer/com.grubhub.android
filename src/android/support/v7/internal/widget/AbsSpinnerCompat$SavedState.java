package android.support.v7.internal.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;

class AbsSpinnerCompat$SavedState
  extends View.BaseSavedState
{
  public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator()
  {
    public AbsSpinnerCompat.SavedState a(Parcel paramAnonymousParcel)
    {
      return new AbsSpinnerCompat.SavedState(paramAnonymousParcel);
    }
    
    public AbsSpinnerCompat.SavedState[] a(int paramAnonymousInt)
    {
      return new AbsSpinnerCompat.SavedState[paramAnonymousInt];
    }
  };
  long a;
  int b;
  
  AbsSpinnerCompat$SavedState(Parcel paramParcel)
  {
    super(paramParcel);
    a = paramParcel.readLong();
    b = paramParcel.readInt();
  }
  
  AbsSpinnerCompat$SavedState(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }
  
  public String toString()
  {
    return "AbsSpinner.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " selectedId=" + a + " position=" + b + "}";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeLong(a);
    paramParcel.writeInt(b);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.AbsSpinnerCompat.SavedState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */