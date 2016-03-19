.class public final Lcom/taplytics/bo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taplytics/sdk/TaplyticsPushOpenedListener;


# direct methods
.method public constructor <init>(Lcom/taplytics/sdk/TaplyticsPushOpenedListener;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lcom/taplytics/bo;->a:Lcom/taplytics/sdk/TaplyticsPushOpenedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 516
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->o()Lcom/taplytics/gn;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/bo;->a:Lcom/taplytics/sdk/TaplyticsPushOpenedListener;

    invoke-virtual {v0, v1}, Lcom/taplytics/gn;->a(Lcom/taplytics/sdk/TaplyticsPushOpenedListener;)V

    .line 517
    iget-object v0, p0, Lcom/taplytics/bo;->a:Lcom/taplytics/sdk/TaplyticsPushOpenedListener;

    invoke-static {v0}, Lcom/taplytics/sdk/Taplytics;->setPushNotificationOpenedListener(Lcom/taplytics/sdk/TaplyticsPushOpenedListener;)V

    .line 518
    return-void
.end method
