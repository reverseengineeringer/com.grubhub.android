.class public Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/c;


# instance fields
.field private A:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/m;

.field private B:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/d;

.field private C:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/k/a;

.field private D:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/k/b;

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:I

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

.field private P:Lcom/grubhub/AppBaseLibrary/android/order/cart/k;

.field private Q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

.field private R:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;

.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ProgressBar;

.field private j:Landroid/widget/ProgressBar;

.field private k:Landroid/widget/ViewFlipper;

.field private l:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/Button;

.field private p:Landroid/widget/TextView;

.field private q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

.field private r:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSTipModel;

.field private s:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

.field private t:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

.field private u:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

.field private v:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/c;

.field private w:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/h;

.field private x:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private y:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;

.field private z:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 1817
    return-void
.end method

.method private a(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;
    .locals 3

    .prologue
    .line 796
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030083

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 797
    const v0, 0x7f0f02c7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 798
    const v0, 0x7f0f02c6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    return-object v1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .prologue
    .line 812
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030083

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 813
    const v0, 0x7f0f02c7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 814
    const v0, 0x7f0f02c6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 816
    return-object v1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->x:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/c;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/c;
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->v:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/c;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/h;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/h;
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->w:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/h;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->y:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/j;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/j;
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->z:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/j;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/m;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/m;
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->A:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/m;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/d;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/d;
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->B:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/d;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/k/b;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/k/b;
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->D:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/k/b;

    return-object p1
.end method

.method public static a(Lcom/grubhub/AppBaseLibrary/android/order/g;Ljava/lang/String;Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;
    .locals 4

    .prologue
    .line 170
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;-><init>()V

    .line 171
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 172
    const-string v2, "order_type"

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/g;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v2, "verified_first_name"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v2, "verified_last_name"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->setArguments(Landroid/os/Bundle;)V

    .line 177
    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)Lcom/grubhub/AppBaseLibrary/android/order/cart/k;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->P:Lcom/grubhub/AppBaseLibrary/android/order/cart/k;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 605
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->F()Z

    move-result v0

    if-nez v0, :cond_0

    .line 629
    :goto_0
    return-void

    .line 610
    :cond_0
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyAccessModel$GHSYummyRummyMetadata;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyAccessModel$GHSYummyRummyMetadata;-><init>()V

    .line 611
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->X()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getCartId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/yummyRummy/GHSIYummyRummyAccessModel$GHSIYummyRummyMetadataModel;->setOrderId(Ljava/lang/String;)V

    .line 612
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyAccessModel;

    invoke-direct {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/yummyRummy/GHSYummyRummyAccessModel;-><init>()V

    .line 613
    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/yummyRummy/GHSIYummyRummyAccessModel;->setMetadata(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/yummyRummy/GHSIYummyRummyAccessModel$GHSIYummyRummyMetadataModel;)V

    .line 616
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/k/a;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v2

    invoke-direct {v0, v2, v1, v3, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/k/a;-><init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/yummyRummy/GHSIYummyRummyAccessModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->C:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/k/a;

    .line 618
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->C:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/k/a;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$34;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$34;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/k/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 628
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->C:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/k/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/k/a;->a()V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 915
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/c;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->PROMO_CODE:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    const/4 v4, 0x0

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$40;

    invoke-direct {v5, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$40;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)V

    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$41;

    invoke-direct {v6, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$41;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)V

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Ljava/lang/Integer;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->v:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/c;

    .line 931
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->v:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/c;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$42;

    invoke-direct {v1, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$42;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 947
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->v:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/c;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 963
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->v:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/c;->a()V

    .line 964
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;I)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 580
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->isAsapOrder()Z

    move-result v0

    if-nez v0, :cond_0

    .line 581
    const-string v0, "%s at %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MMMM d, yyyy"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    .line 582
    invoke-interface {v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getExpectedTimeInMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "h:mm a"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    .line 583
    invoke-interface {v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getExpectedTimeInMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 581
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    const v0, 0x7f0804dd

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    :goto_0
    return-void

    .line 589
    :cond_0
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->H:I

    if-nez v0, :cond_1

    .line 590
    iput p4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->H:I

    .line 593
    :cond_1
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->H:I

    .line 594
    add-int/lit8 v1, v0, 0xa

    .line 595
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v3, 0x7f080103

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "-"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/order/cart/l;)V
    .locals 4

    .prologue
    .line 990
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getAppliedDiscount()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;

    move-result-object v0

    .line 991
    if-nez v0, :cond_0

    .line 1041
    :goto_0
    return-void

    .line 995
    :cond_0
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/h;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;->getDiscountId()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$3;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)V

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$4;

    invoke-direct {v3, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)V

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/h;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->w:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/h;

    .line 1010
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->w:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/h;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/order/cart/l;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/h;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 1026
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->w:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/h;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$6;

    invoke-direct {v1, p0, p2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$6;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Lcom/grubhub/AppBaseLibrary/android/order/cart/l;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/h;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 1040
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->w:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/h;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/h;->a()V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/cart/l;)V
    .locals 3

    .prologue
    .line 1069
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;

    const/4 v1, 0x0

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$7;

    invoke-direct {v2, p0, p3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$7;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Lcom/grubhub/AppBaseLibrary/android/order/cart/l;)V

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->y:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;

    .line 1080
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->y:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;->a()V

    .line 1081
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 677
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 678
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 679
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 680
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 683
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->d:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->e:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 688
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 691
    :cond_1
    return-void
.end method

.method private a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 1156
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/m;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    iget-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->E:Z

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;->getCartId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;->getCheckoutToken()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$15;

    invoke-direct {v6, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$15;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)V

    invoke-direct/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/m;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->A:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/m;

    .line 1163
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->A:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/m;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$16;

    invoke-direct {v1, p0, p2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$16;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/m;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 1187
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->A:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/m;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$17;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$17;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/m;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 1193
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->A:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/m;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/m;->a()V

    .line 1194
    return-void
.end method

.method private a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V
    .locals 2

    .prologue
    .line 972
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    .line 975
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getAppliedDiscount()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->e:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 976
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getAppliedDiscount()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;->getDiscountCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 979
    :cond_0
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/m;->VALID:Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/m;)V

    .line 980
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->d()V

    .line 981
    return-void
.end method

.method private a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;Lcom/grubhub/AppBaseLibrary/android/order/cart/l;)V
    .locals 2

    .prologue
    .line 1050
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    .line 1051
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->e:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1052
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/m;->DEFAULT:Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/m;)V

    .line 1053
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->d()V

    .line 1055
    if-eqz p2, :cond_0

    .line 1056
    invoke-interface {p2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/l;->a()V

    .line 1058
    :cond_0
    return-void
.end method

.method private a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1513
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/grubhub/AppBaseLibrary/android/utils/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;Z)Ljava/util/Set;

    move-result-object v0

    .line 1514
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1559
    :cond_0
    :goto_0
    return-void

    .line 1518
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->O:Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/m;->VALID:Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    if-ne v0, v1, :cond_0

    .line 1519
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v7

    .line 1522
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    const v1, 0x7f0802ce

    const v2, 0x7f080355

    const v3, 0x7f0803e5

    const v4, 0x7f0800e1

    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$35;

    invoke-direct {v6, p0, v7, p2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$35;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;IIIIILcom/grubhub/AppBaseLibrary/android/d;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/order/cart/l;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/order/cart/l;)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/cart/l;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/cart/l;)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->b(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIBillModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;Lcom/grubhub/AppBaseLibrary/android/order/cart/l;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;Lcom/grubhub/AppBaseLibrary/android/order/cart/l;)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Lcom/grubhub/AppBaseLibrary/android/order/cart/m;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/m;)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->b(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    return-void
.end method

.method private a(Lcom/grubhub/AppBaseLibrary/android/order/cart/m;)V
    .locals 9

    .prologue
    const v7, 0x7f0804d2

    const/4 v3, 0x0

    const/16 v5, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 825
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getAmountDueCents()Ljava/lang/Integer;

    move-result-object v0

    .line 826
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 828
    :goto_0
    sget-object v4, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$37;->a:[I

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/m;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_0

    .line 891
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->e:Landroid/widget/EditText;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->f:Landroid/widget/Button;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->g:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->h:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->i:Landroid/widget/ProgressBar;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->j:Landroid/widget/ProgressBar;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->k:Landroid/widget/ViewFlipper;

    if-eqz v4, :cond_0

    .line 893
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 894
    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->f:Landroid/widget/Button;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-lez v4, :cond_c

    move v4, v1

    :goto_1
    invoke-virtual {v6, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 895
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->f:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(I)V

    .line 896
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 897
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 898
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 899
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 900
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 901
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->k:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v2}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 903
    :cond_0
    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/order/cart/m;->DEFAULT:Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    iput-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->O:Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    .line 904
    iget-boolean v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->G:Z

    if-nez v3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    invoke-direct {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Z)V

    .line 907
    :goto_2
    return-void

    :cond_3
    move v0, v2

    .line 826
    goto :goto_0

    .line 830
    :pswitch_0
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->e:Landroid/widget/EditText;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->f:Landroid/widget/Button;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->g:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->h:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->i:Landroid/widget/ProgressBar;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->j:Landroid/widget/ProgressBar;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->k:Landroid/widget/ViewFlipper;

    if-eqz v4, :cond_4

    .line 834
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getAppliedDiscount()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;

    move-result-object v6

    .line 835
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    if-eqz v4, :cond_d

    if-eqz v6, :cond_d

    .line 836
    invoke-interface {v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;->getDiscountCode()Ljava/lang/String;

    move-result-object v4

    .line 837
    invoke-interface {v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;->getDiscountDescription()Ljava/lang/String;

    move-result-object v3

    .line 840
    :goto_3
    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 841
    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->f:Landroid/widget/Button;

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 842
    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->f:Landroid/widget/Button;

    const v7, 0x7f0804d6

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 843
    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 844
    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->g:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0051

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 845
    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->g:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v5

    :goto_4
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 846
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 847
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 848
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 849
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->k:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 851
    :cond_4
    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/order/cart/m;->VALID:Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    iput-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->O:Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    .line 852
    iget-boolean v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->G:Z

    if-nez v3, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    move v2, v1

    :cond_6
    invoke-direct {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Z)V

    goto/16 :goto_2

    :cond_7
    move v3, v2

    .line 845
    goto :goto_4

    .line 856
    :pswitch_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->e:Landroid/widget/EditText;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->f:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->i:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->j:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->k:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_8

    .line 858
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 859
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->f:Landroid/widget/Button;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-lez v4, :cond_9

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 860
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->f:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(I)V

    .line 861
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->g:Landroid/widget/TextView;

    const v1, 0x7f080362

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 862
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0d0042

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 863
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 864
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 865
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 866
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 868
    :cond_8
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/m;->INVALID:Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->O:Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    .line 869
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->G:Z

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Z)V

    goto/16 :goto_2

    :cond_9
    move v1, v2

    .line 859
    goto :goto_5

    .line 873
    :pswitch_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->e:Landroid/widget/EditText;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->f:Landroid/widget/Button;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->i:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->j:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->k:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_a

    .line 875
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 876
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->f:Landroid/widget/Button;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-lez v4, :cond_b

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 877
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->f:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(I)V

    .line 878
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->g:Landroid/widget/TextView;

    const v1, 0x7f080361

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 879
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0d0042

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 880
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 881
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 882
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 883
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 885
    :cond_a
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/m;->NO_BALANCE:Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->O:Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    .line 886
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->G:Z

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Z)V

    goto/16 :goto_2

    :cond_b
    move v1, v2

    .line 876
    goto :goto_6

    :cond_c
    move v4, v2

    .line 894
    goto/16 :goto_1

    :cond_d
    move-object v4, v3

    goto/16 :goto_3

    .line 828
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Ljava/lang/Integer;)V
    .locals 7

    .prologue
    .line 1205
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->CASH:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    if-ne p2, v0, :cond_0

    .line 1206
    invoke-direct {p0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->b(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Ljava/lang/Integer;)V

    .line 1234
    :goto_0
    return-void

    .line 1211
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v4

    .line 1212
    new-instance v0, Lcom/braintreepayments/api/a/a;

    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->s()Lcom/braintreepayments/api/a/b;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/braintreepayments/api/a/a;-><init>(Landroid/app/Activity;Lcom/braintreepayments/api/a/b;)V

    invoke-virtual {v0}, Lcom/braintreepayments/api/a/a;->a()Ljava/lang/String;

    move-result-object v2

    .line 1213
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/d;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getCartId()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$18;

    invoke-direct {v6, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$18;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)V

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->B:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/d;

    .line 1219
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->B:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/d;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$19;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$19;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/d;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 1226
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->B:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/d;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$20;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$20;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/d;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 1233
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->B:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/d;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/d;->a()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V
    .locals 4

    .prologue
    .line 1310
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$27;

    invoke-direct {v3, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$27;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)V

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->y:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;

    .line 1316
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->y:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$28;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$28;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 1376
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->y:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$29;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$29;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 1382
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->y:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;->a()V

    .line 1383
    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->o:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 1502
    :goto_0
    return-void

    .line 1496
    :cond_0
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->o:Landroid/widget/Button;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->Q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->E:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->J:Ljava/lang/String;

    .line 1499
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->K:Ljava/lang/String;

    .line 1500
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->L:Ljava/lang/String;

    .line 1501
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 1496
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 1501
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Z)Z
    .locals 0

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->F:Z

    return p1
.end method

.method private b()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 650
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$38;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$38;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)V

    return-object v0
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    return-object p1
.end method

