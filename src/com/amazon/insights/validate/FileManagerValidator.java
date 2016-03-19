package com.amazon.insights.validate;

import com.amazon.insights.core.InsightsContext;
import com.amazon.insights.core.system.FileManager;
import com.amazon.insights.core.system.System;
import com.amazon.insights.impl.InitializationException;
import java.io.File;
import java.io.IOException;

public class FileManagerValidator
{
  public void validate(InsightsContext paramInsightsContext)
  {
    paramInsightsContext = paramInsightsContext.getSystem().getFileManager();
    File localFile;
    try
    {
      localFile = paramInsightsContext.createFile(new File(paramInsightsContext.getDirectory(""), "validatorFile"));
      if (localFile == null) {
        throw new InitializationException("File was not created");
      }
    }
    catch (IOException paramInsightsContext)
    {
      throw new InitializationException("Could not create file on disk", paramInsightsContext);
    }
    if (!paramInsightsContext.deleteFile(localFile)) {
      throw new InitializationException("Could not delete file from disk");
    }
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.validate.FileManagerValidator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */