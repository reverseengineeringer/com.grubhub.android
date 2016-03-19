package com.google.android.gms.d;

import android.content.Context;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class cx
{
  public static final Integer a = Integer.valueOf(0);
  public static final Integer b = Integer.valueOf(1);
  private final Context c;
  private final ExecutorService d;
  
  public cx(Context paramContext)
  {
    this(paramContext, Executors.newSingleThreadExecutor());
  }
  
  cx(Context paramContext, ExecutorService paramExecutorService)
  {
    c = paramContext;
    d = paramExecutorService;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.cx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */