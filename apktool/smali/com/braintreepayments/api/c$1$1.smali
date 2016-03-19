.class Lcom/braintreepayments/api/c$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braintreepayments/api/c$1;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/braintreepayments/api/c;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/Exception;

.field final synthetic d:Lcom/braintreepayments/api/c$1;


# direct methods
.method constructor <init>(Lcom/braintreepayments/api/c$1;Lcom/braintreepayments/api/c;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/braintreepayments/api/c$1$1;->d:Lcom/braintreepayments/api/c$1;

    iput-object p2, p0, Lcom/braintreepayments/api/c$1$1;->a:Lcom/braintreepayments/api/c;

    iput-object p3, p0, Lcom/braintreepayments/api/c$1$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/braintreepayments/api/c$1$1;->c:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 207
    iget-object v0, p0, Lcom/braintreepayments/api/c$1$1;->a:Lcom/braintreepayments/api/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/braintreepayments/api/c$1$1;->a:Lcom/braintreepayments/api/c;

    invoke-static {v0}, Lcom/braintreepayments/api/c;->a(Lcom/braintreepayments/api/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/braintreepayments/api/c$1$1;->d:Lcom/braintreepayments/api/c$1;

    iget-object v0, v0, Lcom/braintreepayments/api/c$1;->c:Lcom/braintreepayments/api/d;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/braintreepayments/api/c$1$1;->a:Lcom/braintreepayments/api/c;

    invoke-interface {v0, v1, v2, v4, v4}, Lcom/braintreepayments/api/d;->a(ZLcom/braintreepayments/api/c;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 213
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/braintreepayments/api/c$1$1;->d:Lcom/braintreepayments/api/c$1;

    iget-object v0, v0, Lcom/braintreepayments/api/c$1;->c:Lcom/braintreepayments/api/d;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/braintreepayments/api/c$1$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/braintreepayments/api/c$1$1;->c:Ljava/lang/Exception;

    invoke-interface {v0, v1, v4, v2, v3}, Lcom/braintreepayments/api/d;->a(ZLcom/braintreepayments/api/c;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
