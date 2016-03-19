.class public final Lcom/taplytics/bz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taplytics/sdk/TaplyticsPushNotificationListener;


# direct methods
.method public constructor <init>(Lcom/taplytics/sdk/TaplyticsPushNotificationListener;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/taplytics/bz;->a:Lcom/taplytics/sdk/TaplyticsPushNotificationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 222
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->o()Lcom/taplytics/gn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->o()Lcom/taplytics/gn;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/bz;->a:Lcom/taplytics/sdk/TaplyticsPushNotificationListener;

    invoke-virtual {v0, v1}, Lcom/taplytics/gn;->b(Lcom/taplytics/sdk/TaplyticsPushNotificationListener;)V

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    const-string v0, "Taplytics"

    const-string v1, "Taplytics not yet instantiated. Call Taplytics.startTaplytics before any other Taplytics call."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
