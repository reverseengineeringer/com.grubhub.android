.class Lcom/urbanairship/CancelableOperation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/CancelableOperation;-><init>(Landroid/os/Looper;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/CancelableOperation;


# direct methods
.method constructor <init>(Lcom/urbanairship/CancelableOperation;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/urbanairship/CancelableOperation$1;->this$0:Lcom/urbanairship/CancelableOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 60
    iget-object v1, p0, Lcom/urbanairship/CancelableOperation$1;->this$0:Lcom/urbanairship/CancelableOperation;

    monitor-enter v1

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/CancelableOperation$1;->this$0:Lcom/urbanairship/CancelableOperation;

    invoke-virtual {v0}, Lcom/urbanairship/CancelableOperation;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    monitor-exit v1

    .line 68
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/CancelableOperation$1;->this$0:Lcom/urbanairship/CancelableOperation;

    invoke-virtual {v0}, Lcom/urbanairship/CancelableOperation;->onRun()V

    .line 66
    iget-object v0, p0, Lcom/urbanairship/CancelableOperation$1;->this$0:Lcom/urbanairship/CancelableOperation;

    const/4 v2, 0x1

    # setter for: Lcom/urbanairship/CancelableOperation;->isFinished:Z
    invoke-static {v0, v2}, Lcom/urbanairship/CancelableOperation;->access$002(Lcom/urbanairship/CancelableOperation;Z)Z

    .line 67
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
