package com.google.gson.internal;

import java.io.IOException;
import java.io.Writer;

final class Streams$AppendableWriter
  extends Writer
{
  private final Appendable appendable;
  private final Streams.AppendableWriter.CurrentWrite currentWrite = new Streams.AppendableWriter.CurrentWrite();
  
  Streams$AppendableWriter(Appendable paramAppendable)
  {
    appendable = paramAppendable;
  }
  
  public void close() {}
  
  public void flush() {}
  
  public void write(int paramInt)
    throws IOException
  {
    appendable.append((char)paramInt);
  }
  
  public void write(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    throws IOException
  {
    currentWrite.chars = paramArrayOfChar;
    appendable.append(currentWrite, paramInt1, paramInt1 + paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.google.gson.internal.Streams.AppendableWriter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */