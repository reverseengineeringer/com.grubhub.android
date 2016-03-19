.class final Lcom/braintreepayments/api/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braintreepayments/api/c;->b(Landroid/content/Context;Ljava/lang/String;Lcom/braintreepayments/api/d;)Ljava/util/concurrent/Future;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/braintreepayments/api/d;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/braintreepayments/api/d;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/braintreepayments/api/c$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/braintreepayments/api/c$1;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/braintreepayments/api/c$1;->c:Lcom/braintreepayments/api/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 183
    .line 187
    :try_start_0
    sget-object v0, Lcom/braintreepayments/api/c;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/braintreepayments/api/c$1;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    sget-object v0, Lcom/braintreepayments/api/c;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/braintreepayments/api/c$1;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    :try_start_1
    invoke-static {v0}, Lcom/braintreepayments/api/c;->a(Lcom/braintreepayments/api/c;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 194
    invoke-static {v0}, Lcom/braintreepayments/api/c;->b(Lcom/braintreepayments/api/c;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    move-object v2, v0

    move-object v0, v1

    .line 204
    :goto_1
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/braintreepayments/api/c$1$1;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/braintreepayments/api/c$1$1;-><init>(Lcom/braintreepayments/api/c$1;Lcom/braintreepayments/api/c;Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 215
    return-void

    .line 190
    :cond_1
    :try_start_2
    new-instance v0, Lcom/braintreepayments/api/c;

    iget-object v2, p0, Lcom/braintreepayments/api/c$1;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/braintreepayments/api/c$1;->a:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/braintreepayments/api/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    .line 198
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 196
    :catch_1
    move-exception v1

    move-object v2, v0

    goto :goto_2
.end method
