.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;",
        ">;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;"
    }
.end annotation


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Long;

.field private f:Z

.field private g:Z

.field private h:Lcom/grubhub/AppBaseLibrary/android/order/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/l;Ljava/lang/Long;ZLcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V
    .locals 11

    .prologue
    .line 26
    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/l;Ljava/lang/Long;ZZLcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/l;Ljava/lang/Long;ZZLcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p9, p10}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;-><init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    .line 44
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->b:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->c:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->d:Ljava/lang/String;

    .line 47
    iput-boolean p7, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->f:Z

    .line 48
    iput-object p5, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->h:Lcom/grubhub/AppBaseLibrary/android/order/l;

    .line 49
    iput-object p6, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->e:Ljava/lang/Long;

    .line 50
    iput-boolean p8, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->g:Z

    .line 51
    return-void
.end method

.method private a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;)Z
    .locals 1

    .prologue
    .line 60
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;->getGenerationDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->a()V

    .line 68
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v3

    .line 69
    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->T()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v4

    .line 70
    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->P()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;

    move-result-object v5

    .line 71
    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 72
    :goto_0
    if-eqz v5, :cond_1

    invoke-interface {v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v0

    .line 74
    :goto_1
    iget-boolean v6, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->f:Z

    if-nez v6, :cond_2

    if-eqz v2, :cond_2

    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->b:Ljava/lang/String;

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    invoke-direct {p0, v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 77
    invoke-virtual {p0, v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)V

    .line 105
    :goto_2
    return-void

    :cond_0
    move-object v2, v1

    .line 71
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 72
    goto :goto_1

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->d:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 81
    :cond_3
    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->z()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getAddress()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 83
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getAddress()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getLatitude()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->c:Ljava/lang/String;

    .line 85
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getLongitude()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->d:Ljava/lang/String;

    .line 90
    :cond_4
    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->e:Ljava/lang/Long;

    .line 91
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->h:Lcom/grubhub/AppBaseLibrary/android/order/l;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/order/l;->FUTURE:Lcom/grubhub/AppBaseLibrary/android/order/l;

    if-eq v0, v2, :cond_5

    move-object v5, v1

    .line 95
    :cond_5
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->h:Lcom/grubhub/AppBaseLibrary/android/order/l;

    .line 103
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->f()Ljava/lang/String;

    move-result-object v8

    move-object v6, p0

    move-object v7, p0

    .line 95
    invoke-virtual/range {v0 .. v8}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/l;Ljava/lang/Long;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)V
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->g:Z

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)V

    .line 115
    :cond_0
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->onResponse(Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)V

    return-void
.end method
