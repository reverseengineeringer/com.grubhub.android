package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIErrorMessage;
import com.grubhub.AppBaseLibrary.android.utils.e.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Stack;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

class V1ErrorMessageParser$MyContentHandler
  extends DefaultHandler
{
  private V1ErrorMessageParser.XMLParseCallBack callBack;
  private boolean inMessageEntry;
  private boolean inTextNode;
  private ArrayList<GHSIErrorMessage> messageList;
  private Stack<Object> stack;
  
  public V1ErrorMessageParser$MyContentHandler(V1ErrorMessageParser paramV1ErrorMessageParser, V1ErrorMessageParser.XMLParseCallBack paramXMLParseCallBack)
  {
    callBack = paramXMLParseCallBack;
  }
  
  public void characters(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    throws SAXException
  {
    if ((inTextNode) && (!stack.isEmpty())) {
      ((StringBuffer)stack.peek()).append(paramArrayOfChar, paramInt1, paramInt2);
    }
  }
  
  public void endDocument()
    throws SAXException
  {
    if ((messageList != null) && (!messageList.isEmpty()))
    {
      Iterator localIterator = messageList.iterator();
      while (localIterator.hasNext())
      {
        GHSIErrorMessage localGHSIErrorMessage = (GHSIErrorMessage)localIterator.next();
        if ((localGHSIErrorMessage.getType() == null) || (!localGHSIErrorMessage.getType().equals("error"))) {
          localIterator.remove();
        }
      }
      V1ErrorMessageParser.access$002(this$0, messageList);
    }
    V1ErrorMessageParser.access$102(this$0, true);
    if (callBack != null) {}
    try
    {
      callBack.run(messageList);
      callBack = null;
      return;
    }
    catch (Throwable localThrowable)
    {
      a.b(V1ErrorMessageParser.access$200(), localThrowable.getMessage());
    }
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3)
    throws SAXException
  {
    inTextNode = false;
    if (!stack.isEmpty())
    {
      paramString1 = stack.pop();
      if (!paramString2.equals("message")) {
        break label75;
      }
      if (inMessageEntry)
      {
        ((V1ErrorMessageWrapperDTO.V1ErrorMessageDTO)stack.peek()).setMessage(paramString1.toString());
        inMessageEntry = false;
      }
    }
    else
    {
      return;
    }
    messageList.add((V1ErrorMessageWrapperDTO.V1ErrorMessageDTO)paramString1);
    return;
    label75:
    if (paramString2.equals("field"))
    {
      ((V1ErrorMessageWrapperDTO.V1ErrorMessageDTO)stack.peek()).setField(paramString1.toString());
      return;
    }
    if (paramString2.equals("msgCode"))
    {
      ((V1ErrorMessageWrapperDTO.V1ErrorMessageDTO)stack.peek()).setCode(paramString1.toString());
      return;
    }
    stack.push(paramString1);
  }
  
  public void startDocument()
    throws SAXException
  {
    messageList = new ArrayList();
    stack = new Stack();
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes)
  {
    inTextNode = false;
    if ((paramString2.equals("message")) && (!inMessageEntry))
    {
      stack.push(new V1ErrorMessageWrapperDTO.V1ErrorMessageDTO());
      ((V1ErrorMessageWrapperDTO.V1ErrorMessageDTO)stack.peek()).setCode(paramAttributes.getValue("msgCode"));
      ((V1ErrorMessageWrapperDTO.V1ErrorMessageDTO)stack.peek()).setType(paramAttributes.getValue("type"));
      inMessageEntry = true;
    }
    while (((!paramString2.equals("message")) || (!inMessageEntry)) && (!paramString2.equals("field"))) {
      return;
    }
    stack.push(new StringBuffer());
    inTextNode = true;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1ErrorMessageParser.MyContentHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */