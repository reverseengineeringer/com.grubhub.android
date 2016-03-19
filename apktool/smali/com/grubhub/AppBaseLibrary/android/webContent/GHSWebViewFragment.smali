.class public Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Ljava/lang/String;

.field private c:Landroid/os/Handler;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;->c:Landroid/os/Handler;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;
    .locals 3

    .prologue
    .line 37
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;-><init>()V

    .line 38
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 39
    const-string v2, "web_view_url"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 42
    return-object v0
.end method

.method private a(Landroid/webkit/WebView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment$3;

    invoke-direct {v0, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;Landroid/webkit/WebView;)V

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 135
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;->a:Landroid/view/View;

    const v1, 0x7f0f02a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;->a:Landroid/view/View;

    const v1, 0x7f0f02a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;->a:Landroid/view/View;

    const v1, 0x7f0f02a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 138
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 144
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;->a:Landroid/view/View;

    const v1, 0x7f0f02a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;->a:Landroid/view/View;

    const v1, 0x7f0f02a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;->a:Landroid/view/View;

    const v1, 0x7f0f02a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;->d:Z

    .line 148
    return-void
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;->b()V

    return-void
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;->d:Z

    return v0
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;->a()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "web_view_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;->b:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 55
    const v0, 0x7f03007b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;->a:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;->a:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 61
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 64
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;->a:Landroid/view/View;

    const v1, 0x7f0f02a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 67
    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;->a(Landroid/webkit/WebView;)Ljava/lang/Runnable;

    move-result-object v1

    .line 68
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;->c:Landroid/os/Handler;

    .line 69
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;->c:Landroid/os/Handler;

    const-wide/16 v4, 0x3a98

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 73
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 75
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment$1;

    invoke-direct {v2, p0, v1}, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 91
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment$2;

    invoke-direct {v2, p0, v1}, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 107
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;->b()V

    goto :goto_0
.end method
