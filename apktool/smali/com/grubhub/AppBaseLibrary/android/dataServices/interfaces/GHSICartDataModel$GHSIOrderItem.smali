.class public interface abstract Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getDinerTotal()Ljava/lang/Float;
.end method

.method public abstract getDinerTotalInCents()Ljava/lang/Integer;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getItemName()Ljava/lang/String;
.end method

.method public abstract getItemPrice()Ljava/lang/Float;
.end method

.method public abstract getItemQuantity()Ljava/lang/Integer;
.end method

.method public abstract getItemSpecialInstructions()Ljava/lang/String;
.end method

.method public abstract getOriginalItemId()Ljava/lang/String;
.end method

.method public abstract getRestaurantId()Ljava/lang/String;
.end method

.method public abstract getRestaurantName()Ljava/lang/String;
.end method

.method public abstract getSelectedItemOptions()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIItemOptionSelection;",
            ">;"
        }
    .end annotation
.end method
