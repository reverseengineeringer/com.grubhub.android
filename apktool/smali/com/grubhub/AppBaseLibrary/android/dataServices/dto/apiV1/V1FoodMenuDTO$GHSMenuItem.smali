.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;


# instance fields
.field private availability:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSAvailability;

.field private choices:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHAvailableChoices;

.field private combinableWithCoupons:Ljava/lang/Boolean;

.field private description:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private itemCoupon:Ljava/lang/Boolean;

.field private name:Ljava/lang/String;

.field private orderMinimum:Ljava/lang/Float;

.field private price:Ljava/lang/Float;

.field private priceMinimum:Ljava/lang/Float;

.field private tags:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHTags;

.field final synthetic this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuItem;->this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1300(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuItem;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuItem;->hasTag(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuItem;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSAvailability;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuItem;->availability:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSAvailability;

    return-object v0
.end method

.method private hasTag(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuItem;->tags:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHTags;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHTags;->tag:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHTags;->access$600(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHTags;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 441
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    const/4 v0, 0x1

    .line 445
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getItemTags()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 310
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuItem;->tags:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHTags;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuItem;->tags:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHTags;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHTags;->tag:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHTags;->access$600(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHTags;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuItem;->tags:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHTags;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHTags;->tag:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHTags;->access$600(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHTags;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 313
    :cond_0
    return-object v0
.end method

.method public getMenuItemChoiceGroupById(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMenuItemChoiceGroupOption(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;
    .locals 5

    .prologue
    .line 355
    const/4 v1, 0x0

    .line 357
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuItem;->choices:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHAvailableChoices;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuItem;->choices:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHAvailableChoices;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHAvailableChoices;->choiceRef:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHAvailableChoices;->access$700(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHAvailableChoices;)Ljava/util/ArrayList;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHChoiceRef;

    .line 361
    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHChoiceRef;->id:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHChoiceRef;->access$900(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHChoiceRef;)Ljava/lang/String;

    move-result-object v0

    .line 362
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuItem;->this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;

    const-string v4, ""

    invoke-virtual {v3, v4, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;->getMenuItemChoiceGroup(Ljava/lang/String;Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;

    move-result-object v0

    .line 365
    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getOptionById(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_1
    move-object v1, v0

    .line 368
    goto :goto_0

    .line 372
    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public getMenuItemChoiceGroups()Ljava/util/ArrayList;
    .locals 5
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
    .line 342
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 343
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuItem;->choices:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHAvailableChoices;

    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHAvailableChoices;->choiceRef:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHAvailableChoices;->access$700(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHAvailableChoices;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHChoiceRef;

    .line 344
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuItem;->this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;

    const-string v4, ""

    # invokes: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHChoiceRef;->getChoiceRefId()Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHChoiceRef;->access$800(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHChoiceRef;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;->getMenuItemChoiceGroup(Ljava/lang/String;Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;

    move-result-object v0

    .line 345
    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 350
    :cond_1
    return-object v1
.end method

.method public getMenuItemDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuItemName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuItemPrice()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuItem;->price:Ljava/lang/Float;

    return-object v0
.end method

.method public getOrderItemMinimum()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuItem;->orderMinimum:Ljava/lang/Float;

    return-object v0
.end method

.method public hasItemCoupon()Z
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuItem;->itemCoupon:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasRequiredChoicesWithExtraCharges()Z
    .locals 5

    .prologue
    .line 392
    const/4 v1, 0x0

    .line 393
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuItem;->getMenuItemChoiceGroups()Ljava/util/ArrayList;

    move-result-object v0

    .line 394
    if-eqz v0, :cond_2

    .line 396
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;

    .line 397
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getMinimum()I

    move-result v3

    if-lez v3, :cond_0

    .line 398
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getOptions()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 399
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getOptions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 400
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getOptions()Ljava/util/ArrayList;

    move-result-object v0

    .line 401
    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;

    .line 403
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;->getOptionPrice()Ljava/lang/Float;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;->getOptionPrice()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    .line 404
    const/4 v0, 0x1

    .line 413
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public isCombinableWithCoupons()Z
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuItem;->combinableWithCoupons:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isMenuItemAvailableNow()Z
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x1

    return v0
.end method

.method public isPopular()Z
    .locals 1

    .prologue
    .line 304
    const-string v0, "POPULAR"

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSMenuItem;->hasTag(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
