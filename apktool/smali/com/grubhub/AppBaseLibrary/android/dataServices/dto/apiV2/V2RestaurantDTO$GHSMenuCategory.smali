.class Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSMenuCategory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuSection;


# instance fields
.field private id:Ljava/lang/String;

.field private menu_item_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$1;)V
    .locals 0

    .prologue
    .line 710
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSMenuCategory;-><init>()V

    return-void
.end method


# virtual methods
.method public getMenuSectionDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 727
    const-string v0, ""

    return-object v0
.end method

.method public getMenuSectionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSMenuCategory;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuSectionMenuItems()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 732
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 733
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSMenuCategory;->menu_item_list:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSMenuCategory;->menu_item_list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 734
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSMenuCategory;->menu_item_list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;

    .line 735
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;->isMenuItemAvailableNow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 736
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 741
    :cond_1
    return-object v1
.end method

.method public getMenuSectionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSMenuCategory;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hasMenuItemsAvailableNow()Z
    .locals 2

    .prologue
    .line 751
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSMenuCategory;->menu_item_list:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSMenuCategory;->menu_item_list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 752
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSMenuCategory;->menu_item_list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;

    .line 753
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;->isMenuItemAvailableNow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    const/4 v0, 0x1

    .line 759
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMenuSectionMenuItems(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 769
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSMenuCategory;->menu_item_list:Ljava/util/ArrayList;

    .line 771
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;

    .line 772
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSMenuCategory;->menu_item_list:Ljava/util/ArrayList;

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSMenuItem;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 774
    :cond_0
    return-void
.end method

.method public setMenuSectionName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 764
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO$GHSMenuCategory;->name:Ljava/lang/String;

    .line 765
    return-void
.end method
