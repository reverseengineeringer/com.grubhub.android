.class Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/g;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/a$1;)V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 239
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 241
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getCuisineList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 242
    const-string v1, "savedCuisineArray"

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getCuisineList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 244
    :cond_0
    return-object v0
.end method
