.class Lcom/taplytics/cw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/taplytics/eq;


# instance fields
.field final synthetic a:Lcom/taplytics/sdk/TaplyticsPushSubscriptionChangedListener;

.field final synthetic b:Lcom/taplytics/cl;


# direct methods
.method constructor <init>(Lcom/taplytics/cl;Lcom/taplytics/sdk/TaplyticsPushSubscriptionChangedListener;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/taplytics/cw;->b:Lcom/taplytics/cl;

    iput-object p2, p0, Lcom/taplytics/cw;->a:Lcom/taplytics/sdk/TaplyticsPushSubscriptionChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/taplytics/cw;->a:Lcom/taplytics/sdk/TaplyticsPushSubscriptionChangedListener;

    invoke-interface {v0}, Lcom/taplytics/sdk/TaplyticsPushSubscriptionChangedListener;->success()V

    .line 392
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/taplytics/cw;->a:Lcom/taplytics/sdk/TaplyticsPushSubscriptionChangedListener;

    invoke-interface {v0}, Lcom/taplytics/sdk/TaplyticsPushSubscriptionChangedListener;->failure()V

    .line 397
    return-void
.end method
