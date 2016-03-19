.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSChoice;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;


# instance fields
.field private id:Ljava/lang/String;

.field private max:Ljava/lang/Integer;

.field private min:Ljava/lang/Integer;

.field private name:Ljava/lang/String;

.field private options:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSOptions;

.field private parent:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;

.field final synthetic this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSChoice;->this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSChoice;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSChoice;->id:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getChoiceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSChoice;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getChoiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSChoice;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getItemVariationId()I
    .locals 1

    .prologue
    .line 494
    const/4 v0, 0x0

    return v0
.end method

.method public getMaximum()I
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSChoice;->max:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSChoice;->options:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSChoice;->options:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSOptions;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSOptions;->option:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSChoice;->options:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSOptions;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSOptions;->option:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 484
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSChoice;->max:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSChoice;->max:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x63

    goto :goto_0
.end method

.method public getMinimum()I
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSChoice;->min:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSChoice;->min:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOptionById(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSOption;
    .locals 4

    .prologue
    .line 505
    const/4 v1, 0x0

    .line 506
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSChoice;->options:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSChoice;->options:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSOptions;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSOptions;->option:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSChoice;->options:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSOptions;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSOptions;->option:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSOption;

    .line 508
    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSOption;->id:Ljava/lang/String;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSOption;->access$1000(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSOption;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 514
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public bridge synthetic getOptionById(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;
    .locals 1

    .prologue
    .line 457
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSChoice;->getOptionById(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSOption;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 521
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSChoice;->options:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSChoice;->options:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSOptions;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSOptions;->option:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 522
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSChoice;->options:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSOptions;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSOptions;->option:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 527
    :goto_0
    return-object v0

    .line 524
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getOptionsDescriptionsString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
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

    .prologue
    .line 532
    const-string v1, ""

    .line 534
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSChoice;->options:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSOptions;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSChoice;->options:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSOptions;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO$GHSOptions;->option:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 535
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;

    .line 536
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;->getOptionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 537
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 538
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 540
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;->getOptionDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 544
    :cond_2
    return-object v1
.end method

.method public getSequence()I
    .locals 1

    .prologue
    .line 499
    const/4 v0, 0x0

    return v0
.end method

.method public getVariationTarget()Z
    .locals 1

    .prologue
    .line 489
    const/4 v0, 0x0

    return v0
.end method
