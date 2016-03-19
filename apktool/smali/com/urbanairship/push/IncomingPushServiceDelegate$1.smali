.class Lcom/urbanairship/push/IncomingPushServiceDelegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/urbanairship/richpush/RichPushManager$RefreshMessagesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/push/IncomingPushServiceDelegate;->refreshRichPushMessages()V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/push/IncomingPushServiceDelegate;

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/urbanairship/push/IncomingPushServiceDelegate;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/urbanairship/push/IncomingPushServiceDelegate$1;->this$0:Lcom/urbanairship/push/IncomingPushServiceDelegate;

    iput-object p2, p0, Lcom/urbanairship/push/IncomingPushServiceDelegate$1;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshMessages(Z)V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/urbanairship/push/IncomingPushServiceDelegate$1;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 322
    return-void
.end method
