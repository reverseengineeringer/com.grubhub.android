.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/b;


# instance fields
.field private address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

.field private addressString:Ljava/lang/String;

.field private cuisineList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;",
            ">;"
        }
    .end annotation
.end field

.field private currentSortOption:Ljava/lang/String;

.field private distanceRadius:F

.field private filterFragmentsModel:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterFragmentsModel;

.field private fsFilterDefaultRadius:F

.field private hasDefaultRadiusBeenSet:Z

.field private hasUserSelectedCuisines:Z

.field private hasUserSelectedRefinements:Z

.field private hasUserSelectedSort:Z

.field private orderType:Lcom/grubhub/AppBaseLibrary/android/order/g;

.field private priceModel:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;

.field private ratingsModel:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel;

.field private searchTerm:Ljava/lang/String;

.field private showPriceFilter:Z

.field private showRatingsFilter:Z

.field private subOrderType:Lcom/grubhub/AppBaseLibrary/android/order/l;

.field private whenFor:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->fsFilterDefaultRadius:F

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->hasDefaultRadiusBeenSet:Z

    .line 33
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterFragmentsModel;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterFragmentsModel;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->filterFragmentsModel:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterFragmentsModel;

    .line 34
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    .line 35
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->priceModel:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;

    .line 36
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->ratingsModel:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel;

    .line 49
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->resetFilterValues()V

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->searchTerm:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->orderType:Lcom/grubhub/AppBaseLibrary/android/order/g;

    if-nez v0, :cond_0

    .line 53
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/g;->DELIVERY:Lcom/grubhub/AppBaseLibrary/android/order/g;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->orderType:Lcom/grubhub/AppBaseLibrary/android/order/g;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->subOrderType:Lcom/grubhub/AppBaseLibrary/android/order/l;

    if-nez v0, :cond_1

    .line 57
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/l;->DEFAULT:Lcom/grubhub/AppBaseLibrary/android/order/l;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->subOrderType:Lcom/grubhub/AppBaseLibrary/android/order/l;

    .line 59
    :cond_1
    return-void
.end method

