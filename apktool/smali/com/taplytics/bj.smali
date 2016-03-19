.class public final Lcom/taplytics/bj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taplytics/sdk/TaplyticsDelayLoadListener;

.field final synthetic b:I


# direct methods
.method public constructor <init>(Lcom/taplytics/sdk/TaplyticsDelayLoadListener;I)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lcom/taplytics/bj;->a:Lcom/taplytics/sdk/TaplyticsDelayLoadListener;

    iput p2, p0, Lcom/taplytics/bj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 441
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/bj;->a:Lcom/taplytics/sdk/TaplyticsDelayLoadListener;

    iget v2, p0, Lcom/taplytics/bj;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/taplytics/fy;->a(Lcom/taplytics/sdk/TaplyticsDelayLoadListener;I)V

    .line 442
    return-void
.end method
