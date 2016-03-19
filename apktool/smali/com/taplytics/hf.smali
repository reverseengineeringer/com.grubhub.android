.class Lcom/taplytics/hf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taplytics/gq;


# direct methods
.method constructor <init>(Lcom/taplytics/gq;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/taplytics/hf;->a:Lcom/taplytics/gq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/taplytics/hf;->a:Lcom/taplytics/gq;

    invoke-static {v0}, Lcom/taplytics/gq;->b(Lcom/taplytics/gq;)Lcom/taplytics/sdk/TaplyticsDelayLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/taplytics/hf;->a:Lcom/taplytics/gq;

    invoke-static {v0}, Lcom/taplytics/gq;->b(Lcom/taplytics/gq;)Lcom/taplytics/sdk/TaplyticsDelayLoadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/taplytics/sdk/TaplyticsDelayLoadListener;->delayComplete()V

    .line 379
    iget-object v0, p0, Lcom/taplytics/hf;->a:Lcom/taplytics/gq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taplytics/gq;->a(Lcom/taplytics/gq;Lcom/taplytics/sdk/TaplyticsDelayLoadListener;)Lcom/taplytics/sdk/TaplyticsDelayLoadListener;

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/taplytics/hf;->a:Lcom/taplytics/gq;

    invoke-virtual {v0}, Lcom/taplytics/gq;->r()V

    .line 382
    return-void
.end method
