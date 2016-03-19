package android.support.v4.media;

import android.media.RemoteControlClient.OnGetPlaybackPositionListener;
import android.media.RemoteControlClient.OnPlaybackPositionUpdateListener;

class b
  implements RemoteControlClient.OnGetPlaybackPositionListener, RemoteControlClient.OnPlaybackPositionUpdateListener
{
  final a a;
  
  public long onGetPlaybackPosition()
  {
    return a.a();
  }
  
  public void onPlaybackPositionUpdate(long paramLong)
  {
    a.a(paramLong);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */