.class Lcom/urbanairship/actions/Action$1;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/actions/Action;->startActivityForResult(Landroid/content/Intent;)Lcom/urbanairship/actions/Action$ActivityResult;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/actions/Action;

.field final synthetic val$result:Lcom/urbanairship/actions/Action$ActivityResult;


# direct methods
.method constructor <init>(Lcom/urbanairship/actions/Action;Landroid/os/Handler;Lcom/urbanairship/actions/Action$ActivityResult;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/urbanairship/actions/Action$1;->this$0:Lcom/urbanairship/actions/Action;

    iput-object p3, p0, Lcom/urbanairship/actions/Action$1;->val$result:Lcom/urbanairship/actions/Action$ActivityResult;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 152
    iget-object v1, p0, Lcom/urbanairship/actions/Action$1;->val$result:Lcom/urbanairship/actions/Action$ActivityResult;

    const-string v0, "com.urbanairship.actions.actionactivity.RESULT_INTENT_EXTRA"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    # invokes: Lcom/urbanairship/actions/Action$ActivityResult;->setResult(ILandroid/content/Intent;)V
    invoke-static {v1, p1, v0}, Lcom/urbanairship/actions/Action$ActivityResult;->access$000(Lcom/urbanairship/actions/Action$ActivityResult;ILandroid/content/Intent;)V

    .line 153
    iget-object v1, p0, Lcom/urbanairship/actions/Action$1;->val$result:Lcom/urbanairship/actions/Action$ActivityResult;

    monitor-enter v1

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/actions/Action$1;->val$result:Lcom/urbanairship/actions/Action$ActivityResult;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 155
    monitor-exit v1

    .line 156
    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
