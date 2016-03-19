.class public interface abstract Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getItemTags()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMenuItemChoiceGroupById(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;
.end method

.method public abstract getMenuItemChoiceGroupOption(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;
.end method

.method public abstract getMenuItemChoiceGroups()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMenuItemDescription()Ljava/lang/String;
.end method

.method public abstract getMenuItemId()Ljava/lang/String;
.end method

.method public abstract getMenuItemName()Ljava/lang/String;
.end method

.method public abstract getMenuItemPrice()Ljava/lang/Float;
.end method

.method public abstract getOrderItemMinimum()Ljava/lang/Float;
.end method

.method public abstract hasItemCoupon()Z
.end method

.method public abstract hasRequiredChoicesWithExtraCharges()Z
.end method

.method public abstract isCombinableWithCoupons()Z
.end method

.method public abstract isMenuItemAvailableNow()Z
.end method

.method public abstract isPopular()Z
.end method
