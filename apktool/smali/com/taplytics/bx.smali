.class public final Lcom/taplytics/bx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taplytics/sdk/TaplyticsRunningExperimentsListener;


# direct methods
.method public constructor <init>(Lcom/taplytics/sdk/TaplyticsRunningExperimentsListener;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/taplytics/bx;->a:Lcom/taplytics/sdk/TaplyticsRunningExperimentsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 189
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/bx;->a:Lcom/taplytics/sdk/TaplyticsRunningExperimentsListener;

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->a(Lcom/taplytics/sdk/TaplyticsRunningExperimentsListener;)V

    .line 190
    return-void
.end method
