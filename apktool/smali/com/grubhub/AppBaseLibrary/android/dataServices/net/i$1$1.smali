.class Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$1$1;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$1;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;Lcom/android/volley/toolbox/RequestFuture;I)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/j",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;

.field final synthetic b:Lcom/android/volley/toolbox/RequestFuture;

.field final synthetic c:I

.field final synthetic d:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$1;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$1;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;Lcom/android/volley/toolbox/RequestFuture;I)V
    .locals 2

    .prologue
    .line 236
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$1$1;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$1;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$1$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;

    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$1$1;->b:Lcom/android/volley/toolbox/RequestFuture;

    iput p4, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$1$1;->c:I

    iget-object v0, p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/j;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$1;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$1$1;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$1$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$1$1;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;->a(Ljava/lang/String;)V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$1$1;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$1;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$1$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/f;

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->a(Lcom/android/volley/Request;)V

    .line 251
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$1$1;->b:Lcom/android/volley/toolbox/RequestFuture;

    iget v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$1$1;->c:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/volley/toolbox/RequestFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 252
    if-eqz v0, :cond_1

    .line 253
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :cond_1
    :goto_0
    return-object v1

    .line 255
    :catch_0
    move-exception v0

    .line 256
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const-string v2, "AuthFailureError"

    .line 260
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/android/volley/VolleyError;

    if-eqz v2, :cond_1

    .line 261
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/b/b;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/android/volley/VolleyError;

    invoke-direct {v2, v0}, Lcom/grubhub/AppBaseLibrary/android/b/b;-><init>(Lcom/android/volley/VolleyError;)V

    .line 262
    const-string v0, "AuthFailureError"

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/b/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$1$1;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$1;

    iget-object v3, v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    invoke-direct {v0, v3, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$1$1;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$1;

    iget-object v2, v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;

    iget-object v2, v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i;->b:Landroid/content/Context;

    const/4 v3, 0x0

    sget-object v4, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;->ANONYMOUS_USER:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;

    invoke-virtual {v0, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;->a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/f;)V

    goto :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/i$1$1;->a()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
