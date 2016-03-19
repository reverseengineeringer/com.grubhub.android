.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSTipModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private isCash:Z

.field private selectedTip:Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

.field private tipAmount:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIsCash()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSTipModel;->isCash:Z

    return v0
.end method

.method public getSelectedTip()Lcom/grubhub/AppBaseLibrary/android/order/cart/n;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSTipModel;->selectedTip:Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

    return-object v0
.end method

.method public getTipAmount()F
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSTipModel;->tipAmount:F

    return v0
.end method

.method public setIsCash(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSTipModel;->isCash:Z

    .line 28
    return-void
.end method

.method public setSelectedTip(Lcom/grubhub/AppBaseLibrary/android/order/cart/n;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSTipModel;->selectedTip:Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

    .line 36
    return-void
.end method

.method public setTipAmount(F)V
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSTipModel;->tipAmount:F

    .line 20
    return-void
.end method
