package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIMessage;
import java.util.ArrayList;
import java.util.Iterator;

public class V2MessageDTO
  implements GHSIMessage
{
  private static final String BUTTON_CANCEL = "dismiss";
  private static final String BUTTON_LINK = "link";
  private static final String DISPLAY_ALWAYS = "always";
  private static final String WEB_VIEW = "_webview";
  private String body;
  private ArrayList<V2MessageDTO.Button> buttons;
  private String display;
  private long endAt;
  private String etag;
  private long startAt;
  private String target;
  private String title;
  private String url;
  private ArrayList<String> versions;
  
  public boolean appliesToVersion(String paramString)
  {
    return (versions == null) || (versions.contains(paramString));
  }
  
  public String getBody()
  {
    return body;
  }
  
  public long getCreationTime()
  {
    return startAt;
  }
  
  public String getETag()
  {
    return etag;
  }
  
  public long getExpirationTime()
  {
    return endAt;
  }
  
  public String getNegativeButtonText()
  {
    if ((buttons != null) && (buttons.size() > 0))
    {
      Iterator localIterator = buttons.iterator();
      while (localIterator.hasNext())
      {
        V2MessageDTO.Button localButton = (V2MessageDTO.Button)localIterator.next();
        if ((localButton != null) && ("dismiss".equals(V2MessageDTO.Button.access$000(localButton)))) {
          return V2MessageDTO.Button.access$100(localButton);
        }
      }
    }
    return null;
  }
  
  public String getPositiveButtonText()
  {
    if ((buttons != null) && (buttons.size() > 0))
    {
      Iterator localIterator = buttons.iterator();
      while (localIterator.hasNext())
      {
        V2MessageDTO.Button localButton = (V2MessageDTO.Button)localIterator.next();
        if ((localButton != null) && ("link".equals(V2MessageDTO.Button.access$000(localButton)))) {
          return V2MessageDTO.Button.access$100(localButton);
        }
      }
    }
    return null;
  }
  
  public String getTitle()
  {
    return title;
  }
  
  public String getUrl()
  {
    return url;
  }
  
  public boolean isRepeat()
  {
    return "always".equals(display);
  }
  
  public boolean isWebView()
  {
    return (target != null) && ("_webview".contains(target));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2MessageDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */