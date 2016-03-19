.class public Lcom/grubhub/AppBaseLibrary/android/utils/g/c;
.super Lcom/grubhub/AppBaseLibrary/android/utils/g/e;
.source "SourceFile"


# instance fields
.field private e:Lcom/braintreepayments/api/c;

.field private f:Lcom/grubhub/AppBaseLibrary/android/utils/g/d;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/grubhub/AppBaseLibrary/android/utils/g/f;)V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;->PAYPAL_EXPRESS:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;

    invoke-direct {p0, p1, v0, p2}, Lcom/grubhub/AppBaseLibrary/android/utils/g/e;-><init>(Landroid/app/Activity;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;Lcom/grubhub/AppBaseLibrary/android/utils/g/f;)V

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/utils/g/c;)Lcom/braintreepayments/api/c;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->e:Lcom/braintreepayments/api/c;

    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/utils/g/c;Lcom/braintreepayments/api/c;)Lcom/braintreepayments/api/c;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->e:Lcom/braintreepayments/api/c;

    return-object p1
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->e:Lcom/braintreepayments/api/c;

    if-nez v0, :cond_1

    .line 67
    const-string v0, "Unable to retrieve PayPal payment nonce."

    const-string v1, "BrainTree object is null."

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/b/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_UNKNOWN:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-direct {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/b/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/f;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->e:Lcom/braintreepayments/api/c;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1, p2, p3}, Lcom/braintreepayments/api/c;->a(Landroid/app/Activity;ILandroid/content/Intent;)V

    .line 79
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->f:Lcom/grubhub/AppBaseLibrary/android/utils/g/d;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->f:Lcom/grubhub/AppBaseLibrary/android/utils/g/d;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/d;->a()V

    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->e()V

    goto :goto_0
.end method

.method protected a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 3

    .prologue
    .line 142
    const-string v0, "Unable to retrieve the client token."

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Token type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/f;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 146
    :cond_0
    return-void
.end method

.method protected a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentResourceCreatedDataModel;)V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->PAYPAL_EXPRESS:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    invoke-interface {v0, p1, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/f;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentResourceCreatedDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    .line 196
    :cond_0
    return-void
.end method

.method protected a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentTokenModel;)V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->b:Landroid/app/Activity;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentTokenModel;->getToken()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1;

    invoke-direct {v2, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/c$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/g/c;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentTokenModel;)V

    invoke-static {v0, v1, v2}, Lcom/braintreepayments/api/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/braintreepayments/api/d;)V

    .line 138
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/utils/g/d;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->f:Lcom/grubhub/AppBaseLibrary/android/utils/g/d;

    .line 53
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->f()V

    .line 54
    return-void
.end method

.method protected b(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 2

    .prologue
    .line 200
    const-string v0, "Vaulting the payment failed."

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/f;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 204
    :cond_0
    return-void
.end method

.method protected b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentResourceCreatedDataModel;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 150
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->b:Landroid/app/Activity;

    invoke-direct {v0, v1, v2, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;-><init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    .line 151
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/g/c$2;

    invoke-direct {v1, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/c$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/g/c;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentResourceCreatedDataModel;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 182
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/g/c$3;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/c$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/g/c;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 188
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;->a()V

    .line 189
    return-void
.end method

.method protected e()V
    .locals 2

    .prologue
    .line 208
    const-string v0, "User canceled PayPal processing."

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/f;->i()V

    .line 212
    :cond_0
    return-void
.end method
