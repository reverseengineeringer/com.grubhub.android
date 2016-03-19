.class public Lcom/braintreepayments/api/threedsecure/b;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method private a(Landroid/webkit/WebSettings;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 63
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 44
    const v0, 0x1020018

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/threedsecure/b;->setId(I)V

    .line 46
    invoke-virtual {p0}, Lcom/braintreepayments/api/threedsecure/b;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 47
    invoke-static {}, Lcom/braintreepayments/api/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 49
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 50
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 51
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 52
    invoke-direct {p0, v0}, Lcom/braintreepayments/api/threedsecure/b;->a(Landroid/webkit/WebSettings;)V

    .line 54
    new-instance v0, Lcom/braintreepayments/api/threedsecure/a;

    invoke-direct {v0, p1}, Lcom/braintreepayments/api/threedsecure/a;-><init>(Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;)V

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/threedsecure/b;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 55
    new-instance v0, Lcom/braintreepayments/api/threedsecure/c;

    invoke-direct {v0, p1}, Lcom/braintreepayments/api/threedsecure/c;-><init>(Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;)V

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/threedsecure/b;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 56
    return-void
.end method
