.class public interface abstract Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeletedPaymentModel;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getMessage()Ljava/lang/String;
.end method

.method public abstract getStatus()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeletedPaymentModel$Status;
.end method

.method public abstract getValidationErrors()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeletedPaymentModel$GHSIValidationError;",
            ">;"
        }
    .end annotation
.end method
