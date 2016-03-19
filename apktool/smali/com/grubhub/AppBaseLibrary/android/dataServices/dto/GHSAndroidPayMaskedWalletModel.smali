.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAndroidPayMaskedWalletModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private email:Ljava/lang/String;

.field private googleTransactionId:Ljava/lang/String;

.field private merchantTransactionId:Ljava/lang/String;

.field private paymentDescriptions:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromMaskedWallet(Lcom/google/android/gms/wallet/MaskedWallet;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAndroidPayMaskedWalletModel;
    .locals 2

    .prologue
    .line 38
    if-nez p0, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 47
    :goto_0
    return-object v0

    .line 42
    :cond_0
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAndroidPayMaskedWalletModel;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAndroidPayMaskedWalletModel;-><init>()V

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/wallet/MaskedWallet;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAndroidPayMaskedWalletModel;->email:Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/wallet/MaskedWallet;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAndroidPayMaskedWalletModel;->googleTransactionId:Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/wallet/MaskedWallet;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAndroidPayMaskedWalletModel;->merchantTransactionId:Ljava/lang/String;

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/wallet/MaskedWallet;->d()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAndroidPayMaskedWalletModel;->paymentDescriptions:[Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAndroidPayMaskedWalletModel;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getGoogleTransactionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAndroidPayMaskedWalletModel;->googleTransactionId:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantTransactionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAndroidPayMaskedWalletModel;->merchantTransactionId:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentDescriptions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAndroidPayMaskedWalletModel;->paymentDescriptions:[Ljava/lang/String;

    return-object v0
.end method
