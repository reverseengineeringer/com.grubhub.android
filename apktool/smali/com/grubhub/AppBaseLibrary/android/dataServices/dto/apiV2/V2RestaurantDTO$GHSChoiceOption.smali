.class Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSChoiceOption;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;


# instance fields
.field private choice_category_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSChoiceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private price:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;

.field private price_changes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1003
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOptionDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSChoiceOption;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSChoiceOption;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionPrice()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSChoiceOption;->price:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;

    if-eqz v0, :cond_0

    .line 1018
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSChoiceOption;->price:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;->getAmount()Ljava/lang/Float;

    move-result-object v0

    .line 1020
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public getSubOptionChoiceGroupById(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1055
    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSChoiceOption;->choice_category_list:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSChoiceOption;->choice_category_list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1056
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSChoiceOption;->choice_category_list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;

    .line 1057
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getChoiceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1063
    :goto_2
    return-object v0

    :cond_1
    move v0, v2

    .line 1055
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 1063
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public getSubOptionChoiceGroups()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1045
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1046
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSChoiceOption;->choice_category_list:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSChoiceOption;->choice_category_list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1047
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSChoiceOption;->choice_category_list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1050
    :cond_0
    return-object v0
.end method

.method public getVariationalPrice(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSChoiceOption;->price_changes:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSChoiceOption;->price_changes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSChoiceOption;->price_changes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1037
    :cond_0
    const/4 v0, 0x0

    .line 1039
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSChoiceOption;->price_changes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAmount;->getAmount()Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public hasPriceDependency()Z
    .locals 1

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSChoiceOption;->price_changes:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSChoiceOption;->price_changes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
