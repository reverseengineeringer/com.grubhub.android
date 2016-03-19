.class final Lcom/urbanairship/push/iam/InAppMessageManager$5;
.super Lcom/urbanairship/LifeCycleCallbacks;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/push/iam/InAppMessageManager;->registerLifeCycleCallbacks(Landroid/app/Application;)V
.end annotation


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .locals 0

    .prologue
    .line 656
    invoke-direct {p0, p1}, Lcom/urbanairship/LifeCycleCallbacks;-><init>(Landroid/app/Application;)V

    return-void
.end method


# virtual methods
.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 709
    # getter for: Lcom/urbanairship/push/iam/InAppMessageManager;->activityResumedOperation:Lcom/urbanairship/Cancelable;
    invoke-static {}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$1100()Lcom/urbanairship/Cancelable;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/urbanairship/push/iam/InAppMessageManager;->activityResumedOperation:Lcom/urbanairship/Cancelable;
    invoke-static {}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$1100()Lcom/urbanairship/Cancelable;

    move-result-object v0

    invoke-interface {v0}, Lcom/urbanairship/Cancelable;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 710
    # getter for: Lcom/urbanairship/push/iam/InAppMessageManager;->activityResumedOperation:Lcom/urbanairship/Cancelable;
    invoke-static {}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$1100()Lcom/urbanairship/Cancelable;

    move-result-object v0

    invoke-interface {v0}, Lcom/urbanairship/Cancelable;->cancel()V

    .line 715
    :goto_0
    return-void

    .line 714
    :cond_0
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getInAppMessageManager()Lcom/urbanairship/push/iam/InAppMessageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/iam/InAppMessageManager;->onActivityPaused(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 694
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 696
    new-instance v1, Lcom/urbanairship/push/iam/InAppMessageManager$5$3;

    invoke-direct {v1, p0, v0}, Lcom/urbanairship/push/iam/InAppMessageManager$5$3;-><init>(Lcom/urbanairship/push/iam/InAppMessageManager$5;Ljava/lang/ref/WeakReference;)V

    invoke-static {v1}, Lcom/urbanairship/UAirship;->shared(Lcom/urbanairship/UAirship$OnReadyCallback;)Lcom/urbanairship/Cancelable;

    move-result-object v0

    # setter for: Lcom/urbanairship/push/iam/InAppMessageManager;->activityResumedOperation:Lcom/urbanairship/Cancelable;
    invoke-static {v0}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$1102(Lcom/urbanairship/Cancelable;)Lcom/urbanairship/Cancelable;

    .line 705
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 659
    # operator++ for: Lcom/urbanairship/push/iam/InAppMessageManager;->activityCount:I
    invoke-static {}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$908()I

    .line 661
    # getter for: Lcom/urbanairship/push/iam/InAppMessageManager;->isForeground:Z
    invoke-static {}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$1000()Z

    move-result v0

    if-nez v0, :cond_0

    .line 662
    const/4 v0, 0x1

    # setter for: Lcom/urbanairship/push/iam/InAppMessageManager;->isForeground:Z
    invoke-static {v0}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$1002(Z)Z

    .line 663
    invoke-static {}, Lcom/urbanairship/UAirship;->isFlying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 664
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getInAppMessageManager()Lcom/urbanairship/push/iam/InAppMessageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/InAppMessageManager;->onForeground()V

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 666
    :cond_1
    new-instance v0, Lcom/urbanairship/push/iam/InAppMessageManager$5$1;

    invoke-direct {v0, p0}, Lcom/urbanairship/push/iam/InAppMessageManager$5$1;-><init>(Lcom/urbanairship/push/iam/InAppMessageManager$5;)V

    invoke-static {v0}, Lcom/urbanairship/UAirship;->shared(Lcom/urbanairship/UAirship$OnReadyCallback;)Lcom/urbanairship/Cancelable;

    goto :goto_0
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 678
    # operator-- for: Lcom/urbanairship/push/iam/InAppMessageManager;->activityCount:I
    invoke-static {}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$910()I

    .line 680
    # getter for: Lcom/urbanairship/push/iam/InAppMessageManager;->activityCount:I
    invoke-static {}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$900()I

    move-result v0

    if-nez v0, :cond_0

    .line 681
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/urbanairship/push/iam/InAppMessageManager$5$2;

    invoke-direct {v1, p0}, Lcom/urbanairship/push/iam/InAppMessageManager$5$2;-><init>(Lcom/urbanairship/push/iam/InAppMessageManager$5;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 690
    :cond_0
    return-void
.end method