.method private setHasUserSelectedCuisines(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 334
    if-eqz p1, :cond_1

    .line 335
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;

    .line 336
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->hasUserSelectedCuisines:Z

    .line 342
    :cond_1
    return-void
.end method


# virtual methods
.method public accept(Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/c;)V
    .locals 0

    .prologue
    .line 400
    if-eqz p1, :cond_0

    .line 401
    invoke-interface {p1, p0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V

    .line 403
    :cond_0
    return-void
.end method

.method public getAddress()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    return-object v0
.end method

.method public getAddressString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->addressString:Ljava/lang/String;

    return-object v0
.end method

.method public getCuisineList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->cuisineList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCurrentSortOption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->currentSortOption:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultRadius()F
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->fsFilterDefaultRadius:F

    return v0
.end method

.method public getDistanceRadius()F
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->distanceRadius:F

    return v0
.end method

.method public getFilterFragmentsModel()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterFragmentsModel;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->filterFragmentsModel:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterFragmentsModel;

    return-object v0
.end method

.method public getHasUserSelectedCuisines()Z
    .locals 1

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->hasUserSelectedCuisines:Z

    return v0
.end method

.method public getHasUserSelectedRefinements()Z
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->hasUserSelectedRefinements:Z

    return v0
.end method

.method public getHasUserSelectedSort()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->hasUserSelectedSort:Z

    return v0
.end method

.method public getOrderType()Lcom/grubhub/AppBaseLibrary/android/order/g;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->orderType:Lcom/grubhub/AppBaseLibrary/android/order/g;

    return-object v0
.end method

.method public getPriceModel()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->priceModel:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;

    return-object v0
.end method

.method public getRatingsModel()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->ratingsModel:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel;

    return-object v0
.end method

.method public getSavedAddressId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->getId()Ljava/lang/String;

    move-result-object v0

    .line 177
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSavedAddressLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 190
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSearchTerm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->searchTerm:Ljava/lang/String;

    return-object v0
.end method

.method public getSubOrderType()Lcom/grubhub/AppBaseLibrary/android/order/l;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->subOrderType:Lcom/grubhub/AppBaseLibrary/android/order/l;

    return-object v0
.end method

.method public getWhenFor()J
    .locals 2

    .prologue
    .line 264
    iget-wide v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->whenFor:J

    return-wide v0
.end method

.method public isSavedAddress()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 125
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 128
    :cond_0
    return v0
.end method

.method public isShowPriceFilter()Z
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->showPriceFilter:Z

    return v0
.end method

.method public isShowRatingsFilter()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->showRatingsFilter:Z

    return v0
.end method

.method public resetFilterValues()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 368
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->orderType:Lcom/grubhub/AppBaseLibrary/android/order/g;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/g;->PICKUP:Lcom/grubhub/AppBaseLibrary/android/order/g;

    if-eq v0, v1, :cond_0

    .line 369
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/c/a/d;->DEFAULT:Lcom/grubhub/AppBaseLibrary/android/c/a/d;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/c/a/d;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->currentSortOption:Ljava/lang/String;

    .line 371
    :cond_0
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel;-><init>()V

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setRatingsModel(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel;)V

    .line 372
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;-><init>()V

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setPriceModel(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;)V

    .line 373
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterFragmentsModel;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterFragmentsModel;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->filterFragmentsModel:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterFragmentsModel;

    .line 374
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->fsFilterDefaultRadius:F

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setDistanceRadius(F)V

    .line 375
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/g;->DELIVERY:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setOrderType(Lcom/grubhub/AppBaseLibrary/android/order/g;)V

    .line 376
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/l;->DEFAULT:Lcom/grubhub/AppBaseLibrary/android/order/l;

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setSubOrderType(Lcom/grubhub/AppBaseLibrary/android/order/l;)V

    .line 377
    const-string v0, ""

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->searchTerm:Ljava/lang/String;

    .line 378
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->whenFor:J

    .line 380
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setCuisineList(Ljava/util/ArrayList;)V

    .line 381
    invoke-virtual {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setHasUserSelectedRefinements(Z)V

    .line 382
    invoke-virtual {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setHasUserSelectedCuisines(Z)V

    .line 383
    invoke-virtual {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setHasUserSelectedSort(Z)V

    .line 384
    return-void
.end method

.method public setAddress(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 86
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    .line 87
    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setId(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setLabel(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getAddress1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setAddress1(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getAddress2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setAddress2(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setCity(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setState(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getCrossStreet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setCrossStreet(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getZip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setZip(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setCountry(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setPhone(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getLatitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setLatitude(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getLongitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setLongitude(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getIsDefault()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setIsDefault(Z)V

    .line 101
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getIsSavedAddress()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setIsSavedAddress(Z)V

    .line 102
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getIsPrecise()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setIsPrecise(Z)V

    .line 103
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getPickupRadius()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setPickupRadius(Ljava/lang/Float;)V

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->hasDefaultRadiusBeenSet:Z

    .line 107
    :cond_0
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->addressString:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setAddressToNotSaved()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setId(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setLabel(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->address:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;->setIsSavedAddress(Z)V

    .line 117
    return-void
.end method

.method public setCuisineList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->cuisineList:Ljava/util/ArrayList;

    .line 248
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setHasUserSelectedCuisines(Ljava/util/List;)V

    .line 249
    return-void
.end method

.method public setCurrentSortOption(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->currentSortOption:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public declared-synchronized setDefaultRadius(F)V
    .locals 1

    .prologue
    .line 354
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->hasDefaultRadiusBeenSet:Z

    if-nez v0, :cond_0

    .line 355
    iput p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->fsFilterDefaultRadius:F

    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->hasDefaultRadiusBeenSet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    :cond_0
    monitor-exit p0

    return-void

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDistanceRadius(F)V
    .locals 0

    .prologue
    .line 227
    iput p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->distanceRadius:F

    .line 228
    return-void
.end method

.method public setFilterFragmentsModel(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterFragmentsModel;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->filterFragmentsModel:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterFragmentsModel;

    .line 301
    return-void
.end method

.method public setHasUserSelectedCuisines(Z)V
    .locals 0

    .prologue
    .line 316
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->hasUserSelectedCuisines:Z

    .line 317
    return-void
.end method

.method public setHasUserSelectedRefinements(Z)V
    .locals 0

    .prologue
    .line 308
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->hasUserSelectedRefinements:Z

    .line 309
    return-void
.end method

.method public setHasUserSelectedSort(Z)V
    .locals 0

    .prologue
    .line 324
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->hasUserSelectedSort:Z

    .line 325
    return-void
.end method

.method public setOrderType(Lcom/grubhub/AppBaseLibrary/android/order/g;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->orderType:Lcom/grubhub/AppBaseLibrary/android/order/g;

    .line 148
    return-void
.end method

.method public setPriceModel(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->priceModel:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;

    .line 273
    return-void
.end method

.method public setRatingsModel(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->ratingsModel:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel;

    .line 281
    return-void
.end method

.method public setRestaurantFilterData(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;)V
    .locals 1

    .prologue
    .line 393
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;->hasPriceFilterOption()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setShowPriceFilter(Z)V

    .line 394
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;->hasRatingsFilterOption()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setShowRatingsFilter(Z)V

    .line 395
    invoke-interface {p1, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;->updateFilterModel(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V

    .line 396
    return-void
.end method

.method public setSearchTerm(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->searchTerm:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setShowPriceFilter(Z)V
    .locals 0

    .prologue
    .line 284
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->showPriceFilter:Z

    .line 285
    return-void
.end method

.method public setShowRatingsFilter(Z)V
    .locals 0

    .prologue
    .line 292
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->showRatingsFilter:Z

    .line 293
    return-void
.end method

.method public setSubOrderType(Lcom/grubhub/AppBaseLibrary/android/order/l;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->subOrderType:Lcom/grubhub/AppBaseLibrary/android/order/l;

    .line 166
    return-void
.end method

.method public setWhenFor(J)V
    .locals 1

    .prologue
    .line 260
    iput-wide p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->whenFor:J

    .line 261
    return-void
.end method
