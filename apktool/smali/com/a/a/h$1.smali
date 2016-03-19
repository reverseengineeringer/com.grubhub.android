.class Lcom/a/a/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/h;->a()V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/a/a/h;


# direct methods
.method constructor <init>(Lcom/a/a/h;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/a/a/h$1;->b:Lcom/a/a/h;

    iput-object p2, p0, Lcom/a/a/h$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 93
    iget-object v0, p0, Lcom/a/a/h$1;->b:Lcom/a/a/h;

    .line 94
    new-instance v1, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/a/a/h$1;->b:Lcom/a/a/h;

    iget-object v2, v2, Lcom/a/a/h;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/a/a/h;->a(Lcom/a/a/h;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 97
    invoke-static {v0}, Lcom/a/a/h;->a(Lcom/a/a/h;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 99
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 100
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 101
    sget-object v2, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 105
    invoke-static {v0}, Lcom/a/a/h;->a(Lcom/a/a/h;)Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Lcom/a/a/h$1$1;

    invoke-direct {v2, p0}, Lcom/a/a/h$1$1;-><init>(Lcom/a/a/h$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 138
    invoke-static {v0}, Lcom/a/a/h;->a(Lcom/a/a/h;)Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Lcom/a/a/h$1$2;

    invoke-direct {v2, p0}, Lcom/a/a/h$1$2;-><init>(Lcom/a/a/h$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 145
    invoke-static {v0}, Lcom/a/a/h;->a(Lcom/a/a/h;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/h$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 146
    return-void
.end method
