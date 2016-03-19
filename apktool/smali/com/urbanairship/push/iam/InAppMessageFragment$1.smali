.class Lcom/urbanairship/push/iam/InAppMessageFragment$1;
.super Lcom/urbanairship/push/iam/Timer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/push/iam/InAppMessageFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/push/iam/InAppMessageFragment;


# direct methods
.method constructor <init>(Lcom/urbanairship/push/iam/InAppMessageFragment;J)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessageFragment$1;->this$0:Lcom/urbanairship/push/iam/InAppMessageFragment;

    invoke-direct {p0, p2, p3}, Lcom/urbanairship/push/iam/Timer;-><init>(J)V

    return-void
.end method


# virtual methods
.method protected onFinish()V
    .locals 4

    .prologue
    .line 163
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageFragment$1;->this$0:Lcom/urbanairship/push/iam/InAppMessageFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/iam/InAppMessageFragment;->dismiss(Z)V

    .line 164
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageFragment$1;->this$0:Lcom/urbanairship/push/iam/InAppMessageFragment;

    # getter for: Lcom/urbanairship/push/iam/InAppMessageFragment;->message:Lcom/urbanairship/push/iam/InAppMessage;
    invoke-static {v0}, Lcom/urbanairship/push/iam/InAppMessageFragment;->access$000(Lcom/urbanairship/push/iam/InAppMessageFragment;)Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageFragment$1;->this$0:Lcom/urbanairship/push/iam/InAppMessageFragment;

    # getter for: Lcom/urbanairship/push/iam/InAppMessageFragment;->timer:Lcom/urbanairship/push/iam/Timer;
    invoke-static {v1}, Lcom/urbanairship/push/iam/InAppMessageFragment;->access$100(Lcom/urbanairship/push/iam/InAppMessageFragment;)Lcom/urbanairship/push/iam/Timer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/iam/Timer;->getRunTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/urbanairship/push/iam/ResolutionEvent;->createTimedOutResolutionEvent(Lcom/urbanairship/push/iam/InAppMessage;J)Lcom/urbanairship/push/iam/ResolutionEvent;

    move-result-object v0

    .line 165
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    .line 166
    return-void
.end method
