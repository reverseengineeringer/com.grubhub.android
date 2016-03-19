.class public Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:F

.field private c:F

.field private d:Lcom/grubhub/AppBaseLibrary/android/order/cart/j;

.field private e:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

.field private f:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

.field private g:Landroid/widget/EditText;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 255
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;F)F
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->b:F

    return p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;Ljava/lang/String;)F
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->a(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)F
    .locals 2

    .prologue
    .line 234
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-float v0, v0

    .line 237
    :goto_0
    return v0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Float;)Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;
    .locals 4

    .prologue
    .line 55
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;-><init>()V

    .line 56
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 57
    if-eqz p0, :cond_0

    .line 58
    const-string v2, "current_amount"

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 60
    :cond_0
    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 62
    return-object v0
.end method

.method private a(F)Ljava/lang/String;
    .locals 5

    .prologue
    const/high16 v1, 0x42c80000    # 100.0f

    .line 248
    mul-float v0, p1, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 249
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v2

    const v3, 0x7f080456

    invoke-virtual {v2, v3}, Landroid/support/v4/app/q;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->h:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    .line 190
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->isCashTipAllowed()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    .line 191
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderType()Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/g;->PICKUP:Lcom/grubhub/AppBaseLibrary/android/order/g;

    if-eq v0, v1, :cond_2

    :cond_1
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->b:F

    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->c:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4

    .line 193
    :cond_2
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->b:F

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 194
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->d:Lcom/grubhub/AppBaseLibrary/android/order/cart/j;

    if-eqz v1, :cond_3

    .line 195
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->d:Lcom/grubhub/AppBaseLibrary/android/order/cart/j;

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/j;->a(F)V

    .line 223
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->dismiss()V

    .line 224
    return-void

    .line 198
    :cond_4
    const v0, 0x7f080124

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->c:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    const v2, 0x7f080122

    .line 202
    invoke-virtual {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080123

    .line 203
    invoke-virtual {p0, v3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment$5;

    invoke-direct {v6, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;)V

    move-object v5, v4

    .line 199
    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/d;)V

    .line 216
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v3, "order tip selection"

    const-string v4, "tip minimum unfulfilled modal_impression"

    const-string v5, "1"

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;F)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->a(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;)F
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->b:F

    return v0
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->a()V

    return-void
.end method

.method static synthetic e(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;)Lcom/grubhub/AppBaseLibrary/android/order/cart/j;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->d:Lcom/grubhub/AppBaseLibrary/android/order/cart/j;

    return-object v0
.end method

.method static synthetic f(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;)F
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->c:F

    return v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 69
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/j;

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/j;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->d:Lcom/grubhub/AppBaseLibrary/android/order/cart/j;

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/order/cart/j;

    if-eqz v0, :cond_0

    .line 73
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/order/cart/j;

    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->d:Lcom/grubhub/AppBaseLibrary/android/order/cart/j;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->setStyle(II)V

    .line 82
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "current_amount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "current_amount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->b:F

    .line 88
    :goto_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->U()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    .line 89
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->X()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    .line 91
    iput v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->c:F

    .line 92
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->f:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/j/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)F

    move-result v0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->c:F

    .line 95
    :cond_0
    return-void

    .line 85
    :cond_1
    iput v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->b:F

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 99
    const v0, 0x7f030050

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 101
    const v0, 0x7f0f0169

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->g:Landroid/widget/EditText;

    .line 102
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->g:Landroid/widget/EditText;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 138
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->g:Landroid/widget/EditText;

    iget v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->b:F

    invoke-direct {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->a(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->g:Landroid/widget/EditText;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 152
    const v0, 0x7f0f016b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 153
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment$3;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    const v0, 0x7f0f016a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 161
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment$4;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 169
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 170
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 171
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, -0x2

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 175
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 177
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->c:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->g:Landroid/widget/EditText;

    const v2, 0x7f080121

    invoke-virtual {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCustomTipDialogFragment;->c:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 181
    :cond_0
    return-object v1
.end method
