.class public final Lcom/taplytics/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taplytics/sdk/TaplyticsResetUserListener;


# direct methods
.method public constructor <init>(Lcom/taplytics/sdk/TaplyticsResetUserListener;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/taplytics/bg;->a:Lcom/taplytics/sdk/TaplyticsResetUserListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 388
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->n()Lcom/taplytics/cc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 389
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->n()Lcom/taplytics/cc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/cc;->a()Lcom/taplytics/cl;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/bg;->a:Lcom/taplytics/sdk/TaplyticsResetUserListener;

    invoke-virtual {v0, v1}, Lcom/taplytics/cl;->b(Lcom/taplytics/sdk/TaplyticsResetUserListener;)V

    .line 393
    :goto_0
    return-void

    .line 391
    :cond_0
    const-string v0, "Taplytics"

    const-string v1, "Taplytics not yet instantiated. Call Taplytics.startTaplytics before any other Taplytics call."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
