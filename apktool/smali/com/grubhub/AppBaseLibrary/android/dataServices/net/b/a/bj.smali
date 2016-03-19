.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bj;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bj;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bi;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected j:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

.field protected k:Ljava/lang/Integer;

.field protected l:Ljava/lang/Integer;

.field protected m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 362
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;-><init>(Landroid/content/Context;)V

    .line 363
    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bj;
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bj;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    .line 367
    return-object p0
.end method

.method protected synthetic a()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/c;
    .locals 1

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bj;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bj;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bi;
    .locals 2

    .prologue
    .line 392
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bi;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bi;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bj;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bi$1;)V

    return-object v0
.end method

.method public b(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bj;
    .locals 1

    .prologue
    .line 376
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bj;->k:Ljava/lang/Integer;

    .line 377
    return-object p0
.end method

.method protected c()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bj;
    .locals 0

    .prologue
    .line 397
    return-object p0
.end method

.method public c(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bj;
    .locals 1

    .prologue
    .line 381
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bj;->l:Ljava/lang/Integer;

    .line 382
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bj;
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/b/a/bj;->m:Ljava/lang/String;

    .line 387
    return-object p0
.end method
