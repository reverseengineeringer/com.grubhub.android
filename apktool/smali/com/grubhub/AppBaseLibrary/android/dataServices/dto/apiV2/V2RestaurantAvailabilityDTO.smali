.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel;


# instance fields
.field private availability_summaries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO$V2RestaurantAvailabilitySummary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public getSummary(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel$GHSIRestaurantAvailabilitySummary;
    .locals 3

    .prologue
    .line 20
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO;->availability_summaries:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 21
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO;->availability_summaries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO$V2RestaurantAvailabilitySummary;

    .line 22
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantAvailabilityDTO$V2RestaurantAvailabilitySummary;->getRestaurantId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
