.class public Lcom/braintreepayments/api/threedsecure/c;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field private a:Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/braintreepayments/api/threedsecure/c;->a:Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;

    .line 20
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 36
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/braintreepayments/api/threedsecure/c;->a:Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->a(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 23
    const-string v0, "html/authentication_complete_frame"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 26
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "auth_response"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/braintreepayments/api/threedsecure/c;->a:Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;

    invoke-static {v0}, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;->a(Ljava/lang/String;)Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->a(Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;)V

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 44
    iget-object v0, p0, Lcom/braintreepayments/api/threedsecure/c;->a:Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;

    invoke-static {p3}, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;->b(Ljava/lang/String;)Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->a(Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;)V

    .line 46
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 51
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 52
    iget-object v0, p0, Lcom/braintreepayments/api/threedsecure/c;->a:Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;

    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;->b(Ljava/lang/String;)Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->a(Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;)V

    .line 54
    return-void
.end method
