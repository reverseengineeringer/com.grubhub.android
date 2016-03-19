.class Lcom/urbanairship/widget/UAWebViewClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/urbanairship/actions/ActionCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/widget/UAWebViewClient;->runActions(Landroid/webkit/WebView;Ljava/util/Map;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/widget/UAWebViewClient;


# direct methods
.method constructor <init>(Lcom/urbanairship/widget/UAWebViewClient;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/urbanairship/widget/UAWebViewClient$1;->this$0:Lcom/urbanairship/widget/UAWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/urbanairship/actions/ActionArguments;Lcom/urbanairship/actions/ActionResult;)V
    .locals 1

    .prologue
    .line 273
    monitor-enter p0

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/widget/UAWebViewClient$1;->this$0:Lcom/urbanairship/widget/UAWebViewClient;

    # getter for: Lcom/urbanairship/widget/UAWebViewClient;->actionCompletionCallback:Lcom/urbanairship/actions/ActionCompletionCallback;
    invoke-static {v0}, Lcom/urbanairship/widget/UAWebViewClient;->access$000(Lcom/urbanairship/widget/UAWebViewClient;)Lcom/urbanairship/actions/ActionCompletionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/urbanairship/widget/UAWebViewClient$1;->this$0:Lcom/urbanairship/widget/UAWebViewClient;

    # getter for: Lcom/urbanairship/widget/UAWebViewClient;->actionCompletionCallback:Lcom/urbanairship/actions/ActionCompletionCallback;
    invoke-static {v0}, Lcom/urbanairship/widget/UAWebViewClient;->access$000(Lcom/urbanairship/widget/UAWebViewClient;)Lcom/urbanairship/actions/ActionCompletionCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/urbanairship/actions/ActionCompletionCallback;->onFinish(Lcom/urbanairship/actions/ActionArguments;Lcom/urbanairship/actions/ActionResult;)V

    .line 277
    :cond_0
    monitor-exit p0

    .line 278
    return-void

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
