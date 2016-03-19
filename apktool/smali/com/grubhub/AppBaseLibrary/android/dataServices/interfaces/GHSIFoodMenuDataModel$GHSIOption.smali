.class public interface abstract Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getOptionDescription()Ljava/lang/String;
.end method

.method public abstract getOptionId()Ljava/lang/String;
.end method

.method public abstract getOptionPrice()Ljava/lang/Float;
.end method

.method public abstract getSubOptionChoiceGroupById(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;
.end method

.method public abstract getSubOptionChoiceGroups()Ljava/util/ArrayList;
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

.method public abstract getVariationalPrice(Ljava/lang/String;)Ljava/lang/Float;
.end method

.method public abstract hasPriceDependency()Z
.end method
