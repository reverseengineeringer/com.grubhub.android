.class Lcom/braintreepayments/api/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/braintreepayments/api/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braintreepayments/api/c;->a(Ljava/util/List;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/braintreepayments/api/c;


# direct methods
.method constructor <init>(Lcom/braintreepayments/api/c;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1114
    iput-object p1, p0, Lcom/braintreepayments/api/c$3;->b:Lcom/braintreepayments/api/c;

    iput-object p2, p0, Lcom/braintreepayments/api/c$3;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/braintreepayments/api/c$3;->b:Lcom/braintreepayments/api/c;

    invoke-static {v0}, Lcom/braintreepayments/api/c;->d(Lcom/braintreepayments/api/c;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/j;

    .line 1118
    iget-object v2, p0, Lcom/braintreepayments/api/c$3;->b:Lcom/braintreepayments/api/c;

    invoke-static {v2}, Lcom/braintreepayments/api/c;->e(Lcom/braintreepayments/api/c;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/braintreepayments/api/c$3$1;

    invoke-direct {v3, p0, v0}, Lcom/braintreepayments/api/c$3$1;-><init>(Lcom/braintreepayments/api/c$3;Lcom/braintreepayments/api/j;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1125
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/braintreepayments/api/c$3;->b:Lcom/braintreepayments/api/c;

    invoke-static {v0}, Lcom/braintreepayments/api/c;->d(Lcom/braintreepayments/api/c;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
