.class Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;->onResume()V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment$1;->b:Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment$1;->b:Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;->a(Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment$1;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 80
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment$1;->b:Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;->b(Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;)V

    .line 81
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x1

    return v0
.end method
