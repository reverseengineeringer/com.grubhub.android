.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;-><init>(Landroid/content/Context;)V

    .line 97
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;

    .line 92
    :cond_0
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic A()Z
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->A()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->B()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel;
    .locals 2

    .prologue
    .line 169
    const-string v0, "com.grubhub.persistence.reviews"

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2ReviewsDataModel;

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel;

    return-object v0
.end method

.method public bridge synthetic D()Lcom/grubhub/AppBaseLibrary/android/c/c/a;
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->D()Lcom/grubhub/AppBaseLibrary/android/c/c/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic E()Ljava/util/LinkedHashSet;
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->E()Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic F()Z
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->F()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic G()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->G()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic H()Z
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->H()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic I()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->I()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic J()Z
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->J()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic K()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->K()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->L()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public M()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d$1;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;)V

    .line 117
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 118
    const-string v1, "com.grubhub.persistence.orderReviews"

    invoke-virtual {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 119
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/d;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public N()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;
    .locals 2

    .prologue
    .line 129
    const-string v0, "com.grubhub.persistence.user"

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    return-object v0
.end method

.method public O()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;
    .locals 2

    .prologue
    .line 139
    const-string v0, "com.grubhub.persistence.anonymousUser"

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2UserAuthDTO;

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    return-object v0
.end method

.method public P()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;
    .locals 2

    .prologue
    .line 149
    const-string v0, "com.grubhub.persistence.foodMenu"

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO;

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;

    return-object v0
.end method

.method public Q()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d$6;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d$6;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;)V

    .line 180
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 181
    const-string v1, "com.grubhub.persistence.cartMenuItems"

    invoke-virtual {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public R()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d$9;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d$9;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;)V

    .line 224
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d$9;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 225
    const-string v1, "com.grubhub.persistence.savedAddressList"

    invoke-virtual {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public S()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedPayPalModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 403
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d$4;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;)V

    .line 404
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 405
    const-string v1, "com.grubhub.persistence.vaultedPayPals"

    invoke-virtual {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public T()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;
    .locals 2

    .prologue
    .line 246
    const-string v0, "com.grubhub.persistence.searchedRestaurant"

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO;

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    return-object v0
.end method

.method public U()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;
    .locals 2

    .prologue
    .line 254
    const-string v0, "com.grubhub.persistence.selectedRestaurant"

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO;

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    return-object v0
.end method

.method public V()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;
    .locals 2

    .prologue
    .line 264
    const-string v0, "com.grubhub.persistence.receiptRestaurant"

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantDTO;

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    return-object v0
.end method

.method public W()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;
    .locals 2

    .prologue
    .line 313
    const-string v0, "com.grubhub.persistence.restaurantList"

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2RestaurantListDTO;

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;

    return-object v0
.end method

.method public X()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;
    .locals 2

    .prologue
    .line 318
    const-string v0, "com.grubhub.persistence.cartData"

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartDTO;

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    return-object v0
.end method

.method public Y()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;
    .locals 2

    .prologue
    .line 381
    const-string v0, "com.grubhub.persistence.billData"

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2BillModelDTO;

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;

    return-object v0
.end method

.method public Z()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;
    .locals 2

    .prologue
    .line 328
    const-string v0, "com.grubhub.persistence.receipt"

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2CartDTO;

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string v0, "V2SharedPreferences"

    return-object v0
.end method

.method public bridge synthetic a(I)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(I)V

    return-void
.end method

.method public bridge synthetic a(J)V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(J)V

    return-void
.end method

.method public bridge synthetic a(Lcom/grubhub/AppBaseLibrary/android/c/c/a;)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Lcom/grubhub/AppBaseLibrary/android/c/c/a;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;)V

    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSTipModel;)V
    .locals 1

    .prologue
    .line 338
    const-string v0, "com.grubhub.persistence.tip"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 339
    return-void
.end method

.method public bridge synthetic a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;)V
    .locals 1

    .prologue
    .line 386
    const-string v0, "com.grubhub.persistence.billData"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 387
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V
    .locals 1

    .prologue
    .line 323
    const-string v0, "com.grubhub.persistence.cartData"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 324
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;)V
    .locals 4

    .prologue
    .line 201
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d$8;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d$8;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;)V

    .line 202
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d$8;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 204
    const-string v1, "com.grubhub.persistence.cartMenuItems"

    invoke-virtual {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 205
    if-nez v0, :cond_2

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 210
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;

    .line 211
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;->getMenuItemId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;->getMenuItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    :goto_1
    return-void

    .line 217
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    const-string v0, "com.grubhub.persistence.cartMenuItems"

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;)V
    .locals 2

    .prologue
    .line 155
    :try_start_0
    const-string v0, "com.grubhub.persistence.foodMenu"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v0, "OUT_OF_MEMORY"

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d$5;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;)V

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;)V
    .locals 1

    .prologue
    .line 111
    const-string v0, "com.grubhub.persistence.message"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)V
    .locals 1

    .prologue
    .line 241
    const-string v0, "com.grubhub.persistence.searchedRestaurant"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 242
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;)V
    .locals 2

    .prologue
    .line 296
    :try_start_0
    const-string v0, "com.grubhub.persistence.restaurantList"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_0
    return-void

    .line 297
    :catch_0
    move-exception v0

    .line 298
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string v0, "OUT_OF_MEMORY"

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d$11;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d$11;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;)V

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel;)V
    .locals 1

    .prologue
    .line 174
    const-string v0, "com.grubhub.persistence.reviews"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V
    .locals 1

    .prologue
    .line 134
    const-string v0, "com.grubhub.persistence.user"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;)V
    .locals 1

    .prologue
    .line 348
    const-string v0, "com.grubhub.persistence.pastOrders"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 349
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic a(Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public a(Ljava/util/LinkedHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryDataModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 370
    const-string v0, "com.grubhub.persistence.deliveryLookup"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 371
    return-void
.end method

.method public bridge synthetic a(Ljava/util/LinkedHashSet;)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/util/LinkedHashSet;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    :try_start_0
    const-string v0, "com.grubhub.persistence.cartMenuItems"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string v0, "OUT_OF_MEMORY"

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d$7;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d$7;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;)V

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Z)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Z)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public aa()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSTipModel;
    .locals 2

    .prologue
    .line 343
    const-string v0, "com.grubhub.persistence.tip"

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSTipModel;

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSTipModel;

    return-object v0
