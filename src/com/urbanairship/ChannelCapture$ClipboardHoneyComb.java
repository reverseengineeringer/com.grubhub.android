package com.urbanairship;

import android.annotation.TargetApi;
import android.content.ClipData;
import android.content.ClipData.Item;
import android.content.ClipboardManager;
import android.content.Context;

@TargetApi(11)
class ChannelCapture$ClipboardHoneyComb
  implements ChannelCapture.Clipboard
{
  private final ClipboardManager clipboardManager;
  
  ChannelCapture$ClipboardHoneyComb(ChannelCapture paramChannelCapture)
  {
    clipboardManager = ((ClipboardManager)ChannelCapture.access$200(paramChannelCapture).getSystemService("clipboard"));
  }
  
  public void clear()
  {
    clipboardManager.setPrimaryClip(ClipData.newPlainText("", ""));
  }
  
  public String getText()
  {
    ClipData localClipData = clipboardManager.getPrimaryClip();
    if ((localClipData != null) && (localClipData.getItemCount() > 0))
    {
      int i = 0;
      while (i < localClipData.getItemCount())
      {
        CharSequence localCharSequence = localClipData.getItemAt(i).getText();
        if (localCharSequence != null) {
          return localCharSequence.toString();
        }
        i += 1;
      }
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.ChannelCapture.ClipboardHoneyComb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */