package com.amazon.insights.core.system;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Set;

public abstract interface FileManager
{
  public abstract File createDirectory(String paramString);
  
  public abstract File createFile(File paramFile)
    throws IOException;
  
  public abstract File createFile(String paramString)
    throws IOException;
  
  public abstract boolean deleteFile(File paramFile);
  
  public abstract boolean deleteFile(String paramString);
  
  public abstract File getDirectory(String paramString);
  
  public abstract Set<File> listFilesInDirectory(File paramFile);
  
  public abstract Set<File> listFilesInDirectory(String paramString);
  
  public abstract InputStream newInputStream(File paramFile)
    throws FileNotFoundException;
  
  public abstract InputStream newInputStream(String paramString)
    throws FileNotFoundException;
  
  public abstract OutputStream newOutputStream(File paramFile, boolean paramBoolean)
    throws FileNotFoundException;
  
  public abstract OutputStream newOutputStream(String paramString, boolean paramBoolean)
    throws FileNotFoundException;
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.system.FileManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */