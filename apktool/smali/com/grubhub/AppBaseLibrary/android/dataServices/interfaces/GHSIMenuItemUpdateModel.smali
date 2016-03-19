.class public interface abstract Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getApplyFreeGrub()Ljava/lang/Boolean;
.end method

.method public abstract getMenuItemId()Ljava/lang/String;
.end method

.method public abstract getOptions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel$GHSICartOptions;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getQuantity()I
.end method

.method public abstract getRestaurantId()Ljava/lang/String;
.end method

.method public abstract getSpecialInstructions()Ljava/lang/String;
.end method

.method public abstract setApplyFreeGrub(Ljava/lang/Boolean;)V
.end method

.method public abstract setMenuItemId(Ljava/lang/String;)V
.end method

.method public abstract setOptions(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel$GHSICartOptions;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setQuantity(I)V
.end method

.method public abstract setRestaurantId(Ljava/lang/String;)V
.end method

.method public abstract setSpecialInstructions(Ljava/lang/String;)V
.end method
