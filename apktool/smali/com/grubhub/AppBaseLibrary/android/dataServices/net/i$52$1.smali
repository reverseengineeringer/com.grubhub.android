.class Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$52$1;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$52;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;Lcom/android/volley/toolbox/RequestFuture;I)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/j",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;

.field final synthetic b:Lcom/android/volley/toolbox/RequestFuture;

.field final synthetic c:I

.field final synthetic d:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$52;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$52;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;Lcom/android/volley/toolbox/RequestFuture;I)V
    .locals 2

    .prologue
    .line 1828
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$52$1;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$52;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$52$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;

    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$52$1;->b:Lcom/android/volley/toolbox/RequestFuture;

    iput p4, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$52$1;->c:I

    iget-object v0, p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$52;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/j;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$1;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1833
    :try_start_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$52$1;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1834
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$52$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$52$1;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->a(Ljava/lang/String;)V

    .line 1838
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$52$1;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$52;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$52;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$52$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Lcom/android/volley/Request;)V

    .line 1841
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$52$1;->b:Lcom/android/volley/toolbox/RequestFuture;

    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$52$1;->c:I

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/volley/toolbox/RequestFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 1843
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1861
    :goto_0
    return-object v0

    .line 1844
    :catch_0
    move-exception v0

    .line 1845
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    const-string v1, "AuthFailureError"

    .line 1849
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/android/volley/VolleyError;

    if-eqz v1, :cond_1

    .line 1850
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/b/b;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/android/volley/VolleyError;

    invoke-direct {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/b/b;-><init>(Lcom/android/volley/VolleyError;)V

    .line 1851
    const-string v0, "AuthFailureError"

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1852
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$52$1;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$52;

    iget-object v2, v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$52;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    invoke-direct {v0, v2, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$52$1;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$52;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$52;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;->USER:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;->a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;ZZ)V

    .line 1861
    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1828
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$52$1;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
