package com.taplytics;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public class fb
  implements SensorEventListener
{
  private SensorManager a;
  private Sensor b;
  private float[] c = new float[3];
  private int d;
  private boolean e = false;
  private long f;
  private fd g;
  
  private float a(float paramFloat, int paramInt)
  {
    return 0.8F * c[paramInt] + 0.19999999F * paramFloat;
  }
  
  private float a(SensorEvent paramSensorEvent)
  {
    c[0] = a(values[0], 0);
    c[1] = a(values[1], 1);
    c[2] = a(values[2], 2);
    float f1 = values[0];
    float f2 = c[0];
    float f3 = values[1];
    float f4 = c[1];
    float f5 = values[2];
    float f6 = c[2];
    return Math.max(Math.max(f1 - f2, f3 - f4), f5 - f6);
  }
  
  private void c()
  {
    d = 0;
    f = System.currentTimeMillis();
  }
  
  public void a()
  {
    a.registerListener(this, b, 3);
    iz.d().schedule(new fc(this), 200L, TimeUnit.MILLISECONDS);
  }
  
  public void a(Context paramContext)
  {
    a = ((SensorManager)paramContext.getSystemService("sensor"));
    b = a.getDefaultSensor(1);
    a();
  }
  
  public void a(fd paramfd)
  {
    g = paramfd;
  }
  
  public void b()
  {
    a.unregisterListener(this);
  }
  
  public void onAccuracyChanged(Sensor paramSensor, int paramInt) {}
  
  public void onSensorChanged(SensorEvent paramSensorEvent)
  {
    if ((fy.e().i()) && (e) && (a(paramSensorEvent) >= 5.0F))
    {
      if (d != 0) {
        break label52;
      }
      d += 1;
      f = System.currentTimeMillis();
    }
    label52:
    do
    {
      return;
      long l = System.currentTimeMillis();
      if ((l - f >= 500L) || (l - f <= 10L)) {
        break;
      }
      d += 1;
      if (ck.c()) {
        ck.a("Move Count: " + d);
      }
    } while ((d < 3) || (g == null));
    g.a();
    return;
    c();
    d += 1;
  }
}

/* Location:
 * Qualified Name:     com.taplytics.fb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */