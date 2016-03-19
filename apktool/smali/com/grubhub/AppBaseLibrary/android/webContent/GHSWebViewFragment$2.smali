.class Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment$2;
.super Landroid/webkit/WebChromeClient;
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
    .line 91
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment$2;->b:Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment$2;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .prologue
    .line 94
    const/16 v0, 0x64

    if-lt p2, v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment$2;->b:Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;->a(Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment$2;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 98
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment$2;->b:Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;->c(Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment$2;->b:Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;->d(Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;)V

    .line 102
    :cond_0
    return-void
.end method
