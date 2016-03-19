.class Lcom/urbanairship/push/iam/InAppMessageManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/push/iam/InAppMessageManager;->setPendingMessage(Lcom/urbanairship/push/iam/InAppMessage;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

.field final synthetic val$message:Lcom/urbanairship/push/iam/InAppMessage;


# direct methods
.method constructor <init>(Lcom/urbanairship/push/iam/InAppMessageManager;Lcom/urbanairship/push/iam/InAppMessage;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessageManager$3;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    iput-object p2, p0, Lcom/urbanairship/push/iam/InAppMessageManager$3;->val$message:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 256
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager$3;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    # getter for: Lcom/urbanairship/push/iam/InAppMessageManager;->listeners:Ljava/util/List;
    invoke-static {v0}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$200(Lcom/urbanairship/push/iam/InAppMessageManager;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager$3;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    # getter for: Lcom/urbanairship/push/iam/InAppMessageManager;->listeners:Ljava/util/List;
    invoke-static {v0}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$200(Lcom/urbanairship/push/iam/InAppMessageManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/iam/InAppMessageManager$Listener;

    .line 258
    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessageManager$3;->val$message:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-interface {v0, v3}, Lcom/urbanairship/push/iam/InAppMessageManager$Listener;->onPendingMessageAvailable(Lcom/urbanairship/push/iam/InAppMessage;)V

    goto :goto_0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    return-void
.end method
