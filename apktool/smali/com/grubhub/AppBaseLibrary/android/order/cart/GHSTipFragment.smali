.class public Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/order/cart/j;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Z

.field private g:F

.field private h:Ljava/lang/String;

.field private i:Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

.field private j:[Landroid/widget/Button;

.field private k:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

.field private l:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

.field private m:Lcom/grubhub/AppBaseLibrary/android/order/cart/o;

.field private n:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 53
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment$1;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->n:Landroid/view/View$OnClickListener;

    .line 109
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;F)F
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->g:F

    return p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->e:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->h:Ljava/lang/String;

    return-object p1
.end method

.method private a(I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 329
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->j:[Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 330
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->j:[Landroid/widget/Button;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 331
    invoke-virtual {v4}, Landroid/widget/Button;->getId()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 332
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setSelected(Z)V

    .line 333
    invoke-virtual {v4}, Landroid/widget/Button;->getId()I

    move-result v4

    invoke-static {v4}, Lcom/grubhub/AppBaseLibrary/android/order/cart/n;->fromInt(I)Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

    move-result-object v4

    iput-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->i:Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

    .line 330
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    :cond_0
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_1

    .line 339
    :cond_1
    return-void
.end method

.method private a(Landroid/widget/Button;FZ)V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    .line 306
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    if-eqz v0, :cond_1

    .line 307
    invoke-virtual {p1}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 309
    if-eqz p3, :cond_0

    mul-float v1, p2, v4

    div-float p2, v1, v4

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-static {v1, p2}, Lcom/grubhub/AppBaseLibrary/android/utils/j/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;F)F

    move-result v1

    .line 311
    const-string v2, "%.0f%%"

    new-array v3, v8, [Ljava/lang/Object;

    mul-float/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 313
    const v3, 0x7f08039f

    invoke-virtual {p0, v3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/grubhub/AppBaseLibrary/android/views/h;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 314
    new-instance v3, Landroid/text/SpannableString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f080456

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 315
    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/views/GHSTypefaceSpan;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/widget/Button;->getTextSize()F

    move-result v6

    float-to-int v6, v6

    invoke-direct {v4, v5, v0, v6}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTypefaceSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v5, 0x21

    invoke-virtual {v3, v4, v9, v0, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 317
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 318
    const v0, 0x7f08051d

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 319
    const v0, 0x7f08051e

    invoke-virtual {p1, v0, v2}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 321
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 281
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->m:Lcom/grubhub/AppBaseLibrary/android/order/cart/o;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->m:Lcom/grubhub/AppBaseLibrary/android/order/cart/o;

    iget-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->f:Z

    iget v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->g:F

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/o;->a(ZFLjava/lang/String;)V

    .line 284
    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 290
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSTipModel;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSTipModel;-><init>()V

    .line 291
    iget-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->f:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSTipModel;->setIsCash(Ljava/lang/Boolean;)V

    .line 292
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->i:Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSTipModel;->setSelectedTip(Lcom/grubhub/AppBaseLibrary/android/order/cart/n;)V

    .line 293
    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->g:F

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSTipModel;->setTipAmount(F)V

    .line 295
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSTipModel;)V

    .line 296
    return-void
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->c()V

    return-void
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x1

    const v11, 0x7f08051e

    const v10, 0x7f08051d

    const/4 v3, 0x0

    .line 202
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->U()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    .line 203
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->X()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    .line 206
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->a:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->isCashTipAllowed()Z

    move-result v0

    if-nez v0, :cond_6

    .line 208
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-static {v1, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/j/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)F

    move-result v1

    invoke-direct {p0, v0, v1, v3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->a(Landroid/widget/Button;FZ)V

    .line 214
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->b:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-static {v1, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/j/a;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)F

    move-result v1

    invoke-direct {p0, v0, v1, v9}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->a(Landroid/widget/Button;FZ)V

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->c:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-static {v1, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/j/a;->c(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)F

    move-result v1

    invoke-direct {p0, v0, v1, v9}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->a(Landroid/widget/Button;FZ)V

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->d:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 223
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->l:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-static {v1, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/j/a;->d(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)F

    move-result v1

    invoke-direct {p0, v0, v1, v9}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->a(Landroid/widget/Button;FZ)V

    .line 226
    :cond_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->e:Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 227
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->e:Landroid/widget/Button;

    const v1, 0x7f080521

    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 229
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->e:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080522

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 230
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->e:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08039f

    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/h;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 234
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->i:Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/n;->TIP_BUTTON_CUSTOM:Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

    if-ne v0, v1, :cond_8

    .line 236
    const-string v0, "$"

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 239
    :goto_1
    new-instance v1, Landroid/text/SpannableString;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v7, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->e:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f080458

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    iget v9, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->g:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 240
    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/views/GHSTypefaceSpan;

    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->e:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getTextSize()F

    move-result v6

    float-to-int v6, v6

    invoke-direct {v4, v2, v5, v6}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTypefaceSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;I)V

    const/16 v5, 0x21

    invoke-virtual {v1, v4, v3, v0, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 242
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->e:Landroid/widget/Button;

    iget v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->g:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v10, v4}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    move-object v0, v1

    .line 253
    :goto_2
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->e:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :cond_4
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->i:Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->k:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderType()Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/g;->DELIVERY:Lcom/grubhub/AppBaseLibrary/android/order/g;

    if-ne v0, v1, :cond_9

    .line 258
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->c:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->a(I)V

    .line 259
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->c:Landroid/widget/Button;

    invoke-virtual {v0, v10}, Landroid/widget/Button;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->g:F

    .line 260
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->c:Landroid/widget/Button;

    invoke-virtual {v0, v11}, Landroid/widget/Button;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->h:Ljava/lang/String;

    .line 273
    :cond_5
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->c()V

    .line 274
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->b()V

    .line 275
    return-void

    .line 210
    :cond_6
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->a:Landroid/widget/Button;

    const v1, 0x7f08051f

    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 236
    :cond_7
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    goto/16 :goto_1

    .line 244
    :cond_8
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 247
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 248
    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/views/GHSTypefaceSpan;

    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->e:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getTextSize()F

    move-result v6

    float-to-int v6, v6

    invoke-direct {v4, v2, v5, v6}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTypefaceSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;I)V

    const/16 v5, 0x21

    invoke-virtual {v0, v4, v3, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 250
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->e:Landroid/widget/Button;

    invoke-virtual {v1, v10, v2}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    goto :goto_2

    .line 262
    :cond_9
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->j:[Landroid/widget/Button;

    array-length v5, v4

    move v1, v3

    :goto_3
    if-ge v1, v5, :cond_5

    aget-object v3, v4, v1

    .line 263
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->i:Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

    if-eqz v0, :cond_a

    invoke-virtual {v3}, Landroid/widget/Button;->getId()I

    move-result v0

    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->i:Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

    invoke-virtual {v6}, Lcom/grubhub/AppBaseLibrary/android/order/cart/n;->toInt()I

    move-result v6

    if-ne v0, v6, :cond_a

    .line 264
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->i:Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/n;->toInt()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->a(I)V

    .line 265
    invoke-virtual {v3, v10}, Landroid/widget/Button;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 266
    invoke-virtual {v3, v10}, Landroid/widget/Button;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_4
    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->g:F

    .line 267
    invoke-virtual {v3, v11}, Landroid/widget/Button;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 268
    invoke-virtual {v3, v11}, Landroid/widget/Button;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->h:Ljava/lang/String;

    .line 262
    :cond_a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 266
    :cond_b
    const/4 v0, 0x0

    goto :goto_4

    :cond_c
    move-object v0, v2

    .line 268
    goto :goto_5
.end method

.method public a(F)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 343
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->e:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 344
    iput-boolean v8, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->f:Z

    .line 345
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->e:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 348
    const v0, 0x7f080522

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 349
    const-string v0, "$"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 352
    :goto_0
    const v3, 0x7f08039f

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/grubhub/AppBaseLibrary/android/views/h;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 353
    new-instance v4, Landroid/text/SpannableString;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v6, 0x7f080458

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 354
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSTypefaceSpan;

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->e:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getTextSize()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v5}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTypefaceSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;I)V

    const/16 v2, 0x21

    invoke-virtual {v4, v1, v8, v0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 356
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->e:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->e:Landroid/widget/Button;

    const v1, 0x7f08051d

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 358
    iput p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->g:F

    .line 359
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->e:Landroid/widget/Button;

    const v1, 0x7f08051e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->h:Ljava/lang/String;

    .line 360
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->e:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->a(I)V

    .line 361
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->c()V

    .line 362
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->b()V

    .line 364
    :cond_0
    return-void

    .line 349
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 140
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/o;

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/o;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->m:Lcom/grubhub/AppBaseLibrary/android/order/cart/o;

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/order/cart/o;

    if-eqz v0, :cond_0

    .line 143
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/order/cart/o;

    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->m:Lcom/grubhub/AppBaseLibrary/android/order/cart/o;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 154
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 156
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    .line 157
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->aa()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSTipModel;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSTipModel;->getSelectedTip()Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

    move-result-object v1

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->i:Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

    .line 160
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSTipModel;->getIsCash()Z

    move-result v1

    iput-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->f:Z

    .line 161
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSTipModel;->getTipAmount()F

    move-result v0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->g:F

    .line 163
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 167
    const v0, 0x7f030078

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 169
    const v0, 0x7f0f028a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->a:Landroid/widget/Button;

    .line 170
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->a:Landroid/widget/Button;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    const v0, 0x7f0f028b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->b:Landroid/widget/Button;

    .line 173
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->b:Landroid/widget/Button;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    const v0, 0x7f0f028c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->c:Landroid/widget/Button;

    .line 176
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->c:Landroid/widget/Button;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    const v0, 0x7f0f028d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->d:Landroid/widget/Button;

    .line 179
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->d:Landroid/widget/Button;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    const v0, 0x7f0f028e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->e:Landroid/widget/Button;

    .line 182
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->e:Landroid/widget/Button;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/Button;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->a:Landroid/widget/Button;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->b:Landroid/widget/Button;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->c:Landroid/widget/Button;

    aput-object v3, v0, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->d:Landroid/widget/Button;

    aput-object v3, v0, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->e:Landroid/widget/Button;

    aput-object v3, v0, v2

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->j:[Landroid/widget/Button;

    .line 193
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->a()V

    .line 195
    return-object v1
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSTipFragment;->m:Lcom/grubhub/AppBaseLibrary/android/order/cart/o;

    .line 151
    return-void
.end method
