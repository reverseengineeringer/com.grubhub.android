.class Lcom/urbanairship/push/iam/InAppMessageFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/urbanairship/push/iam/view/Banner$OnActionClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/push/iam/InAppMessageFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/push/iam/InAppMessageFragment;


# direct methods
.method constructor <init>(Lcom/urbanairship/push/iam/InAppMessageFragment;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessageFragment$5;->this$0:Lcom/urbanairship/push/iam/InAppMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionClick(Lcom/urbanairship/push/notifications/NotificationActionButton;)V
    .locals 4

    .prologue
    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In-app message button clicked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/push/notifications/NotificationActionButton;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageFragment$5;->this$0:Lcom/urbanairship/push/iam/InAppMessageFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/iam/InAppMessageFragment;->dismiss(Z)V

    .line 286
    invoke-virtual {p1}, Lcom/urbanairship/push/notifications/NotificationActionButton;->isForegroundAction()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/urbanairship/actions/Situation;->FOREGROUND_NOTIFICATION_ACTION_BUTTON:Lcom/urbanairship/actions/Situation;

    .line 289
    :goto_0
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageFragment$5;->this$0:Lcom/urbanairship/push/iam/InAppMessageFragment;

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageFragment$5;->this$0:Lcom/urbanairship/push/iam/InAppMessageFragment;

    # getter for: Lcom/urbanairship/push/iam/InAppMessageFragment;->message:Lcom/urbanairship/push/iam/InAppMessage;
    invoke-static {v2}, Lcom/urbanairship/push/iam/InAppMessageFragment;->access$000(Lcom/urbanairship/push/iam/InAppMessageFragment;)Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v2

    invoke-virtual {p1}, Lcom/urbanairship/push/notifications/NotificationActionButton;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/iam/InAppMessage;->getButtonActionValues(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    # invokes: Lcom/urbanairship/push/iam/InAppMessageFragment;->runActions(Ljava/util/Map;Lcom/urbanairship/actions/Situation;)V
    invoke-static {v1, v2, v0}, Lcom/urbanairship/push/iam/InAppMessageFragment;->access$200(Lcom/urbanairship/push/iam/InAppMessageFragment;Ljava/util/Map;Lcom/urbanairship/actions/Situation;)V

    .line 291
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageFragment$5;->this$0:Lcom/urbanairship/push/iam/InAppMessageFragment;

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/InAppMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageFragment$5;->this$0:Lcom/urbanairship/push/iam/InAppMessageFragment;

    # getter for: Lcom/urbanairship/push/iam/InAppMessageFragment;->message:Lcom/urbanairship/push/iam/InAppMessage;
    invoke-static {v1}, Lcom/urbanairship/push/iam/InAppMessageFragment;->access$000(Lcom/urbanairship/push/iam/InAppMessageFragment;)Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v1

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageFragment$5;->this$0:Lcom/urbanairship/push/iam/InAppMessageFragment;

    # getter for: Lcom/urbanairship/push/iam/InAppMessageFragment;->timer:Lcom/urbanairship/push/iam/Timer;
    invoke-static {v2}, Lcom/urbanairship/push/iam/InAppMessageFragment;->access$100(Lcom/urbanairship/push/iam/InAppMessageFragment;)Lcom/urbanairship/push/iam/Timer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/iam/Timer;->getRunTime()J

    move-result-wide v2

    invoke-static {v0, v1, p1, v2, v3}, Lcom/urbanairship/push/iam/ResolutionEvent;->createButtonClickedResolutionEvent(Landroid/content/Context;Lcom/urbanairship/push/iam/InAppMessage;Lcom/urbanairship/push/notifications/NotificationActionButton;J)Lcom/urbanairship/push/iam/ResolutionEvent;

    move-result-object v0

    .line 292
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    .line 293
    return-void

    .line 286
    :cond_0
    sget-object v0, Lcom/urbanairship/actions/Situation;->BACKGROUND_NOTIFICATION_ACTION_BUTTON:Lcom/urbanairship/actions/Situation;

    goto :goto_0
.end method
