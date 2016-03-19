.class Lcom/urbanairship/widget/UAWebViewClient$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/urbanairship/actions/ActionCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/widget/UAWebViewClient;->runAction(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/widget/UAWebViewClient;

.field final synthetic val$callbackKey:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/urbanairship/widget/UAWebViewClient;Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/urbanairship/widget/UAWebViewClient$2;->this$0:Lcom/urbanairship/widget/UAWebViewClient;

    iput-object p2, p0, Lcom/urbanairship/widget/UAWebViewClient$2;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/urbanairship/widget/UAWebViewClient$2;->val$webView:Landroid/webkit/WebView;

    iput-object p4, p0, Lcom/urbanairship/widget/UAWebViewClient$2;->val$callbackKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/urbanairship/actions/ActionArguments;Lcom/urbanairship/actions/ActionResult;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 319
    const/4 v0, 0x0

    .line 320
    sget-object v1, Lcom/urbanairship/widget/UAWebViewClient$3;->$SwitchMap$com$urbanairship$actions$ActionResult$Status:[I

    invoke-virtual {p2}, Lcom/urbanairship/actions/ActionResult;->getStatus()Lcom/urbanairship/actions/ActionResult$Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/actions/ActionResult$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 335
    :goto_0
    iget-object v1, p0, Lcom/urbanairship/widget/UAWebViewClient$2;->this$0:Lcom/urbanairship/widget/UAWebViewClient;

    iget-object v2, p0, Lcom/urbanairship/widget/UAWebViewClient$2;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Lcom/urbanairship/actions/ActionResult;->getValue()Lcom/urbanairship/actions/ActionValue;

    move-result-object v3

    iget-object v4, p0, Lcom/urbanairship/widget/UAWebViewClient$2;->val$callbackKey:Ljava/lang/String;

    # invokes: Lcom/urbanairship/widget/UAWebViewClient;->triggerCallback(Landroid/webkit/WebView;Ljava/lang/String;Lcom/urbanairship/actions/ActionValue;Ljava/lang/String;)V
    invoke-static {v1, v2, v0, v3, v4}, Lcom/urbanairship/widget/UAWebViewClient;->access$100(Lcom/urbanairship/widget/UAWebViewClient;Landroid/webkit/WebView;Ljava/lang/String;Lcom/urbanairship/actions/ActionValue;Ljava/lang/String;)V

    .line 337
    monitor-enter p0

    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/widget/UAWebViewClient$2;->this$0:Lcom/urbanairship/widget/UAWebViewClient;

    # getter for: Lcom/urbanairship/widget/UAWebViewClient;->actionCompletionCallback:Lcom/urbanairship/actions/ActionCompletionCallback;
    invoke-static {v0}, Lcom/urbanairship/widget/UAWebViewClient;->access$000(Lcom/urbanairship/widget/UAWebViewClient;)Lcom/urbanairship/actions/ActionCompletionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/urbanairship/widget/UAWebViewClient$2;->this$0:Lcom/urbanairship/widget/UAWebViewClient;

    # getter for: Lcom/urbanairship/widget/UAWebViewClient;->actionCompletionCallback:Lcom/urbanairship/actions/ActionCompletionCallback;
    invoke-static {v0}, Lcom/urbanairship/widget/UAWebViewClient;->access$000(Lcom/urbanairship/widget/UAWebViewClient;)Lcom/urbanairship/actions/ActionCompletionCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/urbanairship/actions/ActionCompletionCallback;->onFinish(Lcom/urbanairship/actions/ActionArguments;Lcom/urbanairship/actions/ActionResult;)V

    .line 341
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    return-void

    .line 322
    :pswitch_0
    const-string v0, "Action %s not found"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/urbanairship/widget/UAWebViewClient$2;->val$name:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 325
    :pswitch_1
    const-string v0, "Action %s rejected its arguments"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/urbanairship/widget/UAWebViewClient$2;->val$name:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 328
    :pswitch_2
    invoke-virtual {p2}, Lcom/urbanairship/actions/ActionResult;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 329
    invoke-virtual {p2}, Lcom/urbanairship/actions/ActionResult;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 331
    :cond_1
    const-string v0, "Action %s failed with unspecified error"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/urbanairship/widget/UAWebViewClient$2;->val$name:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 341
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 320
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
