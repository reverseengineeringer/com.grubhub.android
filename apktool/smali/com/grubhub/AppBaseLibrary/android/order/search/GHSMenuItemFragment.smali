.class public Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/a;
.implements Lcom/grubhub/AppBaseLibrary/android/order/cart/q;
.implements Lcom/grubhub/AppBaseLibrary/android/order/h;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# instance fields
.field private A:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

.field private B:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

.field private C:Landroid/view/ViewGroup;

.field private D:Landroid/widget/ExpandableListView;

.field private E:Lcom/grubhub/AppBaseLibrary/android/order/search/e;

.field private F:Landroid/view/View;

.field private G:Landroid/widget/EditText;

.field private H:Landroid/widget/Button;

.field private I:Landroid/view/View;

.field private J:Landroid/widget/EditText;

.field private c:Ljava/lang/String;

.field private d:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

.field private e:Z

.field private f:Z

.field private g:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

.field private h:Lcom/grubhub/AppBaseLibrary/android/order/g;

.field private i:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Lcom/grubhub/AppBaseLibrary/android/order/search/f;

.field private r:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

.field private s:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

.field private t:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b;

.field private u:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/e;

.field private v:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

.field private w:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

.field private x:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/b;

.field private y:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/s;

.field private z:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 113
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->a:Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".AddItemOverlay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 133
    const/4 v0, 0x1

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->n:I

    .line 1712
    return-void
.end method

.method static synthetic A(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->l()V

    return-void
.end method

.method static synthetic B(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->p()V

    return-void
.end method

.method static synthetic C(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)Lcom/grubhub/AppBaseLibrary/android/order/search/f;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->q:Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    return-object v0
.end method

.method private a(I)F
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 788
    .line 789
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;->getMenuItemPrice()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;->getMenuItemPrice()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 791
    :goto_0
    add-float/2addr v1, v0

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->k:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->a(Ljava/util/List;)F

    move-result v0

    add-float/2addr v0, v1

    .line 796
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->l:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->a(Ljava/util/List;)F

    move-result v1

    add-float/2addr v0, v1

    .line 798
    int-to-float v1, p1

    mul-float/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    .line 790
    goto :goto_0
.end method

.method private a(Ljava/util/List;)F
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 808
    const/4 v0, 0x0

    .line 810
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->m:Ljava/util/HashMap;

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    .line 811
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;

    .line 812
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->m:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getChoiceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 816
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->m:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getItemVariationId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 819
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->m:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getChoiceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 820
    invoke-interface {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getOptionById(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;

    move-result-object v6

    .line 822
    if-nez v1, :cond_1

    .line 824
    invoke-interface {v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;->getOptionPrice()Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 825
    invoke-interface {v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;->getOptionPrice()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v3, v2

    goto :goto_1

    .line 829
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 830
    invoke-interface {v6, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;->getVariationalPrice(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 831
    invoke-interface {v6, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIOption;->getVariationalPrice(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v3, v2

    goto :goto_2

    :cond_3
    move v0, v3

    move v3, v0

    .line 837
    goto :goto_0

    :cond_4
    move v0, v3

    .line 839
    :cond_5
    return v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->n:I

    return v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;I)I
    .locals 0

    .prologue
    .line 95
    iput p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->n:I

    return p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/b;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/b;
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->x:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/b;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/e;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/e;
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->u:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/e;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->z:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->v:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->w:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/s;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/s;
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->y:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/s;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b;
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->t:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->A:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;

    return-object p1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/order/g;ZZLjava/lang/String;Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;
    .locals 4

    .prologue
    .line 176
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;-><init>()V

    .line 177
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 178
    const-string v2, "restaurant_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v2, "item_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v2, "search_address"

    invoke-static {p2}, Lcom/grubhub/AppBaseLibrary/android/order/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAddressDataModel;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 181
    const-string v2, "order_type"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 182
    const-string v2, "delivery_radius_check"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 183
    const-string v2, "restaurant_phone_only"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 184
    const-string v2, "restaurant_phone_number"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v2, "old_item_id"

    invoke-virtual {v1, v2, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->setArguments(Landroid/os/Bundle;)V

    .line 188
    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->o:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 1240
    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSMenuItemUpdateModel;

    invoke-direct {v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSMenuItemUpdateModel;-><init>()V

    .line 1241
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;->setRestaurantId(Ljava/lang/String;)V

    .line 1242
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;->getMenuItemId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;->setMenuItemId(Ljava/lang/String;)V

    .line 1243
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->n:I

    invoke-interface {v4, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;->setQuantity(I)V

    .line 1244
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->o:Ljava/lang/String;

    invoke-interface {v4, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;->setSpecialInstructions(Ljava/lang/String;)V

    .line 1245
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;->setApplyFreeGrub(Ljava/lang/Boolean;)V

    .line 1247
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1248
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1249
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->m:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1250
    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSMenuItemUpdateModel$GHSCartOptionsModel;

    invoke-direct {v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSMenuItemUpdateModel$GHSCartOptionsModel;-><init>()V

    .line 1251
    invoke-interface {v5, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel$GHSICartOptions;->setId(Ljava/lang/String;)V

    .line 1252
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1255
    :cond_1
    invoke-interface {v4, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;->setOptions(Ljava/util/List;)V

    .line 1258
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v8

    .line 1259
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/s;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getCartId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "old_item_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$28;

    invoke-direct {v5, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$28;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V

    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$29;

    invoke-direct {v6, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$29;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/s;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->y:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/s;

    .line 1274
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->y:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/s;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$30;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$30;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/s;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 1280
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->y:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/s;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$31;

    invoke-direct {v1, p0, v8}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$31;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/s;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 1291
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1292
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/b/b;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_MENU_QUANTITY_CHANGE_DROPS_BELOW_COUPON_MIN_ORDER:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-direct {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/b/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    .line 1294
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/b/b;->f()Ljava/lang/String;

    move-result-object v1

    .line 1295
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/b/b;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    .line 1296
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/b/b;->g()Ljava/lang/String;

    move-result-object v3

    .line 1297
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/b/b;->h()Ljava/lang/String;

    move-result-object v4

    .line 1298
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/b/b;->i()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$32;

    invoke-direct {v6, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$32;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Landroid/content/Context;)V

    move-object v0, v8

    .line 1293
    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/d;)V

    .line 1306
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v6

    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CORE_ORDERING_EXP:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->RESTAURANT_DETAILS:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v3, "cart change alert_lose coupon modal"

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    .line 1311
    invoke-interface {v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v4

    :goto_1
    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    invoke-virtual {v6, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 1316
    :goto_2
    return-void

    :cond_2
    move-object v4, v7

    .line 1311
    goto :goto_1

    .line 1314
    :cond_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->y:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/s;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/s;->a()V

    goto :goto_2
.end method

.method private a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;)V
    .locals 4

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getCoupon()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1374
    :cond_0
    :goto_0
    return-void

    .line 1329
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getCoupon()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;

    move-result-object v0

    .line 1330
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$33;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$33;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$35;

    invoke-direct {v3, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$35;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->z:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;

    .line 1344
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->z:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$36;

    invoke-direct {v1, p0, p2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$36;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 1354
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->z:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$37;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$37;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 1373
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->z:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/n;->a()V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Z)V
    .locals 7

    .prologue
    .line 872
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v2

    .line 873
    :goto_0
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    .line 875
    invoke-interface {p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getLatitude()Ljava/lang/String;

    move-result-object v3

    .line 876
    invoke-interface {p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getLongitude()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$6;

    invoke-direct {v5, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$6;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V

    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$7;

    invoke-direct {v6, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$7;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V

    invoke-direct/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->A:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

    .line 889
    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->A:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$8;

    move-object v1, p0

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$8;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Ljava/lang/String;ZLandroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    invoke-virtual {v6, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 923
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->A:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$9;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$9;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 930
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->A:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;->a()V

    .line 931
    return-void

    .line 872
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 849
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->G:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->o:Ljava/lang/String;

    .line 851
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "old_item_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 852
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->h:Lcom/grubhub/AppBaseLibrary/android/order/g;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/g;->DELIVERY:Lcom/grubhub/AppBaseLibrary/android/order/g;

    if-ne v0, v1, :cond_0

    .line 853
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-direct {p0, p1, v0, p2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Z)V

    .line 862
    :goto_0
    return-void

    .line 854
    :cond_0
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    if-nez v0, :cond_2

    .line 855
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->b(Landroid/content/Context;Z)V

    goto :goto_0

    .line 857
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->e(Landroid/content/Context;Z)V

    goto :goto_0

    .line 860
    :cond_3
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;IZ)V
    .locals 4

    .prologue
    .line 1514
    if-eqz p1, :cond_0

    .line 1515
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a0000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1516
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1517
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1518
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$38;

    invoke-direct {v1, p0, p3}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$38;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1533
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1534
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1536
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Landroid/view/View;IZ)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->a(Landroid/view/View;IZ)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Z)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 703
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$2;

    invoke-direct {v4, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$3;

    invoke-direct {v5, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->t:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b;

    .line 718
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->t:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b;

    .line 719
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->t:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$4;

    invoke-direct {v2, p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b;)V

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 742
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->t:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$5;

    invoke-direct {v2, p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b;)V

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 755
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->t:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b;->a()V

    .line 756
    return-void
.end method

.method private a(Z)V
    .locals 5

    .prologue
    .line 1573
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->p:Z

    if-nez v0, :cond_0

    .line 1574
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x41700000    # 15.0f

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->C:Landroid/view/ViewGroup;

    .line 1575
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->C:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    .line 1576
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1577
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 1578
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$40;

    invoke-direct {v1, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$40;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1602
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->C:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1604
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->J:Landroid/widget/EditText;

    return-object v0
.end method

.method private b(Landroid/content/Context;Z)V
    .locals 6

    .prologue
    .line 940
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->r:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    if-nez v0, :cond_0

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/order/l;->DEFAULT:Lcom/grubhub/AppBaseLibrary/android/order/l;

    .line 941
    :goto_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->r:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    if-nez v0, :cond_1

    const/4 v3, 0x0

    .line 943
    :goto_1
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/e;

    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$10;

    invoke-direct {v4, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$10;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$11;

    invoke-direct {v5, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$11;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/e;-><init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/order/l;Ljava/lang/Long;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->u:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/e;

    .line 960
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->u:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/e;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$13;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/e;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 972
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->u:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/e;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$14;

    invoke-direct {v1, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$14;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/e;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 984
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->u:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/e;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/e;->a()V

    .line 985
    return-void

    .line 940
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->r:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getSubOrderType()Lcom/grubhub/AppBaseLibrary/android/order/l;

    move-result-object v2

    goto :goto_0

    .line 941
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->r:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getWhenFor()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_1
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->b(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Z)Z
    .locals 0

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->p:Z

    return p1
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)I
    .locals 2

    .prologue
    .line 95
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->n:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->n:I

    return v0
.end method

.method private c(Landroid/content/Context;Z)V
    .locals 6

    .prologue
    .line 994
    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSDeliveryInfoDataModel;

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-direct {v3, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSDeliveryInfoDataModel;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    .line 999
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

    const/4 v2, 0x1

    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$15;

    invoke-direct {v4, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$15;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$16;

    invoke-direct {v5, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$16;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;-><init>(Landroid/content/Context;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryInfo;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->v:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

    .line 1014
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->v:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$17;

    invoke-direct {v1, p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$17;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 1023
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->v:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$18;

    invoke-direct {v1, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$18;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 1034
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->v:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;->a()V

    .line 1035
    return-void
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->e(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)I
    .locals 2

    .prologue
    .line 95
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->n:I

    return v0
.end method

.method private d(Landroid/content/Context;Z)V
    .locals 6

    .prologue
    .line 1044
    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPickupInfoDataModel;

    invoke-direct {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPickupInfoDataModel;-><init>()V

    .line 1045
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

    const/4 v2, 0x1

    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$19;

    invoke-direct {v4, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$19;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$20;

    invoke-direct {v5, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$20;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;-><init>(Landroid/content/Context;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPickupInfo;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->w:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

    .line 1060
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->w:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$21;

    invoke-direct {v1, p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$21;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 1069
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->w:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$22;

    invoke-direct {v1, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$22;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 1081
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->w:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;->a()V

    .line 1082
    return-void
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->d(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic e(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)Lcom/grubhub/AppBaseLibrary/android/order/search/e;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->E:Lcom/grubhub/AppBaseLibrary/android/order/search/e;

    return-object v0
.end method

.method private e(Landroid/content/Context;Z)V
    .locals 6

    .prologue
    .line 1091
    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSMenuItemUpdateModel;

    invoke-direct {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSMenuItemUpdateModel;-><init>()V

    .line 1092
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;->setRestaurantId(Ljava/lang/String;)V

    .line 1093
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;->getMenuItemId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;->setMenuItemId(Ljava/lang/String;)V

    .line 1094
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->n:I

    invoke-interface {v3, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;->setQuantity(I)V

    .line 1095
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->o:Ljava/lang/String;

    invoke-interface {v3, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;->setSpecialInstructions(Ljava/lang/String;)V

    .line 1096
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;->setApplyFreeGrub(Ljava/lang/Boolean;)V

    .line 1098
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1099
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1100
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->m:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1101
    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSMenuItemUpdateModel$GHSCartOptionsModel;

    invoke-direct {v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSMenuItemUpdateModel$GHSCartOptionsModel;-><init>()V

    .line 1102
    invoke-interface {v5, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel$GHSICartOptions;->setId(Ljava/lang/String;)V

    .line 1103
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1106
    :cond_1
    invoke-interface {v3, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;->setOptions(Ljava/util/List;)V

    .line 1109
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/b;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getCartId()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$24;

    invoke-direct {v4, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$24;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$25;

    invoke-direct {v5, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$25;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMenuItemUpdateModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->x:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/b;

    .line 1124
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->x:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/b;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$26;

    invoke-direct {v1, p0, p2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$26;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Z)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 1147
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->x:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/b;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$27;

    invoke-direct {v1, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$27;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 1189
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->x:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/b;->a()V

    .line 1190
    return-void
.end method

.method static synthetic e(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->c(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic f(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->m:Ljava/util/HashMap;

    return-object v0
.end method

.method private f()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 658
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 659
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->k:Ljava/util/ArrayList;

    .line 660
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->l:Ljava/util/ArrayList;

    .line 662
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;->getMenuItemChoiceGroups()Ljava/util/ArrayList;

    move-result-object v0

    .line 663
    if-eqz v0, :cond_2

    .line 664
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;

    .line 665
    if-eqz v0, :cond_0

    .line 666
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getMinimum()I

    move-result v4

    if-nez v4, :cond_1

    .line 667
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->l:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 668
    :cond_1
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getMinimum()I

    move-result v4

    if-lt v4, v3, :cond_0

    .line 669
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->k:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 676
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->F:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 679
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->F:Landroid/view/View;

    const v1, 0x7f0f01a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;->getMenuItemName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;->getMenuItemName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 680
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->F:Landroid/view/View;

    const v1, 0x7f0f01a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;->getMenuItemDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;->getMenuItemDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 681
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->F:Landroid/view/View;

    const v1, 0x7f0f01a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->F:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f080456

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-direct {p0, v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->a(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    :cond_4
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->D:Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_6

    .line 685
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/search/e;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->k:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->l:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->m:Ljava/util/HashMap;

    invoke-direct {v0, p0, v1, v2, v4}, Lcom/grubhub/AppBaseLibrary/android/order/search/e;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->E:Lcom/grubhub/AppBaseLibrary/android/order/search/e;

    .line 686
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->D:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->E:Lcom/grubhub/AppBaseLibrary/android/order/search/e;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 687
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    move v0, v3

    .line 689
    :goto_2
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_6

    .line 690
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->D:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 689
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move-object v1, v2

    .line 679
    goto/16 :goto_1

    .line 694
    :cond_6
    return-void
.end method

.method static synthetic g(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)Landroid/widget/ExpandableListView;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->D:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method private g()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 765
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->k:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move v2, v0

    .line 778
    :cond_1
    return v2

    .line 769
    :cond_2
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;

    .line 770
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getChoiceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->m:Ljava/util/HashMap;

    .line 771
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getChoiceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->m:Ljava/util/HashMap;

    .line 772
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getChoiceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getMinimum()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 773
    :cond_3
    const/4 v2, 0x0

    move v0, v2

    :goto_1
    move v2, v0

    .line 775
    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method private h()V
    .locals 1

    .prologue
    .line 1196
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/order/cart/i;->a()V

    .line 1197
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->q:Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    if-eqz v0, :cond_0

    .line 1198
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->q:Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/f;->p()V

    .line 1200
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->f:Z

    return v0
.end method

.method static synthetic i(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->j:Ljava/lang/String;

    return-object v0
.end method

.method private i()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1210
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getCoupon()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getCoupon()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;->getMinimumAmount()Ljava/lang/Float;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 1231
    :goto_0
    return v0

    .line 1214
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getCoupon()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;->getMinimumAmountInCents()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1217
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getSubtotalInCents()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getCoupon()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;->getAmountInCents()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v0

    .line 1218
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1219
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;

    .line 1220
    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;

    invoke-interface {v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;->getMenuItemId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getOriginalItemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getDinerTotalInCents()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1221
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getDinerTotalInCents()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    .line 1228
    :goto_1
    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->n:I

    invoke-direct {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->a(I)F

    move-result v1

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 1231
    if-ge v0, v3, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private j()V
    .locals 2

    .prologue
    .line 1380
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 1381
    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v0, :cond_0

    .line 1382
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Z)V

    .line 1384
    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)Z
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->m()Z

    move-result v0

    return v0
.end method

.method static synthetic k(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    return-object v0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 1390
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 1391
    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v0, :cond_0

    .line 1392
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Z)V

    .line 1394
    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->r:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    return-object v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 1400
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)V

    .line 1401
    return-void
.end method

.method static synthetic m(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    return-object v0
.end method

.method private m()Z
    .locals 2

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    .line 1410
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    .line 1411
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    .line 1412
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1413
    const/4 v0, 0x1

    .line 1415
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n()Z
    .locals 2

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1450
    :cond_0
    const/4 v0, 0x1

    .line 1452
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic n(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)Z
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->n()Z

    move-result v0

    return v0
.end method

.method static synthetic o(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->C:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private o()V
    .locals 5

    .prologue
    .line 1543
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, 0x41700000    # 15.0f

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->C:Landroid/view/ViewGroup;

    .line 1544
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->C:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    .line 1545
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1546
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 1547
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$39;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$39;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1563
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->C:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1564
    return-void
.end method

.method private p()V
    .locals 2

    .prologue
    .line 1610
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1611
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    if-eqz v1, :cond_0

    .line 1612
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->e()V

    .line 1614
    :cond_0
    return-void
.end method

.method static synthetic p(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->o()V

    return-void
.end method

.method static synthetic q(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->B:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    return-object v0
.end method

.method static synthetic r(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;

    return-object v0
.end method

.method static synthetic s(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->f()V

    return-void
.end method

.method static synthetic t(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->j()V

    return-void
.end method

.method static synthetic u(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->k()V

    return-void
.end method

.method static synthetic v(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)Lcom/grubhub/AppBaseLibrary/android/order/g;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->h:Lcom/grubhub/AppBaseLibrary/android/order/g;

    return-object v0
.end method

.method static synthetic w(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    return-object v0
.end method

.method static synthetic x(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->I:Landroid/view/View;

    return-object v0
.end method

.method static synthetic y(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->h()V

    return-void
.end method

.method static synthetic z(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/s;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->y:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/s;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 199
    iput p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->n:I

    .line 200
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->o:Ljava/lang/String;

    .line 201
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->m:Ljava/util/HashMap;

    .line 202
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1700
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 1701
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->f()Ljava/lang/String;

    move-result-object v1

    .line 1702
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    .line 1703
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0803e5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    .line 1700
    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/d;)V

    .line 1707
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;)V
    .locals 0

    .prologue
    .line 644
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;

    .line 647
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->f()V

    .line 650
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->e()V

    .line 651
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/order/cart/p;)V
    .locals 3

    .prologue
    .line 1666
    if-eqz p1, :cond_0

    .line 1668
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->U()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    .line 1670
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$41;->a:[I

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/p;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1696
    :cond_0
    :goto_0
    return-void

    .line 1672
    :pswitch_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->b(Landroid/content/Context;Z)V

    goto :goto_0

    .line 1675
    :pswitch_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->q:Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    if-eqz v0, :cond_1

    .line 1676
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->q:Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/f;->o()V

    .line 1678
    :cond_1
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->f_()Z

    goto :goto_0

    .line 1683
    :pswitch_2
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "old_item_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1684
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->e(Landroid/content/Context;Z)V

    goto :goto_0

    .line 1686
    :cond_2
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 1690
    :pswitch_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->q:Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    if-eqz v0, :cond_0

    .line 1691
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->q:Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/f;->q()V

    goto :goto_0

    .line 1670
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    if-eqz p2, :cond_0

    .line 215
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->m:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->m:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 1624
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 1628
    return-void
.end method

.method public d()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1428
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->r:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    if-nez v0, :cond_2

    :cond_0
    move v1, v2

    .line 1440
    :cond_1
    :goto_0
    return v1

    .line 1432
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->r:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    .line 1433
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getSubOrderType()Lcom/grubhub/AppBaseLibrary/android/order/l;

    move-result-object v0

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/order/l;->DEFAULT:Lcom/grubhub/AppBaseLibrary/android/order/l;

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    .line 1434
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->isAsapOrder()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 1435
    :goto_1
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->r:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    .line 1436
    invoke-virtual {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getSubOrderType()Lcom/grubhub/AppBaseLibrary/android/order/l;

    move-result-object v3

    sget-object v4, Lcom/grubhub/AppBaseLibrary/android/order/l;->FUTURE:Lcom/grubhub/AppBaseLibrary/android/order/l;

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    .line 1437
    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->isAsapOrder()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    .line 1438
    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getExpectedTimeInMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->r:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-virtual {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getWhenFor()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_5

    move v3, v1

    .line 1440
    :goto_2
    if-nez v0, :cond_3

    if-eqz v3, :cond_1

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move v0, v2

    .line 1434
    goto :goto_1

    :cond_5
    move v3, v2

    .line 1438
    goto :goto_2
.end method

.method protected e()V
    .locals 9

    .prologue
    const v7, 0x7f080456

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1462
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->H:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 1463
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->H:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1465
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->h:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-interface {v1, v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->isOpen(Lcom/grubhub/AppBaseLibrary/android/order/g;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1466
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->H:Landroid/widget/Button;

    const v1, 0x7f0803c3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1467
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->H:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1503
    :cond_1
    :goto_0
    return-void

    .line 1468
    :cond_2
    iget-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->f:Z

    if-eqz v1, :cond_3

    .line 1469
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->H:Landroid/widget/Button;

    const v4, 0x7f0803c4

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->j:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1470
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->H:Landroid/widget/Button;

    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->n()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 1472
    :cond_3
    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->n:I

    if-lez v1, :cond_6

    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->g()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1473
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "old_item_id"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1474
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->H:Landroid/widget/Button;

    const v4, 0x7f0803b3

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1475
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v7, v2, [Ljava/lang/Object;

    iget v8, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->n:I

    invoke-direct {p0, v8}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->a(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v0, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    .line 1474
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1482
    :goto_1
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->H:Landroid/widget/Button;

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;

    if-eqz v0, :cond_5

    move v0, v2

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 1477
    :cond_4
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->H:Landroid/widget/Button;

    const v4, 0x7f0803b4

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1478
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v7, v2, [Ljava/lang/Object;

    iget v8, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->n:I

    invoke-direct {p0, v8}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->a(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v0, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    .line 1477
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    move v0, v3

    .line 1482
    goto :goto_2

    .line 1486
    :cond_6
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_9

    .line 1488
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v4, v3

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;

    .line 1489
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getChoiceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->m:Ljava/util/HashMap;

    .line 1490
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getChoiceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->m:Ljava/util/HashMap;

    .line 1491
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getChoiceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIChoiceGroup;->getMinimum()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 1492
    :cond_7
    add-int/lit8 v4, v4, 0x1

    move v0, v4

    :goto_4
    move v4, v0

    .line 1494
    goto :goto_3

    .line 1495
    :cond_8
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->H:Landroid/widget/Button;

    const v1, 0x7f0803c1

    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1499
    :goto_5
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->H:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1497
    :cond_9
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->H:Landroid/widget/Button;

    const v1, 0x7f0803bd

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_5

    :cond_a
    move v0, v4

    goto :goto_4
.end method

.method public f_()Z
    .locals 1

    .prologue
    .line 1618
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->a(Z)V

    .line 1619
    const/4 v0, 0x1

    return v0
.end method

.method public g_()V
    .locals 2

    .prologue
    .line 1632
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 1633
    if-eqz v0, :cond_0

    .line 1634
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->e:Z

    .line 1635
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/g;->PICKUP:Lcom/grubhub/AppBaseLibrary/android/order/g;

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->h:Lcom/grubhub/AppBaseLibrary/android/order/g;

    .line 1636
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->n()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->a(Landroid/content/Context;Z)V

    .line 1638
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 230
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_1

    instance-of v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->q:Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    if-eqz v0, :cond_0

    .line 234
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->q:Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 247
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 248
    if-eqz p1, :cond_0

    .line 249
    const-string v0, "selected_quantity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->n:I

    .line 250
    const-string v0, "special_instructions_input"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->o:Ljava/lang/String;

    .line 251
    const-string v0, "selected_choice_options"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->m:Ljava/util/HashMap;

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->m:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->m:Ljava/util/HashMap;

    .line 258
    :cond_1
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "restaurant_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 262
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->U()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v1

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    .line 263
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 264
    :cond_2
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->T()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    .line 268
    :cond_3
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "item_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->c:Ljava/lang/String;

    .line 269
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "search_address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    .line 270
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "order_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/g;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->h:Lcom/grubhub/AppBaseLibrary/android/order/g;

    .line 271
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "delivery_radius_check"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->e:Z

    .line 272
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "restaurant_phone_only"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->f:Z

    .line 273
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "restaurant_phone_number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->j:Ljava/lang/String;

    .line 275
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    .line 276
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->X()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    move-result-object v1

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    .line 277
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->z()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->r:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    .line 279
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->setHasOptionsMenu(Z)V

    .line 280
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 284
    const v0, 0x7f03005b

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->C:Landroid/view/ViewGroup;

    .line 285
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->C:Landroid/view/ViewGroup;

    const v2, 0x7f0f01a3

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->D:Landroid/widget/ExpandableListView;

    .line 286
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->C:Landroid/view/ViewGroup;

    const v2, 0x7f0f01a0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->B:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    .line 289
    const v0, 0x7f03005c

    invoke-virtual {p1, v0, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->F:Landroid/view/View;

    .line 291
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->F:Landroid/view/View;

    const v2, 0x7f0f01aa

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->J:Landroid/widget/EditText;

    .line 292
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->J:Landroid/widget/EditText;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$1;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 323
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->J:Landroid/widget/EditText;

    iget v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->n:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->F:Landroid/view/View;

    const v2, 0x7f0f01ab

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 326
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$12;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$12;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->F:Landroid/view/View;

    const v2, 0x7f0f01ac

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 337
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$23;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$23;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->D:Landroid/widget/ExpandableListView;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->F:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->addHeaderView(Landroid/view/View;)V

    .line 349
    const v0, 0x7f0300a3

    invoke-virtual {p1, v0, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 350
    const v0, 0x7f0f0314

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->G:Landroid/widget/EditText;

    .line 351
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->G:Landroid/widget/EditText;

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$34;

    invoke-direct {v3, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$34;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 367
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->G:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->o:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->D:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->addFooterView(Landroid/view/View;)V

    .line 371
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->f()V

    .line 373
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/search/e;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->k:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->l:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->m:Ljava/util/HashMap;

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/order/search/e;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->E:Lcom/grubhub/AppBaseLibrary/android/order/search/e;

    .line 374
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->D:Landroid/widget/ExpandableListView;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->E:Lcom/grubhub/AppBaseLibrary/android/order/search/e;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 375
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move v0, v1

    .line 377
    :goto_0
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_0

    .line 378
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->D:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->D:Landroid/widget/ExpandableListView;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$42;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$42;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 408
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->D:Landroid/widget/ExpandableListView;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$43;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$43;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 454
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->C:Landroid/view/ViewGroup;

    const v2, 0x7f0f01a2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->H:Landroid/widget/Button;

    .line 455
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->H:Landroid/widget/Button;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$44;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$44;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->e()V

    .line 510
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->C:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 511
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "should_restore"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 512
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$45;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$45;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 533
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->C:Landroid/view/ViewGroup;

    const v1, 0x7f0f01a4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->I:Landroid/view/View;

    .line 534
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->I:Landroid/view/View;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 535
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->I:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 537
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->C:Landroid/view/ViewGroup;

    return-object v0

    .line 519
    :cond_2
    if-nez p3, :cond_1

    .line 520
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$46;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$46;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 530
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "should_restore"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 240
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->q:Lcom/grubhub/AppBaseLibrary/android/order/search/f;

    .line 243
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    .prologue
    .line 542
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 544
    const v0, 0x7f0f0369

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 545
    if-eqz v0, :cond_0

    .line 546
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 549
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 550
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 551
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 553
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_1

    .line 554
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const v1, 0x7f080085

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b(I)V

    .line 556
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 592
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 595
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->e()V

    .line 596
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 560
    if-nez p1, :cond_0

    .line 561
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 564
    :cond_0
    const-string v0, "selected_quantity"

    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->n:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 565
    const-string v0, "special_instructions_input"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v0, "selected_choice_options"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->m:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 568
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 569
    return-void
.end method

.method public onStart()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 573
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 574
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIFoodMenuDataModel$GHSIMenuItem;

    if-nez v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    :goto_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v6

    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CORE_ORDERING_EXP:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->RESTAURANT_DETAILS:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v3, "restaurant menu item"

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    .line 585
    invoke-interface {v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    invoke-virtual {v6, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 588
    return-void

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->B:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->b()V

    goto :goto_0

    :cond_1
    move-object v4, v5

    .line 585
    goto :goto_1
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 600
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 602
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->u:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/e;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->u:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/e;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/e;->g()V

    .line 604
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->u:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/e;

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->v:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

    if-eqz v0, :cond_1

    .line 608
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->v:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;->g()V

    .line 609
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->v:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

    .line 612
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->w:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

    if-eqz v0, :cond_2

    .line 613
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->w:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;->g()V

    .line 614
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->w:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

    .line 617
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->x:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/b;

    if-eqz v0, :cond_3

    .line 618
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->x:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/b;->g()V

    .line 619
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->x:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/b;

    .line 622
    :cond_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->t:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b;

    if-eqz v0, :cond_4

    .line 623
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->t:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b;->g()V

    .line 624
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->t:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b;

    .line 627
    :cond_4
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->y:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/s;

    if-eqz v0, :cond_5

    .line 628
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->y:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/s;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/s;->g()V

    .line 629
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->y:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/s;

    .line 632
    :cond_5
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->A:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

    if-eqz v0, :cond_6

    .line 633
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->A:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;->g()V

    .line 634
    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->A:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e;

    .line 637
    :cond_6
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->k()V

    .line 638
    return-void
.end method

.method public r()V
    .locals 0

    .prologue
    .line 1643
    return-void
.end method

.method public s()V
    .locals 5

    .prologue
    .line 1648
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 1649
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/order/h;

    if-eqz v1, :cond_1

    .line 1651
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v2

    .line 1652
    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->z()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v1

    .line 1653
    if-nez v1, :cond_0

    .line 1654
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-direct {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;-><init>()V

    .line 1656
    :cond_0
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->g:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-static {v4}, Lcom/grubhub/AppBaseLibrary/android/order/a;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setAddress(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Ljava/lang/String;)V

    .line 1657
    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/order/g;->DELIVERY:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-virtual {v1, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setOrderType(Lcom/grubhub/AppBaseLibrary/android/order/g;)V

    .line 1658
    invoke-interface {v2, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V

    .line 1660
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/h;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/order/h;->s()V

    .line 1662
    :cond_1
    return-void
.end method
