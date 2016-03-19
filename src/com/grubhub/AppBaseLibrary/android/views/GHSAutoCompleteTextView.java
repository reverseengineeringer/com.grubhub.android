package com.grubhub.AppBaseLibrary.android.views;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.KeyEvent.Callback;
import android.widget.AutoCompleteTextView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;

public class GHSAutoCompleteTextView
  extends AutoCompleteTextView
{
  private static final ArrayList<Character> a = new ArrayList(Arrays.asList(new Character[] { Character.valueOf('a'), Character.valueOf('b'), Character.valueOf('c'), Character.valueOf('d'), Character.valueOf('e'), Character.valueOf('f'), Character.valueOf('g'), Character.valueOf('h'), Character.valueOf('i'), Character.valueOf('j'), Character.valueOf('k'), Character.valueOf('l'), Character.valueOf('m'), Character.valueOf('n'), Character.valueOf('o'), Character.valueOf('p'), Character.valueOf('q'), Character.valueOf('r'), Character.valueOf('s'), Character.valueOf('t'), Character.valueOf('u'), Character.valueOf('v'), Character.valueOf('w'), Character.valueOf('x'), Character.valueOf('y'), Character.valueOf('z') }));
  private static final ArrayList<Character> b = new ArrayList(Arrays.asList(new Character[] { Character.valueOf('0'), Character.valueOf('1'), Character.valueOf('2'), Character.valueOf('3'), Character.valueOf('4'), Character.valueOf('5'), Character.valueOf('6'), Character.valueOf('7'), Character.valueOf('8'), Character.valueOf('9') }));
  private static final ArrayList<Character> c = new ArrayList(Arrays.asList(new Character[] { Character.valueOf('!'), Character.valueOf('@'), Character.valueOf('#'), Character.valueOf('$'), Character.valueOf('%'), Character.valueOf('^'), Character.valueOf('*'), Character.valueOf('('), Character.valueOf(')'), Character.valueOf('_'), Character.valueOf('+'), Character.valueOf('-'), Character.valueOf('='), Character.valueOf('['), Character.valueOf(']'), Character.valueOf('{'), Character.valueOf('}'), Character.valueOf(';'), Character.valueOf('\''), Character.valueOf(':'), Character.valueOf('"'), Character.valueOf('/'), Character.valueOf('?'), Character.valueOf('>'), Character.valueOf('<'), Character.valueOf('\\'), Character.valueOf('|') }));
  private boolean d;
  private boolean e;
  private KeyEvent.Callback f;
  private Handler g = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      if (what == 0) {
        GHSAutoCompleteTextView.a(GHSAutoCompleteTextView.this, (CharSequence)obj, arg1);
      }
    }
  };
  
  public GHSAutoCompleteTextView(Context paramContext)
  {
    super(paramContext);
  }
  
  public GHSAutoCompleteTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    h.a(paramContext, this, paramAttributeSet);
  }
  
  public GHSAutoCompleteTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    h.a(paramContext, this, paramAttributeSet);
  }
  
  private boolean a(String paramString, boolean paramBoolean)
  {
    int i;
    if (paramBoolean) {
      i = 1;
    }
    for (int j = 1;; j = 0)
    {
      if (paramString != null)
      {
        paramString = paramString.toLowerCase(Locale.US).toCharArray();
        int i3 = paramString.length;
        int k = 0;
        int i1 = 0;
        int m = i;
        while (k < i3)
        {
          char c1 = paramString[k];
          int n;
          int i2;
          if (paramBoolean) {
            if (!a.contains(Character.valueOf(c1)))
            {
              n = m;
              i2 = j;
              i = i1;
              if (!b.contains(Character.valueOf(c1))) {}
            }
            else
            {
              i = i1 + 1;
              i2 = j;
              n = m;
            }
          }
          while ((i >= 3) && (i2 != 0) && (n != 0))
          {
            return true;
            if (a.contains(Character.valueOf(c1)))
            {
              i = i1 + 1;
              i2 = 1;
              n = m;
            }
            else
            {
              n = m;
              i2 = j;
              i = i1;
              if (b.contains(Character.valueOf(c1)))
              {
                i = i1 + 1;
                n = 1;
                i2 = j;
              }
            }
          }
          k += 1;
          m = n;
          j = i2;
          i1 = i;
        }
      }
      return false;
      i = 0;
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (f != null) {
      f.onKeyDown(paramInt, paramKeyEvent);
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (f != null) {
      f.onKeyUp(paramInt, paramKeyEvent);
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  protected void performFiltering(CharSequence paramCharSequence, int paramInt)
  {
    if (d)
    {
      if (!e) {
        break label124;
      }
      if (paramCharSequence != null)
      {
        if (a(paramCharSequence.toString(), true)) {
          break label41;
        }
        g.removeMessages(0);
      }
    }
    label41:
    while ((paramCharSequence.charAt(paramCharSequence.length() - 1) == ' ') || (c.contains(Character.valueOf(paramCharSequence.charAt(paramCharSequence.length() - 1))))) {
      return;
    }
    g.removeMessages(0);
    paramCharSequence = g.obtainMessage(0, paramInt, 0, paramCharSequence.toString());
    g.sendMessageDelayed(paramCharSequence, 1000L);
    return;
    label124:
    super.performFiltering(paramCharSequence, paramInt);
  }
  
  public void setAutoCompleteEnabled(boolean paramBoolean)
  {
    d = paramBoolean;
  }
  
  public void setFont(String paramString)
  {
    h.a(getContext(), this, paramString);
  }
  
  public void setKeyEventCallback(KeyEvent.Callback paramCallback)
  {
    f = paramCallback;
  }
  
  public void setThrottleEnabled(boolean paramBoolean)
  {
    e = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSAutoCompleteTextView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */