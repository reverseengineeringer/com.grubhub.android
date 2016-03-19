.class Lcom/taplytics/gz;
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
    .line 810
    iput-object p1, p0, Lcom/taplytics/gz;->a:Lcom/taplytics/gq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcom/taplytics/gz;->a:Lcom/taplytics/gq;

    invoke-static {v0}, Lcom/taplytics/gq;->b(Lcom/taplytics/gq;)Lcom/taplytics/sdk/TaplyticsDelayLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/taplytics/gz;->a:Lcom/taplytics/gq;

    invoke-static {v0}, Lcom/taplytics/gq;->b(Lcom/taplytics/gq;)Lcom/taplytics/sdk/TaplyticsDelayLoadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/taplytics/sdk/TaplyticsDelayLoadListener;->delayComplete()V

    .line 816
    :cond_0
    return-void
.end method