.method private b(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1090
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->E:Z

    if-eqz v0, :cond_0

    .line 1091
    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSDeliveryInfoDataModel;

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->Q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-direct {v3, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSDeliveryInfoDataModel;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    .line 1092
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSDeliveryInfoDataModel;->setDeliveryInstructions(Ljava/lang/String;)V

    .line 1094
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$8;

    invoke-direct {v4, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$8;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)V

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$9;

    invoke-direct {v5, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$9;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)V

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;-><init>(Landroid/content/Context;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryInfo;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->x:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;

    .line 1129
    :goto_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->x:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$13;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$13;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 1139
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->x:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$14;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$14;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 1145
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->x:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->a()V

    .line 1146
    return-void

    .line 1108
    :cond_0
    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPickupInfoDataModel;

    invoke-direct {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPickupInfoDataModel;-><init>()V

    .line 1109
    const-string v0, "%s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->J:Ljava/lang/String;

    aput-object v4, v1, v2

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->K:Ljava/lang/String;

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPickupInfoDataModel;->setName(Ljava/lang/String;)V

    .line 1110
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPickupInfoDataModel;->setPickupInstructions(Ljava/lang/String;)V

    .line 1111
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->L:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPickupInfoDataModel;->setPhone(Ljava/lang/String;)V

    .line 1112
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->N()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPickupInfoDataModel;->setEmail(Ljava/lang/String;)V

    .line 1114
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$10;

    invoke-direct {v4, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$10;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)V

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$11;

    invoke-direct {v5, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$11;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)V

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;-><init>(Landroid/content/Context;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPickupInfo;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->x:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;

    goto :goto_0
.end method

.method private b(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 11

    .prologue
    const v9, 0x7f080365

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 1567
    iput-boolean v7, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->F:Z

    .line 1568
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v4

    .line 1569
    if-eqz v4, :cond_3

    if-eqz p1, :cond_3

    .line 1570
    instance-of v0, v4, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v0, :cond_0

    move-object v0, v4

    .line 1571
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    invoke-virtual {v0, v7}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Z)V

    .line 1574
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->o:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1577
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->c()Lcom/grubhub/AppBaseLibrary/android/b/a;

    move-result-object v0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_HTTP557:Lcom/grubhub/AppBaseLibrary/android/b/a;

    if-ne v0, v1, :cond_6

    .line 1579
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "exit links"

    const-string v4, "unable to process orders modal_impression"

    const-string v5, ""

    invoke-direct {v1, v2, v4, v5}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 1584
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 1586
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 1588
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 1589
    :cond_2
    const v0, 0x7f080364

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1594
    :goto_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->f()Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f0803e5

    .line 1598
    invoke-virtual {p0, v4}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v4, v3

    move-object v6, v3

    .line 1594
    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/d;)V

    .line 1650
    :cond_3
    :goto_1
    return-void

    .line 1591
    :cond_4
    invoke-virtual {p0, v9}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/h/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1601
    :cond_5
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v4

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->f()Ljava/lang/String;

    move-result-object v5

    .line 1602
    invoke-virtual {p0, v9}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v7

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/h/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1603
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->g()Ljava/lang/String;

    move-result-object v7

    .line 1604
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->h()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$36;

    invoke-direct {v10, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$36;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)V

    move-object v9, v3

    .line 1601
    invoke-static/range {v4 .. v10}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/d;)V

    goto :goto_1

    .line 1642
    :cond_6
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->f()Ljava/lang/String;

    move-result-object v5

    .line 1643
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    .line 1644
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->g()Ljava/lang/String;

    move-result-object v7

    .line 1645
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->h()Ljava/lang/String;

    move-result-object v8

    .line 1646
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->i()Ljava/lang/String;

    move-result-object v9

    move-object v10, v3

    .line 1641
    invoke-static/range {v4 .. v10}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/d;)V

    goto :goto_1
.end method

.method private b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V
    .locals 2

    .prologue
    .line 1427
    const-string v0, "PLACED_ORDER_PAYMENT_METHOD"

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$33;

    invoke-direct {v1, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$33;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1430
    return-void
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->c(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Ljava/lang/Integer;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1391
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 1393
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/j;

    const/4 v2, 0x0

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$30;

    invoke-direct {v3, p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$30;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Landroid/app/Activity;)V

    invoke-direct {v1, v0, p1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/j;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->z:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/j;

    .line 1401
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->z:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/j;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$31;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$31;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/j;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 1409
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->z:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/j;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$32;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$32;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/j;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 1418
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->z:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/j;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/j;->a()V

    .line 1419
    return-void
.end method

.method private b(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Ljava/lang/Integer;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1245
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getAppliedPayment()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getAppliedPayment()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1246
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/h;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getAppliedPayment()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/h;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->w:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/h;

    .line 1248
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->w:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/h;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$21;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$21;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/h;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 1255
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->w:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/h;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$22;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$22;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/h;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 1262
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->w:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/h;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/h;->a()V

    .line 1267
    :goto_0
    return-void

    .line 1265
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->c(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->E:Z

    return v0
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->Q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getAppliedDiscount()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;

    move-result-object v0

    .line 701
    if-eqz v0, :cond_1

    .line 702
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;->getDiscountCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->N:Ljava/lang/String;

    .line 708
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->N:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 709
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/m;->VALID:Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->O:Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    .line 713
    :goto_1
    return-void

    .line 704
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->N:Ljava/lang/String;

    goto :goto_0

    .line 711
    :cond_2
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/m;->DEFAULT:Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->O:Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    goto :goto_1
.end method

.method private c(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1658
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->o:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 1659
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->CASH:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    if-ne p1, v0, :cond_2

    const v0, 0x7f0804d4

    .line 1663
    :goto_0
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getAmountDue()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getAmountDue()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1666
    :goto_1
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->n:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 1667
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->n:Landroid/widget/TextView;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v4, 0x7f080456

    invoke-virtual {p0, v4}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1669
    :cond_0
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->o:Landroid/widget/Button;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v3, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1671
    :cond_1
    return-void

    .line 1659
    :cond_2
    const v0, 0x7f0804d5

    goto :goto_0

    .line 1663
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private c(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Ljava/lang/Integer;)V
    .locals 7

    .prologue
    .line 1277
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/c;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    const/4 v5, 0x0

    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$24;

    invoke-direct {v6, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$24;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Ljava/lang/Integer;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->v:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/c;

    .line 1283
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->v:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/c;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$25;

    invoke-direct {v1, p0, p2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$25;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 1293
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->v:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/c;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$26;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$26;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 1299
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->v:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/c;->a()V

    .line 1300
    return-void
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->J:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 11

    .prologue
    const v10, 0x7f08024f

    const/4 v2, 0x0

    const v9, 0x7f080456

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 719
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    if-nez v0, :cond_0

    .line 785
    :goto_0
    return-void

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->m:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 724
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 725
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 728
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getCoupon()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;

    move-result-object v1

    .line 729
    if-eqz v1, :cond_1

    .line 730
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v4, 0x7f0804d9

    invoke-virtual {p0, v4}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;->getDescription()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 731
    :goto_1
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;->getAmount()Ljava/lang/Float;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;->getAmount()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 732
    :goto_2
    cmpl-float v4, v1, v2

    if-lez v4, :cond_8

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v10}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 733
    :goto_3
    invoke-direct {p0, v3, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 734
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 737
    :cond_1
    const v0, 0x7f08010e

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getSubtotal()Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 738
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 740
    const v0, 0x7f08010d

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getTax()Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 741
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 743
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->E:Z

    if-eqz v0, :cond_2

    .line 744
    const v0, 0x7f080107

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getDeliveryFee()Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 745
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 748
    :cond_2
    const v0, 0x7f08010f

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getTip()Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 749
    const v0, 0x7f0f02c6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->p:Landroid/widget/TextView;

    .line 750
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 752
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->O:Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/m;->VALID:Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    if-ne v0, v1, :cond_3

    .line 753
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getAppliedDiscount()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;

    move-result-object v0

    .line 754
    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;->getDiscountValue()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;->getDiscountValue()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 755
    :goto_4
    const v1, 0x7f08010c

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 756
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 760
    :cond_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->o:Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 761
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->o:Landroid/widget/Button;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$39;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$39;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 772
    :cond_4
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getTip()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getTip()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 774
    :cond_5
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->isCashTipAllowed()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 775
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getTipType()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;

    move-result-object v0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;->CASH:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->p:Landroid/widget/TextView;

    .line 776
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080111

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 781
    :goto_5
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 784
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->u:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->c(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    goto/16 :goto_0

    .line 730
    :cond_6
    const v0, 0x7f0804d8

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_7
    move v1, v2

    .line 731
    goto/16 :goto_2

    .line 732
    :cond_8
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v9}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_9
    move v0, v2

    .line 754
    goto/16 :goto_4

    .line 776
    :cond_a
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->p:Landroid/widget/TextView;

    .line 777
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v3, v7

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 779
    :cond_b
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->p:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v3, v7

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method private e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->r:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSTipModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->r:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSTipModel;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSTipModel;->getSelectedTip()Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1467
    :cond_0
    const-string v0, "no tip option selected_pick up order"

    .line 1481
    :goto_0
    return-object v0

    .line 1469
    :cond_1
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$37;->b:[I

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->r:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSTipModel;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSTipModel;->getSelectedTip()Lcom/grubhub/AppBaseLibrary/android/order/cart/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/n;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1481
    const-string v0, "no tip option selected_pick up order"

    goto :goto_0

    .line 1471
    :pswitch_0
    const-string v0, "cash tip"

    goto :goto_0

    .line 1473
    :pswitch_1
    const-string v0, "preset option 1"

    goto :goto_0

    .line 1475
    :pswitch_2
    const-string v0, "preset option 2"

    goto :goto_0

    .line 1477
    :pswitch_3
    const-string v0, "preset option 3"

    goto :goto_0

    .line 1479
    :pswitch_4
    const-string v0, "custom tip"

    goto :goto_0

    .line 1469
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic e(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->K:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->L:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->f:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic i(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/k/b;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->D:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/k/b;

    return-object v0
.end method

.method static synthetic j(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)Landroid/widget/ViewFlipper;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->k:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method static synthetic k(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic l(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->o:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic m(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->i:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic n(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->j:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic o(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)Lcom/grubhub/AppBaseLibrary/android/order/cart/m;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->O:Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    return-object v0
.end method

.method static synthetic p(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->R:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;

    return-object v0
.end method

.method static synthetic q(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    return-object v0
.end method

.method static synthetic r(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic s(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    return-object v0
.end method

.method static synthetic t(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->d()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 0

    .prologue
    .line 1741
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->b(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 1742
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V
    .locals 2

    .prologue
    .line 1682
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->P:Lcom/grubhub/AppBaseLibrary/android/order/cart/k;

    if-eqz v0, :cond_0

    .line 1683
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->P:Lcom/grubhub/AppBaseLibrary/android/order/cart/k;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/k;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Ljava/lang/String;)V

    .line 1685
    :cond_0
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1675
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->P:Lcom/grubhub/AppBaseLibrary/android/order/cart/k;

    if-eqz v0, :cond_0

    .line 1676
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->P:Lcom/grubhub/AppBaseLibrary/android/order/cart/k;

    invoke-interface {v0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/k;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Ljava/lang/String;)V

    .line 1678
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1438
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->R()Ljava/util/ArrayList;

    move-result-object v0

    .line 1439
    iget-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->E:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1440
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    .line 1441
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1442
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->Q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    .line 1449
    :cond_1
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->X()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    .line 1450
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    if-eqz v0, :cond_2

    .line 1451
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getExpectedTimeInMillis()J

    move-result-wide v0

    .line 1452
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    .line 1453
    const/4 v0, 0x0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->H:I

    .line 1458
    :cond_2
    :goto_0
    return-void

    .line 1455
    :cond_3
    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/b;->a(J)I

    move-result v0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->H:I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1708
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->F:Z

    if-nez v0, :cond_0

    .line 1709
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Z)V

    .line 1737
    :goto_0
    return-void

    .line 1713
    :cond_0
    iput-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->F:Z

    .line 1714
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getAmountDueCents()Ljava/lang/Integer;

    move-result-object v0

    .line 1715
    if-nez v0, :cond_1

    .line 1716
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/b/b;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_UNKNOWN:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-direct {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/b/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->b(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    goto :goto_0

    .line 1718
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_3

    .line 1720
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getGiftCardDiscount()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;

    move-result-object v0

    .line 1721
    if-eqz v0, :cond_2

    .line 1722
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;->getDiscountValueCents()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    .line 1723
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getGrandTotalCents()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    .line 1724
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getGrandTotalCents()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;->getDiscountValueCents()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1727
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getCartId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->GIFT_CARD:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    invoke-direct {p0, v0, v2, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    goto :goto_0

    .line 1730
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getCartId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2, p2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    goto :goto_0

    .line 1736
    :cond_3
    invoke-direct {p0, p1, p2, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 639
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->J:Ljava/lang/String;

    .line 640
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->K:Ljava/lang/String;

    .line 641
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->L:Ljava/lang/String;

    .line 642
    return-void
.end method

.method public a(ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1689
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->u:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    .line 1690
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->G:Z

    .line 1693
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->u:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    invoke-direct {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->c(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    .line 1695
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getAmountDueCents()Ljava/lang/Integer;

    move-result-object v2

    .line 1696
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    move v2, v1

    .line 1699
    :goto_0
    if-nez p1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Z)V

    .line 1702
    invoke-direct {p0, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    .line 1703
    return-void

    :cond_2
    move v2, v0

    .line 1696
    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 555
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 557
    sparse-switch p1, :sswitch_data_0

    .line 567
    :goto_0
    return-void

    .line 562
    :sswitch_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->R:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 557
    nop

    :sswitch_data_0
    .sparse-switch
        0x83e -> :sswitch_0
        0x840 -> :sswitch_0
        0xd197 -> :sswitch_0
    .end sparse-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 184
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/order/cart/k;

    if-eqz v0, :cond_0

    .line 185
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/order/cart/k;

    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->P:Lcom/grubhub/AppBaseLibrary/android/order/cart/k;

    .line 187
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 198
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 200
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 201
    const-string v0, "order_type"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/order/g;->DELIVERY:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/order/g;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->E:Z

    .line 202
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->X()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    .line 203
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->aa()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSTipModel;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->r:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSTipModel;

    .line 204
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->U()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    .line 205
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->d(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->t:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    .line 207
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->R()Ljava/util/ArrayList;

    move-result-object v2

    .line 208
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->E:Z

    if-eqz v0, :cond_2

    .line 209
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 210
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    .line 211
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->t()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v3

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->R()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v3, v0, v4}, Lcom/grubhub/AppBaseLibrary/android/order/j;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Ljava/util/ArrayList;I)I

    move-result v0

    .line 212
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->Q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    .line 222
    :cond_0
    :goto_0
    if-eqz p1, :cond_3

    .line 223
    const-string v0, "order_code_input"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->I:Ljava/lang/String;

    .line 224
    const-string v0, "pickup_first_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->J:Ljava/lang/String;

    .line 225
    const-string v0, "pickup_last_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->K:Ljava/lang/String;

    .line 226
    const-string v0, "pickup_phone_number"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->L:Ljava/lang/String;

    .line 227
    const-string v0, "promo_code_button_text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->M:Ljava/lang/String;

    .line 228
    const-string v0, "promo_code_input"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->N:Ljava/lang/String;

    .line 229
    const-string v0, "promo_code_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    # invokes: Lcom/grubhub/AppBaseLibrary/android/order/cart/m;->getState(I)Lcom/grubhub/AppBaseLibrary/android/order/cart/m;
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/m;->access$000(I)Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->O:Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    .line 251
    :cond_1
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->setHasOptionsMenu(Z)V

    .line 252
    return-void

    .line 215
    :cond_2
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->B()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->L:Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->L:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->L:Ljava/lang/String;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/h/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->L:Ljava/lang/String;

    goto :goto_0

    .line 231
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 232
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->E:Z

    if-eqz v0, :cond_4

    .line 233
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getDeliveryInstructions()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->I:Ljava/lang/String;

    .line 237
    :cond_4
    const v0, 0x7f0804d2

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->M:Ljava/lang/String;

    .line 240
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->c()V

    .line 242
    const-string v0, "verified_first_name"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "verified_last_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 243
    const-string v0, "verified_first_name"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->J:Ljava/lang/String;

    .line 244
    const-string v0, "verified_last_name"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->K:Ljava/lang/String;

    goto :goto_1

    .line 245
    :cond_5
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->t:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->t:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getFirstName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->J:Ljava/lang/String;

    .line 248
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->t:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getLastName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->K:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    .prologue
    .line 273
    const v0, 0x7f03006d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 274
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 276
    const v0, 0x7f0f0240

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->l:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    .line 277
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->l:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->b()V

    .line 279
    const v0, 0x7f0f0241

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a:Landroid/widget/TextView;

    .line 280
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->E:Z

    if-eqz v0, :cond_2

    const v0, 0x7f080105

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 282
    const v0, 0x7f0f0243

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->b:Landroid/widget/TextView;

    .line 283
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->E:Z

    if-eqz v0, :cond_3

    .line 284
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->J:Ljava/lang/String;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->K:Ljava/lang/String;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->Q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-static {v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/utils/g;->a(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    .line 289
    :goto_1
    const v0, 0x7f0f0242

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 290
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$1;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    const v0, 0x7f0f0250

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->c:Landroid/widget/TextView;

    .line 309
    const v0, 0x7f0f0252

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->d:Landroid/widget/EditText;

    .line 310
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$12;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$12;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 326
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->E:Z

    if-eqz v0, :cond_4

    .line 327
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->d:Landroid/widget/EditText;

    const v1, 0x7f0804e0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 331
    :goto_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 335
    const v0, 0x7f0f0245

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 338
    const v0, 0x7f0f0247

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->k:Landroid/widget/ViewFlipper;

    .line 339
    const v0, 0x7f0f0249

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->i:Landroid/widget/ProgressBar;

    .line 340
    const v0, 0x7f0f024a

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->j:Landroid/widget/ProgressBar;

    .line 342
    const v0, 0x7f0f0246

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->f:Landroid/widget/Button;

    .line 343
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->f:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->b()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 346
    const v0, 0x7f0f024d

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->g:Landroid/widget/TextView;

    .line 347
    const v0, 0x7f0f024c

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->h:Landroid/widget/TextView;

    .line 349
    const v0, 0x7f0f0248

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->e:Landroid/widget/EditText;

    .line 352
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->e:Landroid/widget/EditText;

    const v1, 0x7f080549

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$23;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$23;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 372
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->O:Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/m;)V

    .line 376
    const v0, 0x7f0f0257

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 377
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    if-eqz v1, :cond_1

    .line 378
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->s:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    :cond_1
    const v0, 0x7f0f0254

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 382
    iget-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->E:Z

    if-eqz v1, :cond_5

    const v1, 0x7f080108

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 383
    const v1, 0x7f0f0255

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 384
    const v2, 0x7f0f024e

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 385
    const v2, 0x7f0f0258

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 387
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    if-eqz v3, :cond_7

    .line 388
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getExpectedTimeInMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/grubhub/AppBaseLibrary/android/utils/b;->a(J)I

    move-result v7

    .line 389
    if-gtz v7, :cond_6

    .line 390
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 391
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 392
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 401
    :goto_4
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 402
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;

    .line 403
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v6, 0x7f030082

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 404
    const v1, 0x7f0f02c7

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getItemQuantity()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getItemName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    const v1, 0x7f0f02c6

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v8, 0x7f080456

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getItemPrice()Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getItemQuantity()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v11

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_5

    .line 280
    :cond_2
    const v0, 0x7f080106

    goto/16 :goto_0

    .line 286
    :cond_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->J:Ljava/lang/String;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->K:Ljava/lang/String;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->L:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/utils/g;->a(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 329
    :cond_4
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->d:Landroid/widget/EditText;

    const v1, 0x7f0804e1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    goto/16 :goto_2

    .line 382
    :cond_5
    const v1, 0x7f080109

    goto/16 :goto_3

    .line 394
    :cond_6
    const v3, 0x7f0f0253

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 395
    invoke-direct {p0, v5, v3, v1, v7}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;I)V

    .line 396
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 397
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 398
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 410
    :cond_7
    const v0, 0x7f0f0259

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->m:Landroid/widget/LinearLayout;

    .line 411
    const v0, 0x7f0f025a

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->n:Landroid/widget/TextView;

    .line 412
    const v0, 0x7f0f025b

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->o:Landroid/widget/Button;

    .line 416
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->o:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 419
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->d()V

    .line 422
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->j()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->R:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;

    .line 423
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->getChildFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    const v1, 0x7f0f01ea

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->R:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->R:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;

    .line 425
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 427
    return-object v4
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 191
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->P:Lcom/grubhub/AppBaseLibrary/android/order/cart/k;

    .line 194
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 445
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 447
    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 448
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Landroid/view/View;)V

    .line 449
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 450
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_0

    .line 451
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b(Ljava/lang/String;)V

    .line 453
    :cond_0
    const/4 v0, 0x1

    .line 455
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    .prologue
    .line 432
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 434
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 435
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 436
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 438
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_0

    .line 439
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const v1, 0x7f080093

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b(I)V

    .line 441
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 257
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 258
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->R()Ljava/util/ArrayList;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 260
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->E:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->Q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->Q:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getDeliveryInstructions()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->I:Ljava/lang/String;

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0252

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->d:Landroid/widget/EditText;

    .line 266
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->d:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 269
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 461
    if-nez p1, :cond_0

    .line 462
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 465
    :cond_0
    const-string v0, "pickup_first_name"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->J:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v0, "pickup_last_name"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->K:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const-string v0, "pickup_phone_number"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->L:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v0, "promo_code_state"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->O:Lcom/grubhub/AppBaseLibrary/android/order/cart/m;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/m;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 470
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->d:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 471
    const-string v0, "order_code_input"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->e:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 474
    const-string v0, "promo_code_input"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->f:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 477
    const-string v0, "promo_code_button_text"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->f:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :cond_3
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 481
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 485
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 488
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CORE_ORDERING_EXP:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->ORDER_PROCESSING:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v4, "final order review"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 493
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a()V

    .line 494
    return-void
.end method

.method public onStop()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 498
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 500
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->v:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/c;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->v:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/c;->g()V

    .line 502
    iput-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->v:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/c;

    .line 503
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->e:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 504
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->f:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 505
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->w:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/h;

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->w:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/h;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/h;->g()V

    .line 510
    iput-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->w:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/h;

    .line 511
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->f:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 512
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 515
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->x:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;

    if-eqz v0, :cond_2

    .line 516
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->x:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->g()V

    .line 517
    iput-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->x:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;

    .line 518
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->o:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 521
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->y:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;

    if-eqz v0, :cond_3

    .line 522
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->y:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;->g()V

    .line 523
    iput-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->y:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;

    .line 524
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->o:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 527
    :cond_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->A:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/m;

    if-eqz v0, :cond_4

    .line 528
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->A:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/m;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/m;->g()V

    .line 529
    iput-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->A:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/m;

    .line 530
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->o:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 533
    :cond_4
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->z:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/j;

    if-eqz v0, :cond_5

    .line 534
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->z:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/j;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/j;->g()V

    .line 535
    iput-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->z:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/j;

    .line 536
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->o:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 539
    :cond_5
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->B:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/d;

    if-eqz v0, :cond_6

    .line 540
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->B:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/d;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/d;->g()V

    .line 541
    iput-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->B:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/d;

    .line 542
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->o:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 545
    :cond_6
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->C:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/k/a;

    if-eqz v0, :cond_7

    .line 546
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->C:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/k/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/k/a;->g()V

    .line 547
    iput-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->C:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/k/a;

    .line 550
    :cond_7
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Z)V

    .line 551
    return-void
.end method
