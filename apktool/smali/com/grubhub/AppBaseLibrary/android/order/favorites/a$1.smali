.class Lcom/grubhub/AppBaseLibrary/android/order/favorites/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/favorites/a;->b(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel$GHSIRestaurantAvailabilitySummary;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/favorites/a;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/favorites/a;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/a$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/favorites/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel$GHSIRestaurantAvailabilitySummary;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel$GHSIRestaurantAvailabilitySummary;)I
    .locals 2

    .prologue
    .line 387
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel$GHSIRestaurantAvailabilitySummary;->getRestaurantName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel$GHSIRestaurantAvailabilitySummary;->getRestaurantName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 388
    const/4 v0, -0x1

    .line 395
    :goto_0
    return v0

    .line 389
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel$GHSIRestaurantAvailabilitySummary;->getRestaurantName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel$GHSIRestaurantAvailabilitySummary;->getRestaurantName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 390
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 391
    :cond_4
    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel$GHSIRestaurantAvailabilitySummary;->getRestaurantName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    if-eqz p2, :cond_5

    invoke-interface {p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel$GHSIRestaurantAvailabilitySummary;->getRestaurantName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 392
    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    .line 395
    :cond_6
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel$GHSIRestaurantAvailabilitySummary;->getRestaurantName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel$GHSIRestaurantAvailabilitySummary;->getRestaurantName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 384
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel$GHSIRestaurantAvailabilitySummary;

    check-cast p2, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel$GHSIRestaurantAvailabilitySummary;

    invoke-virtual {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/a$1;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel$GHSIRestaurantAvailabilitySummary;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel$GHSIRestaurantAvailabilitySummary;)I

    move-result v0

    return v0
.end method
