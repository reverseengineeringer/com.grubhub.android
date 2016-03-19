package com.amazon.insights.core.system;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public class DefaultFileManager
  implements FileManager
{
  private final File directory;
  
  public DefaultFileManager(File paramFile)
  {
    directory = paramFile;
  }
  
  public File createDirectory(String paramString)
  {
    File localFile = new File(directory, paramString);
    paramString = localFile;
    if (!localFile.exists())
    {
      paramString = localFile;
      if (!localFile.mkdirs()) {
        paramString = null;
      }
    }
    return paramString;
  }
  
  public File createFile(File paramFile)
    throws IOException
  {
    File localFile = paramFile;
    if (!paramFile.exists())
    {
      localFile = paramFile;
      if (!paramFile.createNewFile()) {
        localFile = null;
      }
    }
    return localFile;
  }
  
  public File createFile(String paramString)
    throws IOException
  {
    return createFile(new File(directory, paramString));
  }
  
  public boolean deleteFile(File paramFile)
  {
    if (paramFile.exists()) {
      return paramFile.delete();
    }
    return false;
  }
  
  public boolean deleteFile(String paramString)
  {
    return deleteFile(new File(directory, paramString));
  }
  
  public File getDirectory(String paramString)
  {
    return new File(directory, paramString);
  }
  
  public Set<File> listFilesInDirectory(File paramFile)
  {
    HashSet localHashSet = new HashSet();
    if (paramFile.exists())
    {
      paramFile = paramFile.listFiles();
      int j = paramFile.length;
      int i = 0;
      while (i < j)
      {
        localHashSet.add(paramFile[i]);
        i += 1;
      }
    }
    return Collections.unmodifiableSet(localHashSet);
  }
  
  public Set<File> listFilesInDirectory(String paramString)
  {
    return listFilesInDirectory(new File(directory, paramString));
  }
  
  public InputStream newInputStream(File paramFile)
    throws FileNotFoundException
  {
    return new FileInputStream(paramFile);
  }
  
  public InputStream newInputStream(String paramString)
    throws FileNotFoundException
  {
    return newInputStream(new File(directory, paramString));
  }
  
  public OutputStream newOutputStream(File paramFile, boolean paramBoolean)
    throws FileNotFoundException
  {
    return new FileOutputStream(paramFile, paramBoolean);
  }
  
  public OutputStream newOutputStream(String paramString, boolean paramBoolean)
    throws FileNotFoundException
  {
    return newOutputStream(new File(directory, paramString), paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.system.DefaultFileManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */