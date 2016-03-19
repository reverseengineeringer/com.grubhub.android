.class public interface abstract Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuSection;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getMenuSectionDescription()Ljava/lang/String;
.end method

.method public abstract getMenuSectionId()Ljava/lang/String;
.end method

.method public abstract getMenuSectionMenuItems()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMenuSectionName()Ljava/lang/String;
.end method

.method public abstract hasMenuItemsAvailableNow()Z
.end method

.method public abstract setMenuSectionMenuItems(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setMenuSectionName(Ljava/lang/String;)V
.end method
