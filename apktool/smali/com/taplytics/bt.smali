.class public final Lcom/taplytics/bt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/taplytics/sdk/TaplyticsPushSubscriptionChangedListener;


# direct methods
.method public constructor <init>(ZLcom/taplytics/sdk/TaplyticsPushSubscriptionChangedListener;)V
    .locals 0

    .prologue
    .line 570
    iput-boolean p1, p0, Lcom/taplytics/bt;->a:Z

    iput-object p2, p0, Lcom/taplytics/bt;->b:Lcom/taplytics/sdk/TaplyticsPushSubscriptionChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 573
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->n()Lcom/taplytics/cc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/cc;->a()Lcom/taplytics/cl;

    move-result-object v0

    iget-boolean v1, p0, Lcom/taplytics/bt;->a:Z

    iget-object v2, p0, Lcom/taplytics/bt;->b:Lcom/taplytics/sdk/TaplyticsPushSubscriptionChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/taplytics/cl;->a(ZLcom/taplytics/sdk/TaplyticsPushSubscriptionChangedListener;)V

    .line 574
    return-void
.end method
