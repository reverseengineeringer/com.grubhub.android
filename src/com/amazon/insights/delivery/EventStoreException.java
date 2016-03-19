package com.amazon.insights.delivery;

public class EventStoreException
  extends RuntimeException
{
  private static final long serialVersionUID = 7508256672436016788L;
  
  public EventStoreException(String paramString)
  {
    super(paramString);
  }
  
  public EventStoreException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public EventStoreException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.delivery.EventStoreException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */