.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;
.super Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;-><init>(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;

    .line 81
    :cond_0
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic A()Z
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->A()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->B()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel;
    .locals 2

    .prologue
    .line 155
    const-string v0, "com.grubhub.persistence.reviews"

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ReviewsDataModel;

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel;

    return-object v0
.end method

.method public bridge synthetic D()Lcom/grubhub/AppBaseLibrary/android/c/c/a;
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->D()Lcom/grubhub/AppBaseLibrary/android/c/c/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic E()Ljava/util/LinkedHashSet;
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->E()Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic F()Z
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->F()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic G()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->G()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic H()Z
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->H()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic I()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->I()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic J()Z
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->J()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic K()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->K()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic L()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->L()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public M()Ljava/util/ArrayList;
    .locals 1
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
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public N()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;
    .locals 2

    .prologue
    .line 115
    const-string v0, "com.grubhub.persistence.user"

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO;

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    return-object v0
.end method

.method public O()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;
    .locals 2

    .prologue
    .line 125
    const-string v0, "com.grubhub.persistence.anonymousUser"

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1UserAuthDTO;

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    return-object v0
.end method

.method public P()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;
    .locals 2

    .prologue
    .line 135
    const-string v0, "com.grubhub.persistence.foodMenu"

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1FoodMenuDTO;

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

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
    .line 165
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c$2;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;)V

    .line 166
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 167
    const-string v1, "com.grubhub.persistence.cartMenuItems"

    invoke-virtual {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

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
    .line 209
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c$5;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;)V

    .line 210
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 211
    const-string v1, "com.grubhub.persistence.savedAddressList"

    invoke-virtual {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public S()Ljava/util/ArrayList;
    .locals 1
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
    .line 375
    const/4 v0, 0x0

    return-object v0
.end method

.method public T()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;
    .locals 2

    .prologue
    .line 226
    const-string v0, "com.grubhub.persistence.searchedRestaurant"

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO;

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    return-object v0
.end method

.method public U()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;
    .locals 2

    .prologue
    .line 231
    const-string v0, "com.grubhub.persistence.selectedRestaurant"

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO;

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    return-object v0
.end method

.method public V()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;
    .locals 2

    .prologue
    .line 241
    const-string v0, "com.grubhub.persistence.receiptRestaurant"

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantInfoDTO;

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    return-object v0
.end method

.method public W()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;
    .locals 2

    .prologue
    .line 290
    const-string v0, "com.grubhub.persistence.restaurantList"

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1RestaurantListDTO;

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;

    return-object v0
.end method

.method public X()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;
    .locals 2

    .prologue
    .line 295
    const-string v0, "com.grubhub.persistence.cartData"

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    return-object v0
.end method

.method public Y()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x0

    return-object v0
.end method

.method public Z()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;
    .locals 2

    .prologue
    .line 306
    const-string v0, "com.grubhub.persistence.receipt"

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1CartDTO;

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "V1SharedPreferences"

    return-object v0
.end method

.method public bridge synthetic a(I)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(I)V

    return-void
.end method

.method public bridge synthetic a(J)V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(J)V

    return-void
.end method

.method public bridge synthetic a(Lcom/grubhub/AppBaseLibrary/android/c/c/a;)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Lcom/grubhub/AppBaseLibrary/android/c/c/a;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCreateOrderReviewDataModel;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;)V

    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSTipModel;)V
    .locals 1

    .prologue
    .line 316
    const-string v0, "com.grubhub.persistence.tip"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 317
    return-void
.end method

.method public bridge synthetic a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;)V
    .locals 0

    .prologue
    .line 361
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V
    .locals 1

    .prologue
    .line 300
    const-string v0, "com.grubhub.persistence.cartData"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 302
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;)V
    .locals 4

    .prologue
    .line 187
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c$4;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;)V

    .line 188
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 190
    const-string v1, "com.grubhub.persistence.cartMenuItems"

    invoke-virtual {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 191
    if-nez v0, :cond_2

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 196
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

    .line 197
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;->getMenuItemId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;->getMenuItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    :goto_1
    return-void

    .line 203
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    const-string v0, "com.grubhub.persistence.cartMenuItems"

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel;)V
    .locals 2

    .prologue
    .line 141
    :try_start_0
    const-string v0, "com.grubhub.persistence.foodMenu"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string v0, "OUT_OF_MEMORY"

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c$1;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;)V

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;)V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)V
    .locals 1

    .prologue
    .line 221
    const-string v0, "com.grubhub.persistence.searchedRestaurant"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;)V
    .locals 2

    .prologue
    .line 273
    :try_start_0
    const-string v0, "com.grubhub.persistence.restaurantList"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    .line 275
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const-string v0, "OUT_OF_MEMORY"

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c$7;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c$7;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;)V

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIReviewsDataModel;)V
    .locals 1

    .prologue
    .line 160
    const-string v0, "com.grubhub.persistence.reviews"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V
    .locals 1

    .prologue
    .line 120
    const-string v0, "com.grubhub.persistence.user"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;)V
    .locals 1

    .prologue
    .line 326
    const-string v0, "com.grubhub.persistence.pastOrders"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 327
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic a(Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public a(Ljava/util/LinkedHashMap;)V
    .locals 0
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
    .line 346
    return-void
.end method

.method public bridge synthetic a(Ljava/util/LinkedHashSet;)V
    .locals 0

    .prologue
    .line 47
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
    .line 173
    :try_start_0
    const-string v0, "com.grubhub.persistence.cartMenuItems"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v0, "OUT_OF_MEMORY"

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c$3;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;)V

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Z)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Z)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public aa()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSTipModel;
    .locals 2

    .prologue
    .line 321
    const-string v0, "com.grubhub.persistence.tip"

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSTipModel;

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSTipModel;

    return-object v0
.end method

.method public ab()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;
    .locals 2

    .prologue
    .line 331
    const-string v0, "com.grubhub.persistence.pastOrders"

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1PastOrdersDTO;

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;

    return-object v0
.end method

.method public ac()Ljava/util/ArrayList;
    .locals 1
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
    .line 340
    const/4 v0, 0x0

    return-object v0
.end method

.method public ad()Ljava/util/ArrayList;
    .locals 1
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
    .line 370
    const/4 v0, 0x0

    return-object v0
.end method

.method public ae()Ljava/util/LinkedHashMap;
    .locals 1
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
    .line 350
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic b(J)J
    .locals 3

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic b(I)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b(I)V

    return-void
.end method

.method public b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V
    .locals 1

    .prologue
    .line 311
    const-string v0, "com.grubhub.persistence.receipt"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 312
    return-void
.end method

.method public b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)V
    .locals 1

    .prologue
    .line 236
    const-string v0, "com.grubhub.persistence.selectedRestaurant"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 237
    return-void
.end method

.method public b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V
    .locals 1

    .prologue
    .line 130
    const-string v0, "com.grubhub.persistence.anonymousUser"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    return-void
.end method

.method public bridge synthetic b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b(Ljava/util/ArrayList;)V

    return-void
.end method

.method public bridge synthetic b(Z)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b(Z)V

    return-void
.end method

.method public bridge synthetic b()Z
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->b()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic c(I)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->c(I)V

    return-void
.end method

.method public bridge synthetic c(J)V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->c(J)V

    return-void
.end method

.method public c(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)V
    .locals 2

    .prologue
    .line 247
    :try_start_0
    const-string v0, "com.grubhub.persistence.receiptRestaurant"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 249
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string v0, "OUT_OF_MEMORY"

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c$6;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c$6;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;)V

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public bridge synthetic c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 111
    return-void
.end method

.method public bridge synthetic c(Z)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->c(Z)V

    return-void
.end method

.method public bridge synthetic c()Z
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->c()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic d(J)J
    .locals 3

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 216
    const-string v0, "com.grubhub.persistence.savedAddressList"

    invoke-virtual {p0, v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    return-void
.end method

.method public bridge synthetic d(Z)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->d(Z)V

    return-void
.end method

.method public bridge synthetic d()Z
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->d()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic e(J)V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->e(J)V

    return-void
.end method

.method public bridge synthetic e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 381
    return-void
.end method

.method public bridge synthetic e(Z)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->e(Z)V

    return-void
.end method

.method public bridge synthetic e()Z
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->e()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic f()J
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->f(Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 336
    return-void
.end method

.method public bridge synthetic f(Z)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->f(Z)V

    return-void
.end method

.method public bridge synthetic g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->g(Ljava/lang/String;)V

    return-void
.end method

.method public g(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 366
    return-void
.end method

.method public bridge synthetic g(Z)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->g(Z)V

    return-void
.end method

.method public bridge synthetic g()Z
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->g()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic h()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->h()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->h(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic h(Z)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->h(Z)V

    return-void
.end method

.method public bridge synthetic i()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->i()V

    return-void
.end method

.method public bridge synthetic i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->i(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic i(Z)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->i(Z)V

    return-void
.end method

.method public bridge synthetic j()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->j()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->j(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic j(Z)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->j(Z)V

    return-void
.end method

.method public bridge synthetic k()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->k()V

    return-void
.end method

.method public bridge synthetic k(Z)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->k(Z)V

    return-void
.end method

.method public bridge synthetic l()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->l()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l(Z)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->l(Z)V

    return-void
.end method

.method public bridge synthetic m()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->m()V

    return-void
.end method

.method public bridge synthetic m(Z)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->m(Z)V

    return-void
.end method

.method public bridge synthetic n()I
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->n()I

    move-result v0

    return v0
.end method

.method public bridge synthetic n(Z)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->n(Z)V

    return-void
.end method

.method public bridge synthetic o(Z)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->o(Z)V

    return-void
.end method

.method public bridge synthetic o()Z
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->o()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic p()I
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->p()I

    move-result v0

    return v0
.end method

.method public bridge synthetic q()Z
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->q()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic r()Z
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->r()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic s()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->s()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic t()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->t()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic v()Z
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->v()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic w()Z
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->w()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic x()I
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->x()I

    move-result v0

    return v0
.end method

.method public bridge synthetic y()Z
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->y()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic z()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/a;->z()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v0

    return-object v0
.end method
