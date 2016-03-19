.class public interface abstract Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getChoiceId()Ljava/lang/String;
.end method

.method public abstract getChoiceName()Ljava/lang/String;
.end method

.method public abstract getItemVariationId()I
.end method

.method public abstract getMaximum()I
.end method

.method public abstract getMinimum()I
.end method

.method public abstract getOptionById(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;
.end method

.method public abstract getOptions()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOptionsDescriptionsString(Ljava/util/ArrayList;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getSequence()I
.end method

.method public abstract getVariationTarget()Z
.end method
