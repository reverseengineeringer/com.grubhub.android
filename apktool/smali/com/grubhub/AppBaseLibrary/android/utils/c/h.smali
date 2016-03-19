.class public Lcom/grubhub/AppBaseLibrary/android/utils/c/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/grubhub/AppBaseLibrary/android/utils/c/h;


# instance fields
.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    return-void
.end method

.method public static a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;
    .locals 1

    .prologue
    .line 342
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->b:Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;-><init>()V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->b:Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    .line 345
    :cond_0
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->b:Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    return-object v0
.end method

.method private a(Lcom/google/android/gms/tagmanager/h;Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/h;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 660
    const-string v0, "PlatformType"

    const-string v1, "Android App"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    const-string v0, "Brand"

    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0803a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    const-string v0, "Timestamp"

    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    const-string v0, "Timezone"

    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/b;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    const/4 v1, 0x0

    .line 669
    :try_start_0
    const-string v0, "SessionSequence"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tagmanager/h;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 670
    :try_start_1
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->b(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 674
    :goto_0
    const-string v1, "SessionSequence"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    return-object p2

    .line 671
    :catch_0
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    .line 672
    :goto_1
    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 671
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 857
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getCoupons()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 866
    :goto_0
    return v0

    .line 861
    :cond_1
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getCoupons()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponListDataModel$GHSICouponDataModel;

    .line 862
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponListDataModel$GHSICouponDataModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponListDataModel$GHSICouponDataModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 863
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 866
    goto :goto_0
.end method

.method private c(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V
    .locals 2

    .prologue
    .line 777
    if-nez p1, :cond_1

    .line 809
    :cond_0
    :goto_0
    return-void

    .line 781
    :cond_1
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;->b()Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    move-result-object v0

    .line 782
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->RESTAURANT_DETAILS:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->RESTAURANT_SEARCH:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->ORDER_PROCESSING:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->THANK_YOU:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    if-ne v0, v1, :cond_4

    .line 788
    :cond_2
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    .line 789
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->z()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v1

    .line 790
    if-eqz v1, :cond_3

    .line 791
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/h$3;

    invoke-direct {v0, p0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/h;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Ljava/util/Map;)V

    goto :goto_0

    .line 796
    :cond_3
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->X()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    move-result-object v0

    .line 797
    if-eqz v0, :cond_0

    .line 798
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/h$4;

    invoke-direct {v1, p0, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/h;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V

    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Ljava/util/Map;)V

    goto :goto_0

    .line 805
    :cond_4
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/h$5;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/h;)V

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Ljava/util/Map;)V

    goto :goto_0
.end method

.method private d(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 819
    if-nez p1, :cond_0

    .line 847
    :goto_0
    return-void

    .line 823
    :cond_0
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;->b()Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    move-result-object v1

    .line 824
    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->ORDER_PROCESSING:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->RESTAURANT_DETAILS:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    if-ne v1, v2, :cond_4

    .line 827
    :cond_1
    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->ORDER_PROCESSING:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    if-ne v1, v2, :cond_3

    .line 829
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->U()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v1

    .line 830
    if-eqz v1, :cond_2

    .line 831
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v0

    .line 838
    :cond_2
    :goto_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 839
    const-string v2, "RestaurantID"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Ljava/util/Map;)V

    goto :goto_0

    .line 835
    :cond_3
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 843
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 844
    const-string v2, "RestaurantID"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Ljava/util/Map;)V

    goto :goto_0
.end method

