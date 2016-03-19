.class public Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/a;->a:Ljava/util/HashMap;

    .line 67
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/a;->a:Ljava/util/HashMap;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/j;

    invoke-direct {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/j;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/a$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/a;->a:Ljava/util/HashMap;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSMoreFilterFragment;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/e;

    invoke-direct {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/e;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/a$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/a;->a:Ljava/util/HashMap;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSOptionsFilterFragment;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/f;

    invoke-direct {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/f;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/a$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/a;->a:Ljava/util/HashMap;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSPriceFilterFragment;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/h;

    invoke-direct {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/h;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/a$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/a;->a:Ljava/util/HashMap;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSRatingsFilterFragment;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/i;

    invoke-direct {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/i;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/a$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/a;->a:Ljava/util/HashMap;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSDistanceFilterFragment;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/c;

    invoke-direct {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/c;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/a$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/a;->a:Ljava/util/HashMap;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderFilterFragment;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/d;

    invoke-direct {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/d;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/a$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/a;->a:Ljava/util/HashMap;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/b;

    invoke-direct {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/a$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public static a(Ljava/lang/Class;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 88
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 91
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/g;

    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a/g;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method
