.class Lcom/urbanairship/actions/LandingPageActivity$1;
.super Lcom/urbanairship/widget/UAWebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/actions/LandingPageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/actions/LandingPageActivity;

.field final synthetic val$progressBar:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/urbanairship/actions/LandingPageActivity;Landroid/widget/ProgressBar;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/urbanairship/actions/LandingPageActivity$1;->this$0:Lcom/urbanairship/actions/LandingPageActivity;

    iput-object p2, p0, Lcom/urbanairship/actions/LandingPageActivity$1;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Lcom/urbanairship/widget/UAWebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 156
    invoke-super {p0, p1, p2}, Lcom/urbanairship/widget/UAWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity$1;->this$0:Lcom/urbanairship/actions/LandingPageActivity;

    # getter for: Lcom/urbanairship/actions/LandingPageActivity;->error:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/urbanairship/actions/LandingPageActivity;->access$000(Lcom/urbanairship/actions/LandingPageActivity;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity$1;->this$0:Lcom/urbanairship/actions/LandingPageActivity;

    # getter for: Lcom/urbanairship/actions/LandingPageActivity;->error:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/urbanairship/actions/LandingPageActivity;->access$000(Lcom/urbanairship/actions/LandingPageActivity;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 167
    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity$1;->this$0:Lcom/urbanairship/actions/LandingPageActivity;

    # setter for: Lcom/urbanairship/actions/LandingPageActivity;->error:Ljava/lang/Integer;
    invoke-static {v0, v3}, Lcom/urbanairship/actions/LandingPageActivity;->access$002(Lcom/urbanairship/actions/LandingPageActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 168
    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity$1;->this$0:Lcom/urbanairship/actions/LandingPageActivity;

    # getter for: Lcom/urbanairship/actions/LandingPageActivity;->webView:Lcom/urbanairship/widget/UAWebView;
    invoke-static {v0}, Lcom/urbanairship/actions/LandingPageActivity;->access$100(Lcom/urbanairship/actions/LandingPageActivity;)Lcom/urbanairship/widget/UAWebView;

    move-result-object v0

    const-string v1, ""

    const-string v2, "text/html"

    invoke-virtual {v0, v1, v2, v3}, Lcom/urbanairship/widget/UAWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :goto_0
    return-void

    .line 163
    :sswitch_0
    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity$1;->this$0:Lcom/urbanairship/actions/LandingPageActivity;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v2, v3}, Lcom/urbanairship/actions/LandingPageActivity;->loadLandingPage(J)V

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity$1;->this$0:Lcom/urbanairship/actions/LandingPageActivity;

    # getter for: Lcom/urbanairship/actions/LandingPageActivity;->webViewBackgroundColor:I
    invoke-static {v0}, Lcom/urbanairship/actions/LandingPageActivity;->access$200(Lcom/urbanairship/actions/LandingPageActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 173
    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity$1;->this$0:Lcom/urbanairship/actions/LandingPageActivity;

    # getter for: Lcom/urbanairship/actions/LandingPageActivity;->webView:Lcom/urbanairship/widget/UAWebView;
    invoke-static {v0}, Lcom/urbanairship/actions/LandingPageActivity;->access$100(Lcom/urbanairship/actions/LandingPageActivity;)Lcom/urbanairship/widget/UAWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/actions/LandingPageActivity$1;->this$0:Lcom/urbanairship/actions/LandingPageActivity;

    # getter for: Lcom/urbanairship/actions/LandingPageActivity;->webViewBackgroundColor:I
    invoke-static {v1}, Lcom/urbanairship/actions/LandingPageActivity;->access$200(Lcom/urbanairship/actions/LandingPageActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/widget/UAWebView;->setBackgroundColor(I)V

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity$1;->this$0:Lcom/urbanairship/actions/LandingPageActivity;

    iget-object v1, p0, Lcom/urbanairship/actions/LandingPageActivity$1;->this$0:Lcom/urbanairship/actions/LandingPageActivity;

    # getter for: Lcom/urbanairship/actions/LandingPageActivity;->webView:Lcom/urbanairship/widget/UAWebView;
    invoke-static {v1}, Lcom/urbanairship/actions/LandingPageActivity;->access$100(Lcom/urbanairship/actions/LandingPageActivity;)Lcom/urbanairship/widget/UAWebView;

    move-result-object v1

    iget-object v2, p0, Lcom/urbanairship/actions/LandingPageActivity$1;->val$progressBar:Landroid/widget/ProgressBar;

    # invokes: Lcom/urbanairship/actions/LandingPageActivity;->crossFade(Landroid/view/View;Landroid/view/View;)V
    invoke-static {v0, v1, v2}, Lcom/urbanairship/actions/LandingPageActivity;->access$300(Lcom/urbanairship/actions/LandingPageActivity;Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    .line 158
    :sswitch_data_0
    .sparse-switch
        -0x8 -> :sswitch_0
        -0x6 -> :sswitch_0
        -0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 181
    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity$1;->this$0:Lcom/urbanairship/actions/LandingPageActivity;

    invoke-virtual {v0}, Lcom/urbanairship/actions/LandingPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LandingPageActivity - Failed to load page "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity$1;->this$0:Lcom/urbanairship/actions/LandingPageActivity;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # setter for: Lcom/urbanairship/actions/LandingPageActivity;->error:Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcom/urbanairship/actions/LandingPageActivity;->access$002(Lcom/urbanairship/actions/LandingPageActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 185
    :cond_0
    return-void
.end method
