.class Lcom/braintreepayments/api/c$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braintreepayments/api/c;->j()Ljava/util/concurrent/Future;
.end annotation


# instance fields
.field final synthetic a:Lcom/braintreepayments/api/c;


# direct methods
.method constructor <init>(Lcom/braintreepayments/api/c;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/braintreepayments/api/c$8;->a:Lcom/braintreepayments/api/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/braintreepayments/api/c$8;->a:Lcom/braintreepayments/api/c;

    invoke-static {v0}, Lcom/braintreepayments/api/c;->c(Lcom/braintreepayments/api/c;)Lcom/braintreepayments/api/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/braintreepayments/api/k;->k()Ljava/util/List;

    move-result-object v0

    .line 453
    iget-object v1, p0, Lcom/braintreepayments/api/c$8;->a:Lcom/braintreepayments/api/c;

    invoke-static {v1, v0}, Lcom/braintreepayments/api/c;->a(Lcom/braintreepayments/api/c;Ljava/util/List;)Ljava/util/List;

    .line 454
    iget-object v1, p0, Lcom/braintreepayments/api/c$8;->a:Lcom/braintreepayments/api/c;

    invoke-static {v1, v0}, Lcom/braintreepayments/api/c;->b(Lcom/braintreepayments/api/c;Ljava/util/List;)V
    :try_end_0
    .catch Lcom/braintreepayments/api/exceptions/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/braintreepayments/api/exceptions/ErrorWithResponse; {:try_start_0 .. :try_end_0} :catch_1

    .line 460
    :goto_0
    return-void

    .line 455
    :catch_0
    move-exception v0

    .line 456
    iget-object v1, p0, Lcom/braintreepayments/api/c$8;->a:Lcom/braintreepayments/api/c;

    invoke-virtual {v1, v0}, Lcom/braintreepayments/api/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 457
    :catch_1
    move-exception v0

    .line 458
    iget-object v1, p0, Lcom/braintreepayments/api/c$8;->a:Lcom/braintreepayments/api/c;

    invoke-static {v1, v0}, Lcom/braintreepayments/api/c;->a(Lcom/braintreepayments/api/c;Lcom/braintreepayments/api/exceptions/ErrorWithResponse;)V

    goto :goto_0
.end method
