.class Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/g;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/a$1;)V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 176
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 178
    if-eqz p1, :cond_0

    .line 179
    const-string v1, "savedFutureOrderTime"

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getWhenFor()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 180
    const-string v1, "savedSubOrder"

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getSubOrderType()Lcom/grubhub/AppBaseLibrary/android/order/l;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 182
    :cond_0
    return-object v0
.end method
