.class Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/g;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/a$1;)V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 192
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 194
    if-eqz p1, :cond_0

    .line 195
    const-string v1, "savedPriceFilterModel"

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getPriceModel()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPriceFilterModel;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 196
    const-string v1, "hasPriceFilter"

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->isShowPriceFilter()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 198
    :cond_0
    return-object v0
.end method
