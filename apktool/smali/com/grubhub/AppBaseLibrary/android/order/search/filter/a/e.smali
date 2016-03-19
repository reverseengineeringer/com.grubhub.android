.class Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/g;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/a$1;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 101
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 104
    const-string v0, "savedSortByBundle"

    const-class v2, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;

    invoke-static {v2, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/a;->a(Ljava/lang/Class;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 105
    const-string v0, "savedOptionsFilterBundle"

    const-class v2, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;

    invoke-static {v2, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/a;->a(Ljava/lang/Class;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 106
    const-string v0, "savedPriceFilterBundle"

    const-class v2, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;

    invoke-static {v2, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/a;->a(Ljava/lang/Class;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 107
    const-string v0, "savedRatingsFilterBundle"

    const-class v2, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;

    invoke-static {v2, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/a;->a(Ljava/lang/Class;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 108
    const-string v0, "savedDistanceFilterBundle"

    const-class v2, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;

    invoke-static {v2, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/a;->a(Ljava/lang/Class;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 109
    const-string v0, "savedFutureOrderBundle"

    const-class v2, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;

    invoke-static {v2, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/a;->a(Ljava/lang/Class;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 112
    const-string v2, "savedOrderIsPickup"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getOrderType()Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v0

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/order/g;->PICKUP:Lcom/grubhub/AppBaseLibrary/android/order/g;

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 114
    return-object v1

    .line 112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
