.class Lcom/urbanairship/push/iam/InAppMessageManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/urbanairship/push/iam/InAppMessageFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/push/iam/InAppMessageManager;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/push/iam/InAppMessageManager;


# direct methods
.method constructor <init>(Lcom/urbanairship/push/iam/InAppMessageManager;)V
    .locals 0

    .prologue
    .line 583
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessageManager$4;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/urbanairship/push/iam/InAppMessageFragment;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InAppMessageManager - InAppMessageFragment finished: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p1}, Lcom/urbanairship/push/iam/InAppMessageFragment;->getMessage()Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v0

    .line 629
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageManager$4;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    # getter for: Lcom/urbanairship/push/iam/InAppMessageManager;->pendingMessageLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$500(Lcom/urbanairship/push/iam/InAppMessageManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 630
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager$4;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    invoke-virtual {v2}, Lcom/urbanairship/push/iam/InAppMessageManager;->getPendingMessage()Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/urbanairship/push/iam/InAppMessage;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 631
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager$4;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/iam/InAppMessageManager;->setPendingMessage(Lcom/urbanairship/push/iam/InAppMessage;)V

    .line 633
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageManager$4;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    # getter for: Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;
    invoke-static {v1}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$400(Lcom/urbanairship/push/iam/InAppMessageManager;)Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/iam/InAppMessage;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager$4;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    # setter for: Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;
    invoke-static {v0, v4}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$402(Lcom/urbanairship/push/iam/InAppMessageManager;Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/push/iam/InAppMessage;

    .line 638
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager$4;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/InAppMessageManager;->isDisplayAsapEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager$4;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    # invokes: Lcom/urbanairship/push/iam/InAppMessageManager;->getCurrentActivity()Landroid/app/Activity;
    invoke-static {v0}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$100(Lcom/urbanairship/push/iam/InAppMessageManager;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 639
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager$4;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    const/4 v1, 0x1

    # setter for: Lcom/urbanairship/push/iam/InAppMessageManager;->autoDisplayPendingMessage:Z
    invoke-static {v0, v1}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$002(Lcom/urbanairship/push/iam/InAppMessageManager;Z)Z

    .line 640
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager$4;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    # getter for: Lcom/urbanairship/push/iam/InAppMessageManager;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$700(Lcom/urbanairship/push/iam/InAppMessageManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageManager$4;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    # getter for: Lcom/urbanairship/push/iam/InAppMessageManager;->displayRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$600(Lcom/urbanairship/push/iam/InAppMessageManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 641
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager$4;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    # getter for: Lcom/urbanairship/push/iam/InAppMessageManager;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$700(Lcom/urbanairship/push/iam/InAppMessageManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageManager$4;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    # getter for: Lcom/urbanairship/push/iam/InAppMessageManager;->displayRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$600(Lcom/urbanairship/push/iam/InAppMessageManager;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager$4;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    # getter for: Lcom/urbanairship/push/iam/InAppMessageManager;->autoDisplayDelayMs:J
    invoke-static {v2}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$800(Lcom/urbanairship/push/iam/InAppMessageManager;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 644
    :cond_1
    return-void

    .line 633
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPause(Lcom/urbanairship/push/iam/InAppMessageFragment;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InAppMessageManager - InAppMessageFragment paused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager$4;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    # getter for: Lcom/urbanairship/push/iam/InAppMessageManager;->currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;
    invoke-static {v0}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$300(Lcom/urbanairship/push/iam/InAppMessageManager;)Lcom/urbanairship/push/iam/InAppMessageFragment;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager$4;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    const/4 v1, 0x0

    # setter for: Lcom/urbanairship/push/iam/InAppMessageManager;->currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;
    invoke-static {v0, v1}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$302(Lcom/urbanairship/push/iam/InAppMessageManager;Lcom/urbanairship/push/iam/InAppMessageFragment;)Lcom/urbanairship/push/iam/InAppMessageFragment;

    .line 611
    invoke-virtual {p1}, Lcom/urbanairship/push/iam/InAppMessageFragment;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/urbanairship/push/iam/InAppMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InAppMessageManager - InAppMessageFragment\'s activity is finishing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager$4;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    const/4 v1, 0x1

    # setter for: Lcom/urbanairship/push/iam/InAppMessageManager;->autoDisplayPendingMessage:Z
    invoke-static {v0, v1}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$002(Lcom/urbanairship/push/iam/InAppMessageManager;Z)Z

    goto :goto_0
.end method

.method public onResume(Lcom/urbanairship/push/iam/InAppMessageFragment;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InAppMessageManager - InAppMessageFragment resumed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 588
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager$4;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    # getter for: Lcom/urbanairship/push/iam/InAppMessageManager;->currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;
    invoke-static {v0}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$300(Lcom/urbanairship/push/iam/InAppMessageManager;)Lcom/urbanairship/push/iam/InAppMessageFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager$4;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    # getter for: Lcom/urbanairship/push/iam/InAppMessageManager;->currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;
    invoke-static {v0}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$300(Lcom/urbanairship/push/iam/InAppMessageManager;)Lcom/urbanairship/push/iam/InAppMessageFragment;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InAppMessageManager - Dismissing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " because it is no longer the current fragment."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p1, v2}, Lcom/urbanairship/push/iam/InAppMessageFragment;->dismiss(Z)V

    .line 600
    :goto_0
    return-void

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager$4;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    # getter for: Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;
    invoke-static {v0}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$400(Lcom/urbanairship/push/iam/InAppMessageManager;)Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager$4;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    # getter for: Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;
    invoke-static {v0}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$400(Lcom/urbanairship/push/iam/InAppMessageManager;)Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/push/iam/InAppMessageFragment;->getMessage()Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/iam/InAppMessage;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 595
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InAppMessageManager - Dismissing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " because its message is no longer current."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 596
    invoke-virtual {p1, v2}, Lcom/urbanairship/push/iam/InAppMessageFragment;->dismiss(Z)V

    goto :goto_0

    .line 598
    :cond_2
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager$4;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    # setter for: Lcom/urbanairship/push/iam/InAppMessageManager;->currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;
    invoke-static {v0, p1}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$302(Lcom/urbanairship/push/iam/InAppMessageManager;Lcom/urbanairship/push/iam/InAppMessageFragment;)Lcom/urbanairship/push/iam/InAppMessageFragment;

    goto :goto_0
.end method
