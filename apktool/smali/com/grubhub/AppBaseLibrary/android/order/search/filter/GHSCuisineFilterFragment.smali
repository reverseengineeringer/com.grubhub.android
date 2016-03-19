.class public Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;
.super Landroid/support/v4/app/ListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/order/search/filter/c;


# static fields
.field private static m:F

.field private static r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private i:Landroid/view/View;

.field private j:Landroid/widget/ListView;

.field private k:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a;

.field private l:I

.field private n:I

.field private o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->r:Ljava/util/List;

    .line 63
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 64
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->r:Ljava/util/List;

    add-int/lit8 v2, v0, 0x41

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 348
    return-void
.end method

.method static synthetic a(F)F
    .locals 0

    .prologue
    .line 43
    sput p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->m:F

    return p0
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 343
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->j:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 344
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->j:Landroid/widget/ListView;

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 345
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->j:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->j:Landroid/widget/ListView;

    invoke-interface {v1, p1, v0, v2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 346
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    if-eqz p1, :cond_1

    .line 188
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 189
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 190
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 188
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 194
    :cond_1
    return-void
.end method

.method private e()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->o:Ljava/util/HashMap;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->p:Ljava/util/ArrayList;

    .line 135
    const/16 v0, 0x41

    move v2, v0

    move v0, v3

    :goto_0
    const/16 v1, 0x5b

    if-ge v2, v1, :cond_2

    .line 136
    int-to-char v1, v2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    move v1, v0

    .line 137
    :goto_1
    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->k:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a;

    invoke-virtual {v5}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 138
    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->k:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a;

    invoke-virtual {v5, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a;->a(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;

    move-result-object v5

    .line 139
    invoke-virtual {v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 140
    aget-char v5, v5, v3

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    .line 141
    invoke-virtual {v5, v4}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 143
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->k:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a;->getCount()I

    move-result v1

    .line 144
    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->o:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->p:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v1

    move v1, v0

    move v0, v7

    .line 137
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 135
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    goto :goto_0

    .line 149
    :cond_2
    return-void
.end method

.method private f()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 200
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->k:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a;

    if-eqz v0, :cond_1

    .line 201
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->k:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a;->getCount()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    .line 202
    :goto_0
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->k:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a;

    invoke-virtual {v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 203
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->k:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a;

    invoke-virtual {v3, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a;->a(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;

    move-result-object v3

    .line 204
    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;

    invoke-virtual {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;->getItemCount()I

    move-result v6

    invoke-virtual {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;->getUriQueryFragment()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v6, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 205
    invoke-virtual {v4, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;->setSelected(Z)V

    .line 207
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_0
    iput-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->q:Ljava/util/ArrayList;

    .line 211
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->k:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->q:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 212
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->k:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a;->notifyDataSetChanged()V

    .line 214
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 327
    invoke-super/range {p0 .. p5}, Landroid/support/v4/app/ListFragment;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 328
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->k:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a;

    invoke-virtual {v0, p3}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a;->a(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;

    move-result-object v1

    .line 330
    if-eqz v1, :cond_0

    .line 331
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;->setSelected(Z)V

    .line 332
    invoke-direct {p0, p3}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->a(I)V

    .line 334
    :cond_0
    return-void

    .line 331
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V
    .locals 1

    .prologue
    .line 305
    if-eqz p1, :cond_0

    .line 306
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setHasUserSelectedCuisines(Z)V

    .line 307
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setCuisineList(Ljava/util/ArrayList;)V

    .line 311
    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 220
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->i:Landroid/view/View;

    const v1, 0x7f0f0168

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 221
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->l:I

    .line 223
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->l:I

    int-to-double v0, v0

    iget v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->n:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 226
    sget v2, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->m:F

    float-to-double v2, v2

    div-double v0, v2, v0

    double-to-int v0, v0

    .line 229
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->o:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->p:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 231
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->j:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 233
    :cond_0
    return-void
.end method

.method public c()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 239
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->i:Landroid/view/View;

    const v1, 0x7f0f0168

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 240
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 241
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->n:I

    .line 243
    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->n:I

    if-ge v1, v9, :cond_0

    .line 285
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x14

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 248
    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->n:I

    .line 249
    :goto_1
    if-le v1, v2, :cond_1

    .line 250
    div-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 253
    :cond_1
    if-lez v1, :cond_2

    .line 254
    iget v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->n:I

    div-int v1, v2, v1

    int-to-double v2, v1

    .line 260
    :goto_2
    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->n:I

    int-to-double v6, v1

    cmpg-double v1, v4, v6

    if-gtz v1, :cond_3

    .line 261
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->p:Ljava/util/ArrayList;

    double-to-int v6, v4

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 262
    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;-><init>(Landroid/content/Context;)V

    .line 263
    invoke-virtual {v6, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    const/16 v1, 0x11

    invoke-virtual {v6, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setGravity(I)V

    .line 265
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    const v7, 0x7f090221

    invoke-virtual {v6, v1, v7}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 266
    const v1, 0x7f08017a

    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 267
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f0d003f

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setTextColor(I)V

    .line 268
    const/high16 v1, 0x41300000    # 11.0f

    invoke-virtual {v6, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setTextSize(F)V

    .line 269
    const/4 v1, 0x0

    invoke-virtual {v6, v1, v9}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 270
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v1, v8, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 271
    invoke-virtual {v6, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 260
    add-double/2addr v4, v2

    goto :goto_2

    :cond_2
    move-wide v2, v4

    .line 256
    goto :goto_2

    .line 275
    :cond_3
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->l:I

    .line 277
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment$3;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->f()V

    .line 316
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 289
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 290
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->a()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->j:Landroid/widget/ListView;

    .line 291
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 292
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/q;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1, v4, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 293
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 295
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->j:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 296
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 154
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 74
    const-string v1, "savedCuisineArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 75
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->W()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;

    move-result-object v1

    .line 79
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;->getTotalResults()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 80
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;->getCuisineList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->q:Ljava/util/ArrayList;

    .line 81
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->q:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->a(Ljava/util/List;)V

    .line 93
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->q:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->q:Ljava/util/ArrayList;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment$1;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 102
    :cond_1
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->q:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    .line 104
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 105
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;

    .line 106
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 107
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 83
    :cond_3
    if-eqz v0, :cond_4

    .line 84
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->q:Ljava/util/ArrayList;

    goto :goto_0

    .line 85
    :cond_4
    if-eqz v1, :cond_0

    .line 86
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantListDataModel;->getCuisineList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->q:Ljava/util/ArrayList;

    .line 87
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->q:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->a(Ljava/util/List;)V

    goto :goto_0

    .line 112
    :cond_5
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;

    .line 113
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSCuisine;->setSelected(Z)V

    goto :goto_2

    .line 116
    :cond_6
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 158
    const v0, 0x7f03004f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->i:Landroid/view/View;

    .line 159
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->i:Landroid/view/View;

    const v1, 0x7f0f0167

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment$2;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->setHasOptionsMenu(Z)V

    .line 167
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->i:Landroid/view/View;

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 300
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 174
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->q:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->k:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a;

    .line 175
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->k:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/a;

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->a(Landroid/widget/ListAdapter;)V

    .line 177
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->e()V

    .line 178
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSCuisineFilterFragment;->c()V

    .line 179
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 120
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onStart()V

    .line 122
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CORE_ORDERING_EXP:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->RESTAURANT_SEARCH:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v4, "restaurants cuisine filter"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 125
    return-void
.end method
