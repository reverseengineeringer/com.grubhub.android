.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrderItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;


# instance fields
.field private combinableWithCoupons:Z

.field private id:Ljava/lang/String;

.field private instructions:Ljava/lang/String;

.field private itemCoupon:Z

.field private itemId:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private quantity:Ljava/lang/Integer;

.field private selections:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSSelections;

.field final synthetic this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrderItem;->this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDinerTotal()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDinerTotalInCents()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrderItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrderItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getItemPrice()Ljava/lang/Float;
    .locals 4

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrderItem;->price:Ljava/lang/String;

    const-string v2, ","

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 269
    :goto_0
    return-object v0

    .line 266
    :catch_0
    move-exception v1

    .line 267
    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getItemQuantity()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrderItem;->quantity:Ljava/lang/Integer;

    return-object v0
.end method

.method public getItemSpecialInstructions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrderItem;->instructions:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrderItem;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getRestaurantId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRestaurantName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedItemOptions()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIItemOptionSelection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 280
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSOrderItem;->selections:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSSelections;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSSelections;->selection:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSSelections;->access$500(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO$GHSSelections;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 281
    return-object v0
.end method
