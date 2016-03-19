.class public Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/ActionBar;

.field private b:Landroid/widget/FrameLayout;

.field private c:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/braintreepayments/api/threedsecure/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private b()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 111
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->a:Landroid/app/ActionBar;

    .line 113
    iget-object v0, p0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->a:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 114
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->a(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->a:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 118
    :cond_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/threedsecure/b;

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->a(Lcom/braintreepayments/api/threedsecure/b;)V

    .line 82
    return-void
.end method

.method protected a(Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;)V
    .locals 3

    .prologue
    .line 85
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.braintreepayments.api.EXTRA_THREE_D_SECURE_RESULT"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 88
    invoke-virtual {p0}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->finish()V

    .line 89
    return-void
.end method

.method protected a(Lcom/braintreepayments/api/threedsecure/b;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->c:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 76
    iget-object v0, p0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 77
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->a:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->a:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/threedsecure/b;

    invoke-virtual {v0}, Lcom/braintreepayments/api/threedsecure/b;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/threedsecure/b;

    invoke-virtual {v0}, Lcom/braintreepayments/api/threedsecure/b;->goBack()V

    .line 100
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->a()V

    goto :goto_0

    .line 98
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->requestWindowFeature(I)Z

    .line 44
    invoke-virtual {p0}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.braintreepayments.api.EXTRA_THREE_D_SECURE_LOOKUP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/models/ThreeDSecureLookup;

    .line 46
    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A ThreeDSecureLookup must be specified with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/braintreepayments/api/models/ThreeDSecureLookup;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".EXTRA_THREE_D_SECURE_LOOKUP extra"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    invoke-direct {p0}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->b()V

    .line 53
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->c:Ljava/util/Stack;

    .line 54
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->b:Landroid/widget/FrameLayout;

    .line 56
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 57
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "PaReq"

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/ThreeDSecureLookup;->d()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "MD"

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/ThreeDSecureLookup;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "TermUrl"

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/ThreeDSecureLookup;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 62
    :try_start_0
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    new-instance v1, Lcom/braintreepayments/api/threedsecure/b;

    invoke-direct {v1, p0}, Lcom/braintreepayments/api/threedsecure/b;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-virtual {v1, p0}, Lcom/braintreepayments/api/threedsecure/b;->a(Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;)V

    .line 69
    invoke-virtual {v0}, Lcom/braintreepayments/api/models/ThreeDSecureLookup;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/braintreepayments/api/threedsecure/b;->postUrl(Ljava/lang/String;[B)V

    .line 70
    invoke-virtual {p0, v1}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->a(Lcom/braintreepayments/api/threedsecure/b;)V

    .line 71
    return-void

    .line 63
    :catch_0
    move-exception v1

    .line 64
    invoke-virtual {p0}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->finish()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 122
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->setResult(I)V

    .line 124
    invoke-virtual {p0}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->finish()V

    .line 125
    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
