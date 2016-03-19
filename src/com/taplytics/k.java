package com.taplytics;

public class k
{
  private final String a;
  private final l b;
  private final af c;
  
  public k(String paramString, af paramaf)
  {
    ao.a(paramString, "Name");
    ao.a(paramaf, "Body");
    a = paramString;
    c = paramaf;
    b = new l();
    a(paramaf);
    b(paramaf);
    c(paramaf);
  }
  
  public String a()
  {
    return a;
  }
  
  protected void a(af paramaf)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("form-data; name=\"");
    localStringBuilder.append(a());
    localStringBuilder.append("\"");
    if (paramaf.d() != null)
    {
      localStringBuilder.append("; filename=\"");
      localStringBuilder.append(paramaf.d());
      localStringBuilder.append("\"");
    }
    a("Content-Disposition", localStringBuilder.toString());
  }
  
  public void a(String paramString1, String paramString2)
  {
    ao.a(paramString1, "Field name");
    b.a(new x(paramString1, paramString2));
  }
  
  public af b()
  {
    return c;
  }
  
  protected void b(af paramaf)
  {
    if ((paramaf instanceof ac)) {}
    for (Object localObject = ((ac)paramaf).a(); localObject != null; localObject = null)
    {
      a("Content-Type", ((ai)localObject).toString());
      return;
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append(paramaf.b());
    if (paramaf.c() != null)
    {
      ((StringBuilder)localObject).append("; charset=");
      ((StringBuilder)localObject).append(paramaf.c());
    }
    a("Content-Type", ((StringBuilder)localObject).toString());
  }
  
  public l c()
  {
    return b;
  }
  
  protected void c(af paramaf)
  {
    a("Content-Transfer-Encoding", paramaf.e());
  }
}

/* Location:
 * Qualified Name:     com.taplytics.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */