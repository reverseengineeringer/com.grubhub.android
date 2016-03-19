.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2PaymentTokenModelDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentTokenModel;


# instance fields
.field private client_token:Ljava/lang/String;

.field private payment_id:Ljava/lang/String;

.field private tokenizer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPaymentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2PaymentTokenModelDTO;->payment_id:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2PaymentTokenModelDTO;->client_token:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenizer()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentTokenModel$PaymentTokenizer;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2PaymentTokenModelDTO;->tokenizer:Ljava/lang/String;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentTokenModel$PaymentTokenizer;->fromString(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentTokenModel$PaymentTokenizer;

    move-result-object v0

    return-object v0
.end method
