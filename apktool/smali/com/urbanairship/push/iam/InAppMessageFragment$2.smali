.class Lcom/urbanairship/push/iam/InAppMessageFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$Listener;


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
    .line 228
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessageFragment$2;->this$0:Lcom/urbanairship/push/iam/InAppMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 231
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageFragment$2;->this$0:Lcom/urbanairship/push/iam/InAppMessageFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/iam/InAppMessageFragment;->dismiss(Z)V

    .line 233
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageFragment$2;->this$0:Lcom/urbanairship/push/iam/InAppMessageFragment;

    # getter for: Lcom/urbanairship/push/iam/InAppMessageFragment;->message:Lcom/urbanairship/push/iam/InAppMessage;
    invoke-static {v0}, Lcom/urbanairship/push/iam/InAppMessageFragment;->access$000(Lcom/urbanairship/push/iam/InAppMessageFragment;)Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageFragment$2;->this$0:Lcom/urbanairship/push/iam/InAppMessageFragment;

    # getter for: Lcom/urbanairship/push/iam/InAppMessageFragment;->timer:Lcom/urbanairship/push/iam/Timer;
    invoke-static {v1}, Lcom/urbanairship/push/iam/InAppMessageFragment;->access$100(Lcom/urbanairship/push/iam/InAppMessageFragment;)Lcom/urbanairship/push/iam/Timer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/iam/Timer;->getRunTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/urbanairship/push/iam/ResolutionEvent;->createUserDismissedResolutionEvent(Lcom/urbanairship/push/iam/InAppMessage;J)Lcom/urbanairship/push/iam/ResolutionEvent;

    move-result-object v0

    .line 234
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    .line 235
    return-void
.end method

.method public onDragStateChanged(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 239
    packed-switch p2, :pswitch_data_0

    .line 247
    :goto_0
    return-void

    .line 241
    :pswitch_0
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageFragment$2;->this$0:Lcom/urbanairship/push/iam/InAppMessageFragment;

    # getter for: Lcom/urbanairship/push/iam/InAppMessageFragment;->timer:Lcom/urbanairship/push/iam/Timer;
    invoke-static {v0}, Lcom/urbanairship/push/iam/InAppMessageFragment;->access$100(Lcom/urbanairship/push/iam/InAppMessageFragment;)Lcom/urbanairship/push/iam/Timer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/Timer;->stop()V

    goto :goto_0

    .line 244
    :pswitch_1
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageFragment$2;->this$0:Lcom/urbanairship/push/iam/InAppMessageFragment;

    # getter for: Lcom/urbanairship/push/iam/InAppMessageFragment;->timer:Lcom/urbanairship/push/iam/Timer;
    invoke-static {v0}, Lcom/urbanairship/push/iam/InAppMessageFragment;->access$100(Lcom/urbanairship/push/iam/InAppMessageFragment;)Lcom/urbanairship/push/iam/Timer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/Timer;->start()V

    goto :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
