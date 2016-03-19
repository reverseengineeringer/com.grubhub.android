.class final enum Lcom/braintreepayments/api/dropin/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/braintreepayments/api/dropin/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/braintreepayments/api/dropin/b;

.field public static final enum CARD_FORM:Lcom/braintreepayments/api/dropin/b;

.field public static final enum LOADING_VIEW:Lcom/braintreepayments/api/dropin/b;

.field public static final enum SELECT_VIEW:Lcom/braintreepayments/api/dropin/b;

.field private static mAnimationDuration:I


# instance fields
.field private mCurrentView:Z

.field private final mInflatedViewId:I

.field private final mStubbedViewId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 460
    new-instance v0, Lcom/braintreepayments/api/dropin/b;

    const-string v1, "LOADING_VIEW"

    sget v2, Lcom/braintreepayments/api/dropin/j;->bt_stub_loading_view:I

    sget v3, Lcom/braintreepayments/api/dropin/j;->bt_inflated_loading_view:I

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/braintreepayments/api/dropin/b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/braintreepayments/api/dropin/b;->LOADING_VIEW:Lcom/braintreepayments/api/dropin/b;

    .line 461
    new-instance v0, Lcom/braintreepayments/api/dropin/b;

    const-string v1, "SELECT_VIEW"

    sget v2, Lcom/braintreepayments/api/dropin/j;->bt_stub_payment_methods_list:I

    sget v3, Lcom/braintreepayments/api/dropin/j;->bt_inflated_payment_methods_list:I

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/braintreepayments/api/dropin/b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/braintreepayments/api/dropin/b;->SELECT_VIEW:Lcom/braintreepayments/api/dropin/b;

    .line 462
    new-instance v0, Lcom/braintreepayments/api/dropin/b;

    const-string v1, "CARD_FORM"

    sget v2, Lcom/braintreepayments/api/dropin/j;->bt_stub_payment_method_form:I

    sget v3, Lcom/braintreepayments/api/dropin/j;->bt_inflated_payment_method_form:I

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/braintreepayments/api/dropin/b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/braintreepayments/api/dropin/b;->CARD_FORM:Lcom/braintreepayments/api/dropin/b;

    .line 459
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/braintreepayments/api/dropin/b;

    sget-object v1, Lcom/braintreepayments/api/dropin/b;->LOADING_VIEW:Lcom/braintreepayments/api/dropin/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/braintreepayments/api/dropin/b;->SELECT_VIEW:Lcom/braintreepayments/api/dropin/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/braintreepayments/api/dropin/b;->CARD_FORM:Lcom/braintreepayments/api/dropin/b;

    aput-object v1, v0, v6

    sput-object v0, Lcom/braintreepayments/api/dropin/b;->$VALUES:[Lcom/braintreepayments/api/dropin/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 470
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 471
    iput p3, p0, Lcom/braintreepayments/api/dropin/b;->mStubbedViewId:I

    .line 472
    iput p4, p0, Lcom/braintreepayments/api/dropin/b;->mInflatedViewId:I

    .line 473
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/braintreepayments/api/dropin/b;->mCurrentView:Z

    .line 474
    return-void
.end method

.method static synthetic access$000(Lcom/braintreepayments/api/dropin/b;)Z
    .locals 1

    .prologue
    .line 459
    iget-boolean v0, p0, Lcom/braintreepayments/api/dropin/b;->mCurrentView:Z

    return v0
.end method

.method private getDuration(Landroid/content/Context;)J
    .locals 2

    .prologue
    .line 532
    sget v0, Lcom/braintreepayments/api/dropin/b;->mAnimationDuration:I

    if-nez v0, :cond_0

    .line 533
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/braintreepayments/api/dropin/b;->mAnimationDuration:I

    .line 537
    :cond_0
    sget v0, Lcom/braintreepayments/api/dropin/b;->mAnimationDuration:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/braintreepayments/api/dropin/b;
    .locals 1

    .prologue
    .line 459
    const-class v0, Lcom/braintreepayments/api/dropin/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/dropin/b;

    return-object v0
.end method

.method public static values()[Lcom/braintreepayments/api/dropin/b;
    .locals 1

    .prologue
    .line 459
    sget-object v0, Lcom/braintreepayments/api/dropin/b;->$VALUES:[Lcom/braintreepayments/api/dropin/b;

    invoke-virtual {v0}, [Lcom/braintreepayments/api/dropin/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/braintreepayments/api/dropin/b;

    return-object v0
.end method


# virtual methods
.method hide(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;)V
    .locals 2

    .prologue
    .line 523
    iget v0, p0, Lcom/braintreepayments/api/dropin/b;->mStubbedViewId:I

    invoke-static {p1, v0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 524
    if-nez v0, :cond_0

    .line 525
    iget v0, p0, Lcom/braintreepayments/api/dropin/b;->mInflatedViewId:I

    invoke-static {p1, v0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 528
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/braintreepayments/api/dropin/b;->mCurrentView:Z

    .line 529
    return-void
.end method

.method inflateOrFind(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 482
    iget v0, p0, Lcom/braintreepayments/api/dropin/b;->mStubbedViewId:I

    invoke-static {p1, v0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 483
    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 486
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/braintreepayments/api/dropin/b;->mInflatedViewId:I

    invoke-static {p1, v0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method show(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;)Landroid/view/View;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 497
    invoke-static {}, Lcom/braintreepayments/api/dropin/b;->values()[Lcom/braintreepayments/api/dropin/b;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 498
    if-eq p0, v4, :cond_0

    .line 499
    invoke-virtual {v4, p1}, Lcom/braintreepayments/api/dropin/b;->hide(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;)V

    .line 497
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 503
    :cond_1
    invoke-virtual {p0, p1}, Lcom/braintreepayments/api/dropin/b;->inflateOrFind(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;)Landroid/view/View;

    move-result-object v0

    .line 504
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_2

    .line 505
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 506
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 507
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/braintreepayments/api/dropin/b;->getDuration(Landroid/content/Context;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 514
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/braintreepayments/api/dropin/b;->mCurrentView:Z

    .line 516
    return-object v0

    .line 511
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
