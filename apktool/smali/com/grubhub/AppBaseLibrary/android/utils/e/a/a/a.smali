.class public Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/c;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;->a:Ljava/util/Map;

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, "-None-"

    :cond_1
    return-object p1
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;->a:Ljava/util/Map;

    .line 40
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;->a:Ljava/util/Map;

    .line 41
    return-object v0
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 1

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;->a:Ljava/util/Map;

    .line 76
    :goto_0
    return-void

    .line 70
    :cond_0
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$2;

    invoke-direct {v0, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;->a:Ljava/util/Map;

    goto :goto_0
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/c/c/a;)V
    .locals 1

    .prologue
    .line 158
    if-nez p1, :cond_0

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;->a:Ljava/util/Map;

    .line 167
    :goto_0
    return-void

    .line 163
    :cond_0
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$4;

    invoke-direct {v0, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;Lcom/grubhub/AppBaseLibrary/android/c/c/a;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;->a:Ljava/util/Map;

    goto :goto_0
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 80
    if-nez p1, :cond_0

    .line 81
    iput-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;->a:Ljava/util/Map;

    .line 154
    :goto_0
    return-void

    .line 86
    :cond_0
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$3;

    invoke-direct {v0, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;->a:Ljava/util/Map;

    .line 94
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getFilterFragmentsModel()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterFragmentsModel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getFilterFragmentsModel()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterFragmentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterFragmentsModel;->getSingleValueRefinements()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getFilterFragmentsModel()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterFragmentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterFragmentsModel;->getSingleValueRefinements()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 96
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFacetOption;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFacetOption;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFacetOption;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFacetOption;->isSelected()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 102
    :cond_1
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$5;->a:[I

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getPriceModel()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;->getMaxSelectedFilter()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceFilters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceFilters;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move-object v0, v2

    .line 119
    :goto_2
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;->a:Ljava/util/Map;

    const-string v3, "Price"

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$5;->b:[I

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getRatingsModel()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel;->getMinSelectedFilter()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsFilters;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    move-object v0, v2

    .line 140
    :goto_3
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;->a:Ljava/util/Map;

    const-string v3, "Rating"

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getCuisineList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getCuisineList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getCuisineList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;

    .line 146
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 147
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 104
    :pswitch_0
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;->ONE_ONLY:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 107
    :pswitch_1
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;->TWO_AND_BELOW:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 110
    :pswitch_2
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;->THREE_AND_BELOW:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 113
    :pswitch_3
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;->FOUR_AND_BELOW:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 116
    :pswitch_4
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;->FIVE_AND_BELOW:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel$PriceValues;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 125
    :pswitch_5
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsValues;->ONE_AND_ABOVE:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsValues;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsValues;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 128
    :pswitch_6
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsValues;->TWO_AND_ABOVE:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsValues;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsValues;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 131
    :pswitch_7
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsValues;->THREE_AND_ABOVE:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsValues;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsValues;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 134
    :pswitch_8
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsValues;->FOUR_AND_ABOVE:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsValues;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsValues;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 137
    :pswitch_9
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsValues;->FIVE_ONLY:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsValues;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSRatingsFilterModel$RatingsValues;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 150
    :cond_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;->a:Ljava/util/Map;

    const-string v2, "Cuisines"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 152
    :cond_4
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;->a:Ljava/util/Map;

    const-string v1, "Cuisines"

    invoke-direct {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 123
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;)V
    .locals 1

    .prologue
    .line 46
    if-nez p1, :cond_0

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;->a:Ljava/util/Map;

    .line 60
    :goto_0
    return-void

    .line 52
    :cond_0
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$1;

    invoke-direct {v0, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a/a;->a:Ljava/util/Map;

    goto :goto_0
.end method
