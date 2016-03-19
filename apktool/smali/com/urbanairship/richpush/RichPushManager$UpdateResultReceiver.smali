.class abstract Lcom/urbanairship/richpush/RichPushManager$UpdateResultReceiver;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 389
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 390
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 394
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 395
    :goto_0
    invoke-virtual {p0, v0}, Lcom/urbanairship/richpush/RichPushManager$UpdateResultReceiver;->onUpdate(Z)V

    .line 396
    return-void

    .line 394
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onUpdate(Z)V
.end method
