.class Lcom/urbanairship/actions/ActionService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/urbanairship/actions/ActionCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/actions/ActionService;->onRunActions(Landroid/content/Intent;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/actions/ActionService;


# direct methods
.method constructor <init>(Lcom/urbanairship/actions/ActionService;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/urbanairship/actions/ActionService$1;->this$0:Lcom/urbanairship/actions/ActionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/urbanairship/actions/ActionArguments;Lcom/urbanairship/actions/ActionResult;)V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/urbanairship/actions/ActionService$1;->this$0:Lcom/urbanairship/actions/ActionService;

    # operator-- for: Lcom/urbanairship/actions/ActionService;->runningActions:I
    invoke-static {v0}, Lcom/urbanairship/actions/ActionService;->access$010(Lcom/urbanairship/actions/ActionService;)I

    .line 279
    iget-object v0, p0, Lcom/urbanairship/actions/ActionService$1;->this$0:Lcom/urbanairship/actions/ActionService;

    # getter for: Lcom/urbanairship/actions/ActionService;->runningActions:I
    invoke-static {v0}, Lcom/urbanairship/actions/ActionService;->access$000(Lcom/urbanairship/actions/ActionService;)I

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/urbanairship/actions/ActionService$1;->this$0:Lcom/urbanairship/actions/ActionService;

    iget-object v1, p0, Lcom/urbanairship/actions/ActionService$1;->this$0:Lcom/urbanairship/actions/ActionService;

    # getter for: Lcom/urbanairship/actions/ActionService;->lastStartId:I
    invoke-static {v1}, Lcom/urbanairship/actions/ActionService;->access$100(Lcom/urbanairship/actions/ActionService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/actions/ActionService;->stopSelf(I)V

    .line 282
    :cond_0
    return-void
.end method
