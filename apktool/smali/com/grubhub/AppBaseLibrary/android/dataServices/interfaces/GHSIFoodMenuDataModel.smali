.class public interface abstract Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MAX_PAST_ORDERS:I = 0xa

.field public static final MAX_POPULAR_ITEMS:I = 0xa

.field public static final PAST_ORDERS_CATEGORY_NAME:Ljava/lang/String; = "Previously Ordered"

.field public static final PAST_ORDERS_DATE_RESTRICTION:I = -0x6

.field public static final POPULAR_CATEGORY_NAME:Ljava/lang/String; = "Most Popular"


# virtual methods
.method public abstract findAllMenuSectionNames()Ljava/util/ArrayList;
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

.method public abstract getExpirationTimeMillis()Ljava/lang/Double;
.end method

.method public abstract getGenerationDate()Ljava/util/Date;
.end method

.method public abstract getMenuItemById(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;
.end method

.method public abstract getMenuItemChoiceGroup(Ljava/lang/String;Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;
.end method

.method public abstract getMenuItemIdBySectionPosition(II)Ljava/lang/String;
.end method

.method public abstract getMenuItemOptionById(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;
.end method

.method public abstract getMenuSections()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuSection;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRestaurantId()Ljava/lang/String;
.end method

.method public abstract getRestaurantName()Ljava/lang/String;
.end method

.method public abstract isMenuItemPopular(II)Z
.end method

.method public abstract postGSONProcessData(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;
.end method
