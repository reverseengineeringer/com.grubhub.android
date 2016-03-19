package com.urbanairship;

import android.content.Context;
import android.text.ClipboardManager;

class ChannelCapture$ClipboardFroyo
  implements ChannelCapture.Clipboard
{
  private final ClipboardManager clipboardManager;
  
  ChannelCapture$ClipboardFroyo(ChannelCapture paramChannelCapture)
  {
    clipboardManager = ((ClipboardManager)ChannelCapture.access$200(paramChannelCapture).getSystemService("clipboard"));
  }
  
  public void clear()
  {
    clipboardManager.setText("");
  }
  
  public String getText()
  {
    return String.valueOf(clipboardManager.getText());
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.ChannelCapture.ClipboardFroyo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */