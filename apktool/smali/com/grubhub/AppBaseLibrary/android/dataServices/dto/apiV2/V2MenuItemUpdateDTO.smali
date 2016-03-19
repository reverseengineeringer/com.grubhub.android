.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;


# instance fields
.field private apply_free_grub:Ljava/lang/Boolean;

.field private menu_item_id:Ljava/lang/String;

.field private options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO$CartLineOptionData;",
            ">;"
        }
    .end annotation
.end field

.field private quantity:I

.field private restaurant_id:Ljava/lang/String;

.field private special_instructions:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;)V
    .locals 4

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-eqz p1, :cond_1

    .line 34
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;->getMenuItemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;->setMenuItemId(Ljava/lang/String;)V

    .line 35
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;->getSpecialInstructions()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;->setSpecialInstructions(Ljava/lang/String;)V

    .line 36
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;->setRestaurantId(Ljava/lang/String;)V

    .line 37
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;->getApplyFreeGrub()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;->setApplyFreeGrub(Ljava/lang/Boolean;)V

    .line 38
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;->getQuantity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;->setQuantity(I)V

    .line 40
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;->getOptions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel$GHSICartOptions;

    .line 43
    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO$CartLineOptionData;

    invoke-direct {v3, p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO$CartLineOptionData;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel$GHSICartOptions;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;->setOptions(Ljava/util/List;)V

    .line 49
    :cond_1
    return-void
.end method


# virtual methods
.method public getApplyFreeGrub()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;->apply_free_grub:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMenuItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;->menu_item_id:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel$GHSICartOptions;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 166
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;->options:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;->options:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 169
    :cond_0
    return-object v0
.end method

.method public getQuantity()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;->quantity:I

    return v0
.end method

.method public getRestaurantId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;->restaurant_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecialInstructions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;->special_instructions:Ljava/lang/String;

    return-object v0
.end method

.method public setApplyFreeGrub(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;->apply_free_grub:Ljava/lang/Boolean;

    .line 129
    return-void
.end method

.method public setMenuItemId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;->menu_item_id:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setOptions(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel$GHSICartOptions;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 155
    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO$CartLineOptionData;

    invoke-direct {v3, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO$CartLineOptionData;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;)V

    .line 156
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel$GHSICartOptions;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel$GHSICartOptions;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO$CartLineOptionData;->setId(Ljava/lang/String;)V

    .line 157
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel$GHSICartOptions;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel$GHSICartOptions;->getSubOptionIds()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO$CartLineOptionData;->setSubOptionIds(Ljava/util/List;)V

    .line 158
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 160
    :cond_2
    iput-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;->options:Ljava/util/List;

    goto :goto_0
.end method

.method public setQuantity(I)V
    .locals 0

    .prologue
    .line 138
    iput p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;->quantity:I

    .line 139
    return-void
.end method

.method public setRestaurantId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;->restaurant_id:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setSpecialInstructions(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2MenuItemUpdateDTO;->special_instructions:Ljava/lang/String;

    .line 109
    return-void
.end method
