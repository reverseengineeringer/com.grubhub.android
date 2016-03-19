.class Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;->a(Landroid/webkit/WebView;)Ljava/lang/Runnable;
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment$3;->b:Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment$3;->a:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment$3;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 126
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment$3;->b:Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;->b(Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;)V

    .line 127
    return-void
.end method
