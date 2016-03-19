.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;",
        ">;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;"
    }
.end annotation


# instance fields
.field private b:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

.field private c:Z

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;IILjava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1, p8, p9}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;-><init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    .line 23
    const/16 v0, 0x1e

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;->d:I

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;->e:I

    .line 46
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    .line 47
    iput-boolean p3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;->c:Z

    .line 48
    iput-object p4, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;

    .line 49
    iput p5, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;->d:I

    .line 50
    iput p6, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;->e:I

    .line 51
    iput-object p7, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;->f:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 56
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->a()V

    .line 58
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;->e:I

    if-le v0, v1, :cond_0

    .line 60
    iput-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;->c:Z

    .line 61
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;

    if-nez v0, :cond_1

    .line 62
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/b/b;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_UNKNOWN:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-direct {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/b/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 77
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;->c:Z

    if-nez v0, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    .line 67
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->W()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;)V

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    iget v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;->d:I

    iget v3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;->e:I

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;->f()Ljava/lang/String;

    move-result-object v7

    move-object v5, p0

    move-object v6, p0

    invoke-virtual/range {v0 .. v7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;IILjava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;)V
    .locals 2

    .prologue
    .line 82
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;->e:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 83
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;->getRestaurants()Ljava/util/ArrayList;

    move-result-object v0

    .line 84
    :goto_0
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;->addToRestaurantList(Ljava/util/ArrayList;)V

    .line 85
    iget-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;)V

    .line 90
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->onResponse(Ljava/lang/Object;)V

    .line 91
    return-void

    .line 83
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;)V

    return-void
.end method
