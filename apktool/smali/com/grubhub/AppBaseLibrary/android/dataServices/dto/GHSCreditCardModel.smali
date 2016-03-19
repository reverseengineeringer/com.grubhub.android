.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreditCardModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;


# instance fields
.field private create_date:Ljava/lang/Long;

.field private credit_card_last4:Ljava/lang/String;

.field private credit_card_type:Ljava/lang/String;

.field private diner_id:Ljava/lang/String;

.field private expiration_month:Ljava/lang/Integer;

.field private expiration_year:Ljava/lang/Integer;

.field private expired:Ljava/lang/Boolean;

.field private id:Ljava/lang/String;

.field private isSingleUse:Ljava/lang/Boolean;

.field private last_used_date:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreateDate()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreditCardModel;->create_date:Ljava/lang/Long;

    return-object v0
.end method

.method public getCreditCardList4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreditCardModel;->credit_card_last4:Ljava/lang/String;

    return-object v0
.end method

.method public getCreditCardType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreditCardModel;->credit_card_type:Ljava/lang/String;

    return-object v0
.end method

.method public getDinerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreditCardModel;->diner_id:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationMonth()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreditCardModel;->expiration_month:Ljava/lang/Integer;

    return-object v0
.end method

.method public getExpirationYear()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreditCardModel;->expiration_year:Ljava/lang/Integer;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreditCardModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUsedDate()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreditCardModel;->last_used_date:Ljava/lang/Long;

    return-object v0
.end method

.method public isExpired()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreditCardModel;->expired:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isSingleUse()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreditCardModel;->isSingleUse:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreditCardModel;->isSingleUse:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCreateDate(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreditCardModel;->create_date:Ljava/lang/Long;

    .line 55
    return-void
.end method

.method public setCreditCardList4(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreditCardModel;->credit_card_last4:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setCreditCardType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreditCardModel;->credit_card_type:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setDinerId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreditCardModel;->diner_id:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setExpirationMonth(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreditCardModel;->expiration_month:Ljava/lang/Integer;

    .line 73
    return-void
.end method

.method public setExpirationYear(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreditCardModel;->expiration_year:Ljava/lang/Integer;

    .line 64
    return-void
.end method

.method public setExpired(Z)V
    .locals 1

    .prologue
    .line 45
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreditCardModel;->expired:Ljava/lang/Boolean;

    .line 46
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreditCardModel;->id:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setIsSingleUse(Z)V
    .locals 1

    .prologue
    .line 108
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreditCardModel;->isSingleUse:Ljava/lang/Boolean;

    .line 109
    return-void
.end method

.method public setLastUsedDate(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreditCardModel;->last_used_date:Ljava/lang/Long;

    .line 100
    return-void
.end method
