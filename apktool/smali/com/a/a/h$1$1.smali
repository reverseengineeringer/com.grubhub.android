.class Lcom/a/a/h$1$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/h$1;->run()V
.end annotation


# instance fields
.field a:Lcom/a/a/h;

.field final synthetic b:Lcom/a/a/h$1;


# direct methods
.method constructor <init>(Lcom/a/a/h$1;)V
    .locals 1

    .prologue
    .line 105
    iput-object p1, p0, Lcom/a/a/h$1$1;->b:Lcom/a/a/h$1;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 106
    iget-object v0, p0, Lcom/a/a/h$1$1;->b:Lcom/a/a/h$1;

    iget-object v0, v0, Lcom/a/a/h$1;->b:Lcom/a/a/h;

    iput-object v0, p0, Lcom/a/a/h$1$1;->a:Lcom/a/a/h;

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/a/a/h$1$1;->a:Lcom/a/a/h;

    invoke-static {v0, p1, p2}, Lcom/a/a/h;->a(Lcom/a/a/h;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/a/a/h$1$1;->a:Lcom/a/a/h;

    invoke-static {v0, p1, p2}, Lcom/a/a/h;->b(Lcom/a/a/h;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/a/a/h$1$1;->a:Lcom/a/a/h;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/a/a/h;->a(Lcom/a/a/h;Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/a/a/h$1$1;->a:Lcom/a/a/h;

    invoke-static {v0, p1, p2, p3}, Lcom/a/a/h;->a(Lcom/a/a/h;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 128
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/a/a/h$1$1;->a:Lcom/a/a/h;

    invoke-static {v0, p1, p2}, Lcom/a/a/h;->c(Lcom/a/a/h;Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