.method private k()Ljava/lang/String;
    .locals 6

    .prologue
    .line 695
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    .line 696
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->N()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v1

    .line 697
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->n()I

    move-result v2

    .line 699
    if-eqz v1, :cond_0

    .line 700
    const-string v1, "diner_new"

    .line 701
    if-lez v2, :cond_1

    .line 702
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->ab()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;

    move-result-object v0

    .line 703
    if-eqz v0, :cond_1

    .line 704
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;->getPastOrders()Ljava/util/ArrayList;

    move-result-object v0

    .line 705
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 706
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;

    .line 707
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;->getTimePlacedMillis()J

    move-result-wide v2

    .line 708
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 709
    sub-long v2, v4, v2

    const-wide/32 v4, 0x1b7740

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 710
    const-string v0, "diner_returning"

    .line 719
    :goto_0
    return-object v0

    .line 716
    :cond_0
    const-string v0, "diner_unknown"

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 349
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/n;->a(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/n;

    move-result-object v0

    .line 353
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/n;->a(Z)V

    .line 356
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0803a3

    .line 357
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070001

    .line 356
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tagmanager/n;->a(Ljava/lang/String;I)Lcom/google/android/gms/common/api/s;

    move-result-object v0

    .line 364
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/h$1;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/h;)V

    const-wide/16 v2, 0x7d0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/api/s;->a(Lcom/google/android/gms/common/api/w;JLjava/util/concurrent/TimeUnit;)V

    .line 377
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V
    .locals 1

    .prologue
    .line 642
    if-nez p1, :cond_0

    .line 649
    :goto_0
    return-void

    .line 646
    :cond_0
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/h$2;

    invoke-direct {v0, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/h;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 606
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->hasCoupons()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 608
    :goto_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v3

    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->U()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v3

    .line 609
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v4

    invoke-interface {v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->u()Ljava/lang/String;

    move-result-object v4

    .line 610
    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    .line 612
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 613
    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 614
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 615
    invoke-static {v4}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 616
    invoke-direct {p0, p1, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 618
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(ZZ)V

    .line 619
    return-void

    :cond_0
    move v0, v2

    .line 606
    goto :goto_0

    :cond_1
    move v1, v2

    .line 616
    goto :goto_1
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 383
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 384
    const-string v1, "screenName"

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    const-string v1, "PageGroup"

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string v1, "Page SubGroup"

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;->b()Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string v1, "PaymentMethod"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    const-string v1, "Event Non-Interaction Hit"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->d(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 391
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->c(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 392
    const-string v1, "openScreen"

    invoke-virtual {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 393
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V
    .locals 3

    .prologue
    .line 418
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 419
    const-string v1, "Event Category"

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    const-string v1, "Event Action"

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    const-string v1, "Event Label"

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    const-string v1, "Event Non-Interaction Hit"

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    const-string v1, "PaymentMethod"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    const-string v1, "event"

    invoke-virtual {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 426
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/utils/c/d;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 449
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 450
    const-string v1, "FeedbackID"

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    const-string v1, "FeedbackCategory"

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    const-string v1, "FeedbackSearchAddress"

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const-string v1, "Event Non-Interaction Hit"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    const-string v1, "PaymentMethod"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    const-string v1, "feedback"

    invoke-virtual {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 457
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/utils/c/i;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 487
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 488
    const-string v1, "transactionId"

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    const-string v1, "transactionAffiliation"

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/i;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    const-string v1, "transactionTotal"

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    const-string v1, "transactionTax"

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/i;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    const-string v1, "transactionShipping"

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/i;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    const-string v1, "transactionCurrency"

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/i;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    const-string v1, "transactionProducts"

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/i;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    const-string v1, "PaymentMethod"

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/i;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const-string v1, "futureorderflag"

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/i;->i()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    const-string v1, "transaction"

    invoke-virtual {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 499
    const-string v1, "transactionId"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    const-string v1, "transactionAffiliation"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    const-string v1, "transactionTotal"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    const-string v1, "transactionTax"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    const-string v1, "transactionShipping"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    const-string v1, "transactionCurrency"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    const-string v1, "transactionProducts"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    const-string v1, "PaymentMethod"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    const-string v1, "futureorderflag"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Ljava/util/Map;)V

    .line 509
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 570
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 571
    const-string v1, "AppsFlyerDeviceID"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Ljava/util/Map;)V

    .line 573
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->c:Z

    .line 574
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 733
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 735
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p2}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 736
    const-string v1, "utm_medium"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    const-string v1, "utm_source"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    invoke-static {p3}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 739
    const-string v1, "utm_campaign"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    :cond_0
    invoke-static {p4}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 742
    const-string v1, "utm_content"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    :cond_1
    invoke-static {p5}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 745
    const-string v1, "utm_term"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    :cond_2
    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Ljava/util/Map;)V

    .line 750
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 463
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 464
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/n;->a(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/n;->a()Lcom/google/android/gms/tagmanager/h;

    move-result-object v1

    .line 465
    invoke-direct {p0, v1, p2}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/google/android/gms/tagmanager/h;Ljava/util/Map;)Ljava/util/Map;

    .line 466
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/tagmanager/h;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 468
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/n;->a(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/n;

    move-result-object v0

    .line 469
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/n;->b()V

    .line 471
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->j()V

    .line 472
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 478
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 479
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/n;->a(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/n;->a()Lcom/google/android/gms/tagmanager/h;

    move-result-object v0

    .line 480
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/h;->a(Ljava/util/Map;)V

    .line 481
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 876
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 877
    const-string v2, "manageddeliveryorder"

    if-eqz p1, :cond_0

    const-string v0, "real-time order tracking"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Ljava/util/Map;)V

    .line 879
    return-void

    .line 877
    :cond_0
    const-string v0, "basic order tracking"

    goto :goto_0
.end method

.method public a(ZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 587
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 588
    if-eqz p1, :cond_1

    .line 589
    const-string v1, "LoggedInStatus"

    const-string v2, "Logged In"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    if-eqz p2, :cond_0

    .line 591
    const-string v1, "UserID"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Ljava/util/Map;)V

    .line 597
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->d:Z

    .line 598
    return-void

    .line 594
    :cond_1
    const-string v1, "LoggedInStatus"

    const-string v2, "Not Logged In"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(ZZ)V
    .locals 3

    .prologue
    .line 629
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 630
    const-string v2, "restaurant coupons_available"

    if-eqz p1, :cond_0

    const-string v0, "YES"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    const-string v2, "restaurant coupons_applied"

    if-eqz p2, :cond_1

    const-string v0, "YES"

    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Ljava/util/Map;)V

    .line 633
    return-void

    .line 630
    :cond_0
    const-string v0, "NO"

    goto :goto_0

    .line 631
    :cond_1
    const-string v0, "NO"

    goto :goto_1
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 515
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 516
    const-string v1, "New_Or_RepeatOrder"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    const-string v1, "RestaurantID"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    const-string v1, "futureorderflag"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Ljava/util/Map;)V

    .line 520
    return-void
.end method

.method public b(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V
    .locals 3

    .prologue
    .line 402
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 403
    const-string v1, "screenName"

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    const-string v1, "PageGroup"

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    const-string v1, "Page SubGroup"

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;->b()Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    const-string v1, "PaymentMethod"

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    const-string v1, "Event Non-Interaction Hit"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->d(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 410
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->c(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 411
    const-string v1, "openScreen"

    invoke-virtual {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 412
    return-void
.end method

.method public b(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V
    .locals 3

    .prologue
    .line 435
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 436
    const-string v1, "Event Category"

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    const-string v1, "Event Action"

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const-string v1, "Event Label"

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    const-string v1, "PaymentMethod"

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const-string v1, "Event Non-Interaction Hit"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const-string v1, "event"

    invoke-virtual {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 443
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 526
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 527
    const-string v1, "New_Or_RepeatOrder"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    const-string v1, "RestaurantID"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    const-string v1, "UserID"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    const-string v1, "futureorderflag"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Ljava/util/Map;)V

    .line 532
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 538
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 539
    const-string v1, "FeedbackID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Ljava/util/Map;)V

    .line 541
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 547
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 548
    const-string v1, "restaurant coupons_available"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    const-string v1, "restaurant coupons_applied"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Ljava/util/Map;)V

    .line 551
    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    .line 554
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 555
    const-string v1, "manageddeliveryorder"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Ljava/util/Map;)V

    .line 557
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 563
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->c:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 580
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->d:Z

    return v0
.end method

.method public i()V
    .locals 3

    .prologue
    .line 682
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 683
    const-string v1, "DinerType"

    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->k()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Ljava/util/Map;)V

    .line 685
    return-void
.end method

.method public j()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 759
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 760
    const-string v1, "utm_campaign"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    const-string v1, "utm_content"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    const-string v1, "utm_medium"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    const-string v1, "utm_source"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    const-string v1, "utm_term"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Ljava/util/Map;)V

    .line 766
    return-void
.end method
