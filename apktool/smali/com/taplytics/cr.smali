.class Lcom/taplytics/cr;
.super Lcom/taplytics/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taplytics/h",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/taplytics/cq;


# direct methods
.method constructor <init>(Lcom/taplytics/cq;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/taplytics/cr;->a:Lcom/taplytics/cq;

    invoke-direct {p0}, Lcom/taplytics/h;-><init>()V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/taplytics/cr;->a:Lcom/taplytics/cq;

    iget-object v0, v0, Lcom/taplytics/cq;->a:Lcom/taplytics/sdk/TaplyticsResetUserListener;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/taplytics/cr;->a:Lcom/taplytics/cq;

    iget-object v0, v0, Lcom/taplytics/cq;->a:Lcom/taplytics/sdk/TaplyticsResetUserListener;

    invoke-interface {v0}, Lcom/taplytics/sdk/TaplyticsResetUserListener;->finishedResettingUser()V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/taplytics/cr;->a:Lcom/taplytics/cq;

    iget-object v0, v0, Lcom/taplytics/cq;->b:Lcom/taplytics/fy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->e(Z)V

    .line 306
    return-void
.end method
