.class public interface abstract Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;


# virtual methods
.method public abstract getAvailablePaymentTypes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBalanceInCents()Ljava/lang/Integer;
.end method

.method public abstract getBalanceInDollars()Ljava/lang/Float;
.end method

.method public abstract getBillState()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel$BillState;
.end method

.method public abstract getCheckoutToken()Ljava/lang/String;
.end method

.method public abstract getValidationErrors()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel$GHSIValidationError;",
            ">;"
        }
    .end annotation
.end method
