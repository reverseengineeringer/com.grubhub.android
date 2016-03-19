package android.support.v7.internal.widget;

class u
  implements Runnable
{
  private u(p paramp) {}
  
  public void run()
  {
    if (a.u)
    {
      if (a.getAdapter() != null) {
        a.post(this);
      }
      return;
    }
    p.b(a);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */