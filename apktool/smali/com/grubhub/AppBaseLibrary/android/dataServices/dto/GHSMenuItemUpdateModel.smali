.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSMenuItemUpdateModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;


# instance fields
.field private applyFreeGrub:Z

.field private menuItemId:Ljava/lang/String;

.field private options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel$GHSICartOptions;",
            ">;"
        }
    .end annotation
.end field

.field private quantity:I

.field private restaurantId:Ljava/lang/String;

.field private specialInstructions:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public getApplyFreeGrub()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSMenuItemUpdateModel;->applyFreeGrub:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getMenuItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSMenuItemUpdateModel;->menuItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Ljava/util/List;
    .locals 1
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
    .line 105
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSMenuItemUpdateModel;->options:Ljava/util/List;

    return-object v0
.end method

.method public getQuantity()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSMenuItemUpdateModel;->quantity:I

    return v0
.end method

.method public getRestaurantId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSMenuItemUpdateModel;->restaurantId:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecialInstructions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSMenuItemUpdateModel;->specialInstructions:Ljava/lang/String;

    return-object v0
.end method

.method public setApplyFreeGrub(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSMenuItemUpdateModel;->applyFreeGrub:Z

    .line 81
    return-void
.end method

.method public setMenuItemId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSMenuItemUpdateModel;->menuItemId:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setOptions(Ljava/util/List;)V
    .locals 0
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
    .line 100
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSMenuItemUpdateModel;->options:Ljava/util/List;

    .line 101
    return-void
.end method

.method public setQuantity(I)V
    .locals 0

    .prologue
    .line 90
    iput p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSMenuItemUpdateModel;->quantity:I

    .line 91
    return-void
.end method

.method public setRestaurantId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSMenuItemUpdateModel;->restaurantId:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setSpecialInstructions(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSMenuItemUpdateModel;->specialInstructions:Ljava/lang/String;

    .line 61
    return-void
.end method