.end method

.method public ab()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;
    .locals 2

    .prologue
    .line 353
    const-string v0, "com.grubhub.persistence.pastOrders"

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderHistoryDTO;

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;

    return-object v0
.end method

.method public ac()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d$12;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d$12;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;)V

    .line 364
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d$12;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 365
    const-string v1, "com.grubhub.persistence.previousSearches"

    invoke-virtual {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public ad()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel$GHSIRestaurantAvailabilitySummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 396
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d$3;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;)V

    .line 397
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 398
    const-string v1, "com.grubhub.persistence.restaurantAvailabilties"

    invoke-virtual {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public ae()Ljava/util/LinkedHashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryDataModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d$2;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;)V

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 376
    const-string v1, "com.grubhub.persistence.deliveryLookup"

    invoke-virtual {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public bridge synthetic b(J)J
    .locals 3

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic b(I)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b(I)V

    return-void
.end method

.method public b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V
    .locals 1

    .prologue
    .line 333
    const-string v0, "com.grubhub.persistence.receipt"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 334
    return-void
.end method

.method public b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)V
    .locals 1

    .prologue
    .line 259
    const-string v0, "com.grubhub.persistence.selectedRestaurant"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 260
    return-void
.end method

.method public b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V
    .locals 1

    .prologue
    .line 144
    const-string v0, "com.grubhub.persistence.anonymousUser"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    return-void
.end method

.method public bridge synthetic b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b(Ljava/util/ArrayList;)V

    return-void
.end method

.method public bridge synthetic b(Z)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b(Z)V

    return-void
.end method

.method public bridge synthetic b()Z
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic c(I)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->c(I)V

    return-void
.end method

.method public bridge synthetic c(J)V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->c(J)V

    return-void
.end method

.method public c(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)V
    .locals 2

    .prologue
    .line 270
    :try_start_0
    const-string v0, "com.grubhub.persistence.receiptRestaurant"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 272
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-string v0, "OUT_OF_MEMORY"

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d$10;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d$10;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;)V

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public bridge synthetic c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderReviewDataModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    const-string v0, "com.grubhub.persistence.orderReviews"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method public bridge synthetic c(Z)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->c(Z)V

    return-void
.end method

.method public bridge synthetic c()Z
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->c()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic d(J)J
    .locals 3

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    .line 233
    const-string v2, "V2"

    invoke-interface {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setDataModelVersion(Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_0
    const-string v0, "com.grubhub.persistence.savedAddressList"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 237
    return-void
.end method

.method public bridge synthetic d(Z)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->d(Z)V

    return-void
.end method

.method public bridge synthetic d()Z
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->d()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic e(J)V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->e(J)V

    return-void
.end method

.method public bridge synthetic e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedPayPalModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 410
    const-string v0, "com.grubhub.persistence.vaultedPayPals"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 411
    return-void
.end method

.method public bridge synthetic e(Z)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->e(Z)V

    return-void
.end method

.method public bridge synthetic e()Z
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->e()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic f()J
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->f(Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSearchAutoValueDataModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 358
    const-string v0, "com.grubhub.persistence.previousSearches"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 359
    return-void
.end method

.method public bridge synthetic f(Z)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->f(Z)V

    return-void
.end method

.method public bridge synthetic g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->g(Ljava/lang/String;)V

    return-void
.end method

.method public g(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel$GHSIRestaurantAvailabilitySummary;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 391
    const-string v0, "com.grubhub.persistence.restaurantAvailabilties"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 392
    return-void
.end method

.method public bridge synthetic g(Z)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->g(Z)V

    return-void
.end method

.method public bridge synthetic g()Z
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->g()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic h()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->h()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->h(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic h(Z)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->h(Z)V

    return-void
.end method

.method public bridge synthetic i()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->i()V

    return-void
.end method

.method public bridge synthetic i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->i(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic i(Z)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->i(Z)V

    return-void
.end method

.method public bridge synthetic j()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->j()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->j(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic j(Z)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->j(Z)V

    return-void
.end method

.method public bridge synthetic k()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->k()V

    return-void
.end method

.method public bridge synthetic k(Z)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->k(Z)V

    return-void
.end method

.method public bridge synthetic l()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->l()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l(Z)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->l(Z)V

    return-void
.end method

.method public bridge synthetic m()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->m()V

    return-void
.end method

.method public bridge synthetic m(Z)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->m(Z)V

    return-void
.end method

.method public bridge synthetic n()I
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->n()I

    move-result v0

    return v0
.end method

.method public bridge synthetic n(Z)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->n(Z)V

    return-void
.end method

.method public bridge synthetic o(Z)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->o(Z)V

    return-void
.end method

.method public bridge synthetic o()Z
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->o()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic p()I
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->p()I

    move-result v0

    return v0
.end method

.method public bridge synthetic q()Z
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->q()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic r()Z
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->r()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic s()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->s()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic t()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->t()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic v()Z
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->v()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic w()Z
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->w()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic x()I
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->x()I

    move-result v0

    return v0
.end method

.method public bridge synthetic y()Z
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->y()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic z()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->z()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v0

    return-object v0
.end method
