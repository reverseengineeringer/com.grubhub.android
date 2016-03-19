.class public final Lcom/taplytics/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taplytics/sdk/TaplyticsDelayLoadListener;

.field final synthetic b:I

.field final synthetic c:I


# direct methods
.method public constructor <init>(Lcom/taplytics/sdk/TaplyticsDelayLoadListener;II)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lcom/taplytics/bk;->a:Lcom/taplytics/sdk/TaplyticsDelayLoadListener;

    iput p2, p0, Lcom/taplytics/bk;->b:I

    iput p3, p0, Lcom/taplytics/bk;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 457
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/bk;->a:Lcom/taplytics/sdk/TaplyticsDelayLoadListener;

    iget v2, p0, Lcom/taplytics/bk;->b:I

    iget v3, p0, Lcom/taplytics/bk;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/taplytics/fy;->a(Lcom/taplytics/sdk/TaplyticsDelayLoadListener;II)V

    .line 458
    return-void
.end method
