.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2TokenizeCreditCardDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSITokenizeCreditCardDataModel;


# instance fields
.field private client_token:Ljava/lang/String;

.field private nonce:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClientToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2TokenizeCreditCardDTO;->client_token:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2TokenizeCreditCardDTO;->nonce:Ljava/lang/String;

    return-object v0
.end method
