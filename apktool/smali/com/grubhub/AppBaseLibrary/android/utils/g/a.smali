.class public Lcom/grubhub/AppBaseLibrary/android/utils/g/a;
.super Lcom/grubhub/AppBaseLibrary/android/utils/g/e;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/utils/d/b;


# instance fields
.field private e:Lcom/braintreepayments/api/c;

.field private f:Lcom/grubhub/AppBaseLibrary/android/utils/d/a;

.field private g:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/grubhub/AppBaseLibrary/android/utils/g/f;)V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;->ANDROID_PAY:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;

    invoke-direct {p0, p1, v0, p2}, Lcom/grubhub/AppBaseLibrary/android/utils/g/e;-><init>(Landroid/app/Activity;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;Lcom/grubhub/AppBaseLibrary/android/utils/g/f;)V

    .line 54
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->X()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/utils/g/a;)Lcom/braintreepayments/api/c;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->e:Lcom/braintreepayments/api/c;

    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/utils/g/a;Lcom/braintreepayments/api/c;)Lcom/braintreepayments/api/c;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->e:Lcom/braintreepayments/api/c;

    return-object p1
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/utils/g/a;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->h:Z

    return v0
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/utils/g/a;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->i:Z

    return v0
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/utils/g/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/grubhub/AppBaseLibrary/android/utils/g/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/grubhub/AppBaseLibrary/android/utils/g/a;)Lcom/grubhub/AppBaseLibrary/android/utils/d/a;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->f:Lcom/grubhub/AppBaseLibrary/android/utils/d/a;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 312
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->f:Lcom/grubhub/AppBaseLibrary/android/utils/d/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/d/a;->b()V

    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->i:Z

    .line 314
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->k:Ljava/lang/String;

    .line 315
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->l:Ljava/lang/String;

    .line 316
    return-void
.end method

.method static synthetic g(Lcom/grubhub/AppBaseLibrary/android/utils/g/a;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->j:Z

    return v0
.end method

.method static synthetic h(Lcom/grubhub/AppBaseLibrary/android/utils/g/a;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->h:Z

    .line 285
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->f()V

    .line 286
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 101
    packed-switch p1, :pswitch_data_0

    .line 174
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 103
    :pswitch_1
    if-nez p2, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->e()V

    goto :goto_0

    .line 108
    :cond_1
    if-eqz p3, :cond_7

    const-string v0, "com.google.android.gms.wallet.EXTRA_MASKED_WALLET"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 109
    const-string v0, "com.google.android.gms.wallet.EXTRA_MASKED_WALLET"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wallet/MaskedWallet;

    .line 110
    invoke-virtual {v0}, Lcom/google/android/gms/wallet/MaskedWallet;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 114
    const-string v0, "com.google.android.gms.wallet.EXTRA_ERROR_CODE"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    const-string v0, "Vaulting the payment failed."

    const-string v1, "Unable to retrieve a MaskedWallet."

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    if-eqz p3, :cond_2

    const-string v0, "com.google.android.gms.wallet.EXTRA_ERROR_CODE"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    const-string v0, "Masked Wallet Error Code: "

    const-string v1, "com.google.android.gms.wallet.EXTRA_ERROR_CODE"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/b/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_UNKNOWN:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-direct {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/b/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/f;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    goto :goto_0

    .line 126
    :cond_3
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->e()V

    goto :goto_0

    .line 129
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/wallet/MaskedWallet;->d()[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    .line 130
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->e()V

    goto :goto_0

    .line 135
    :cond_5
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v2

    .line 136
    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->s()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;

    move-result-object v1

    .line 138
    if-nez v1, :cond_6

    .line 139
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;

    invoke-direct {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;-><init>()V

    .line 141
    :cond_6
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAndroidPayMaskedWalletModel;->fromMaskedWallet(Lcom/google/android/gms/wallet/MaskedWallet;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAndroidPayMaskedWalletModel;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;->setSelectedMaskedWalletModel(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAndroidPayMaskedWalletModel;)V

    .line 142
    invoke-interface {v2, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;)V

    .line 145
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    const/4 v1, 0x0

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->ANDROID_PAY:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    invoke-interface {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/g/f;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentResourceCreatedDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    goto/16 :goto_0

    .line 150
    :cond_7
    const-string v0, "Vaulting the payment failed."

    const-string v1, "Unable to retrieve a MaskedWallet."

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/b/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_UNKNOWN:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-direct {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/b/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/f;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    goto/16 :goto_0

    .line 157
    :pswitch_2
    if-ne p2, v2, :cond_8

    .line 159
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->e:Lcom/braintreepayments/api/c;

    invoke-virtual {v0, p2, p3}, Lcom/braintreepayments/api/c;->b(ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 161
    :cond_8
    const-string v0, "Vaulting the payment failed."

    const-string v1, "Unable to retrieve a FullWallet."

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    if-eqz p3, :cond_9

    const-string v0, "com.google.android.gms.wallet.EXTRA_ERROR_CODE"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 165
    const-string v0, "Full Wallet Error Code: "

    const-string v1, "com.google.android.gms.wallet.EXTRA_ERROR_CODE"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_9
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/b/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_UNKNOWN:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-direct {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/b/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/f;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    goto/16 :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x83e
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 3

    .prologue
    .line 247
    const-string v0, "Unable to retrieve the client token."

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Token type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPaymentTokenEnum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/f;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->f:Lcom/grubhub/AppBaseLibrary/android/utils/d/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/d/a;->b()V

    .line 252
    return-void
.end method

.method protected a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentResourceCreatedDataModel;)V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->ANDROID_PAY:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    invoke-interface {v0, p1, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/f;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentResourceCreatedDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    .line 259
    :cond_0
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->g()V

    .line 260
    return-void
.end method

.method protected a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentTokenModel;)V
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->b:Landroid/app/Activity;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentTokenModel;->getToken()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/utils/g/a$1;

    invoke-direct {v2, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/a$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/g/a;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentTokenModel;)V

    invoke-static {v0, v1, v2}, Lcom/braintreepayments/api/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/braintreepayments/api/d;)V

    .line 243
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->i:Z

    .line 74
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->k:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->l:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->d()V

    .line 77
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->h:Z

    .line 292
    const-string v0, "Vaulting the payment failed."

    const-string v1, "Connection to Google API suspended."

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/b/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_UNKNOWN:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-direct {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/b/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/f;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 296
    :cond_0
    return-void
.end method

.method protected b(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 2

    .prologue
    .line 264
    const-string v0, "Vaulting the payment failed."

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/f;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 268
    :cond_0
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->g()V

    .line 269
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->j:Z

    .line 87
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->k:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->l:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->d()V

    .line 90
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->h:Z

    .line 302
    const-string v0, "Vaulting the payment failed."

    const-string v1, "Connection to Google API failed."

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/b/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_UNKNOWN:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-direct {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/b/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/g/f;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 306
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/d/a;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->b:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/grubhub/AppBaseLibrary/android/utils/d/a;-><init>(Landroid/app/Activity;Lcom/grubhub/AppBaseLibrary/android/utils/d/b;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->f:Lcom/grubhub/AppBaseLibrary/android/utils/d/a;

    .line 63
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->f:Lcom/grubhub/AppBaseLibrary/android/utils/d/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/d/a;->a()V

    .line 64
    return-void
.end method

.method protected e()V
    .locals 2

    .prologue
    .line 273
    const-string v0, "User canceled Android Pay/Google Wallet processing."

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->c:Lcom/grubhub/AppBaseLibrary/android/utils/g/f;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/f;->i()V

    .line 277
    :cond_0
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->g()V

    .line 278
    return-void
.end method
