.class public Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/view/View;

.field private f:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

.field private g:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

.field private h:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

.field private m:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

.field private n:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;

.field private o:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 547
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/a;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/a;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->o:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/a;

    return-object p1
.end method

.method public static a(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;
    .locals 3

    .prologue
    .line 77
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;-><init>()V

    .line 78
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 79
    const-string v2, "order_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->setArguments(Landroid/os/Bundle;)V

    .line 82
    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->c:Ljava/util/LinkedHashMap;

    return-object p1
.end method

.method private a()V
    .locals 5

    .prologue
    .line 171
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/a;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->a:Ljava/lang/String;

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$1;

    invoke-direct {v3, p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;)V

    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$2;

    invoke-direct {v4, p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->o:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/a;

    .line 184
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->o:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/a;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$3;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 195
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->o:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/a;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$4;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 203
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->o:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/a;->a()V

    .line 204
    return-void
.end method

.method private a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/e;->a(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 359
    invoke-interface {p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;->getLatitude()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;->getLongitude()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    :cond_0
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->e()V

    .line 422
    :goto_0
    return-void

    .line 364
    :cond_1
    invoke-static {}, Lcom/google/android/gms/maps/SupportMapFragment;->a()Lcom/google/android/gms/maps/SupportMapFragment;

    move-result-object v6

    .line 365
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->getChildFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 366
    const v1, 0x7f0f01ca

    invoke-virtual {v0, v1, v6}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    .line 367
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 369
    if-nez v6, :cond_2

    .line 370
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->e()V

    goto :goto_0

    .line 374
    :cond_2
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$6;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$6;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/google/android/gms/maps/SupportMapFragment;->a(Lcom/google/android/gms/maps/e;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 431
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->d()V

    .line 441
    :goto_0
    return-void

    .line 436
    :cond_0
    if-eqz p2, :cond_1

    .line 437
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->h:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    const v1, 0x7f0803ee

    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->h:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    const v1, 0x7f0803ef

    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(ZLjava/lang/String;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 460
    if-eqz p1, :cond_0

    .line 461
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/a;->a(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/a;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->n:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;

    const v2, 0x7f0200e1

    invoke-virtual {v0, p2, p2, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;I)Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;

    .line 462
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->n:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;

    invoke-virtual {v0, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->setVisibility(I)V

    .line 468
    :goto_0
    return-void

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->n:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;

    invoke-virtual {v0, v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private b()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 210
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->ae()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->c:Ljava/util/LinkedHashMap;

    .line 212
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->c:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->c:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    :cond_0
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->c()V

    .line 329
    :goto_0
    return-void

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->c:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryDataModel;

    .line 220
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryDataModel;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/d;->fromString(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/order/d;

    move-result-object v3

    .line 222
    if-eqz v3, :cond_2

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/order/d;->ESTIMATED:Lcom/grubhub/AppBaseLibrary/android/order/d;

    if-ne v3, v2, :cond_3

    .line 223
    :cond_2
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->c()V

    goto :goto_0

    .line 228
    :cond_3
    const-string v2, "order tracking details-map"

    .line 231
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->g:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    const v5, 0x7f0803f3

    invoke-virtual {p0, v5}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryDataModel;->getOrderId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    sget-object v4, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$7;->a:[I

    invoke-virtual {v3}, Lcom/grubhub/AppBaseLibrary/android/order/d;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    move-object v0, v2

    .line 325
    :goto_1
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v1

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CONVENIENCE_FEATURES:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v4, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->ORDER_STATUS_TRACKING:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    invoke-direct {v2, v3, v4, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 328
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->b()V

    goto :goto_0

    .line 237
    :pswitch_0
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryDataModel;->getDropoffTimeRange()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v8}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->a(Ljava/lang/String;Z)V

    .line 240
    invoke-direct {p0, v8, v1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->a(ZLjava/lang/String;)V

    .line 243
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryDataModel;->getPickupLocation()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;

    move-result-object v3

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryDataModel;->getDropoffLocation()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;

    move-result-object v0

    invoke-direct {p0, v3, v0, v1, v1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;Ljava/lang/String;)V

    .line 246
    invoke-direct {p0, v8, v1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->b(ZLjava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->l:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    const v1, 0x7f0803ea

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setText(I)V

    move-object v0, v2

    .line 250
    goto :goto_1

    .line 254
    :pswitch_1
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryDataModel;->getDropoffTimeRange()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v8}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->a(Ljava/lang/String;Z)V

    .line 257
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryDataModel;->getCourierPhoto()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v9, v3}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->a(ZLjava/lang/String;)V

    .line 260
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryDataModel;->getDropoffLocation()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;

    move-result-object v3

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryDataModel;->getCourierLocation()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;

    move-result-object v4

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryDataModel;->getCourierVehicleType()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;Ljava/lang/String;)V

    .line 264
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryDataModel;->getCourierFirstName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 265
    const v1, 0x7f0803f1

    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v9, [Ljava/lang/Object;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryDataModel;->getCourierFirstName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 267
    :goto_2
    invoke-direct {p0, v9, v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->b(ZLjava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->l:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    const v1, 0x7f0803f0

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setText(I)V

    move-object v0, v2

    .line 271
    goto :goto_1

    .line 275
    :pswitch_2
    const-string v2, "order tracking details-delivered"

    .line 278
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryDataModel;->isDropoffTimeEstimate()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 279
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->d()V

    .line 285
    :goto_3
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryDataModel;->getCourierPhoto()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v9, v3}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->a(ZLjava/lang/String;)V

    .line 288
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->e()V

    .line 291
    invoke-direct {p0, v8, v1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->b(ZLjava/lang/String;)V

    .line 294
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryDataModel;->getCourierFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 295
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->l:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    const v3, 0x7f0803ed

    invoke-virtual {p0, v3}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryDataModel;->getCourierFirstName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v2

    goto/16 :goto_1

    .line 281
    :cond_4
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryDataModel;->getDropoffTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v9}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->a(Ljava/lang/String;Z)V

    goto :goto_3

    .line 297
    :cond_5
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->l:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    const v1, 0x7f0803ec

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setText(I)V

    move-object v0, v2

    .line 299
    goto/16 :goto_1

    .line 304
    :pswitch_3
    const-string v0, "order tracking details-canceled"

    .line 307
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->d()V

    .line 310
    invoke-direct {p0, v8, v1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->a(ZLjava/lang/String;)V

    .line 313
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->e()V

    .line 316
    const v1, 0x7f0803e9

    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v9, v1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->b(ZLjava/lang/String;)V

    .line 319
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->l:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    const v2, 0x7f0803e8

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setText(I)V

    goto/16 :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_2

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->b()V

    return-void
.end method

.method private b(ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 477
    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->m:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setVisibility(I)V

    .line 484
    :goto_0
    return-void

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->m:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    invoke-virtual {v0, p2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->m:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private c()V
    .locals 5

    .prologue
    .line 336
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CONVENIENCE_FEATURES:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->ORDER_STATUS_TRACKING:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v4, "order tracking details-error"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 340
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->e:Landroid/view/View;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$5;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 346
    return-void
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->c()V

    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 448
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->h:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    invoke-virtual {v0, v3}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->d:Landroid/view/ViewGroup;

    const v1, 0x7f0f01c8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 450
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->g:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setGravity(I)V

    .line 451
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->g:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setPadding(IIII)V

    .line 452
    return-void
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->a()V

    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 491
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->i:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 495
    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 496
    const/4 v1, 0x3

    const v2, 0x7f0f01c6

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 497
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 87
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "order_number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->b:Ljava/lang/String;

    .line 91
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->N()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getUdid()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->a:Ljava/lang/String;

    .line 94
    invoke-virtual {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->setHasOptionsMenu(Z)V

    .line 95
    invoke-virtual {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->setRetainInstance(Z)V

    .line 96
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 101
    const v0, 0x7f030061

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->d:Landroid/view/ViewGroup;

    .line 103
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->d:Landroid/view/ViewGroup;

    const v1, 0x7f0f01c5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    .line 104
    const v0, 0x7f0300ac

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->f:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->e:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->d:Landroid/view/ViewGroup;

    const v1, 0x7f0f01c7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->g:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    .line 106
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->d:Landroid/view/ViewGroup;

    const v1, 0x7f0f01c9

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->h:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    .line 107
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->d:Landroid/view/ViewGroup;

    const v1, 0x7f0f01ca

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->i:Landroid/view/View;

    .line 108
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->d:Landroid/view/ViewGroup;

    const v1, 0x7f0f01cb

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->j:Landroid/widget/RelativeLayout;

    .line 109
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->d:Landroid/view/ViewGroup;

    const v1, 0x7f0f01cc

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->k:Landroid/widget/RelativeLayout;

    .line 110
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->d:Landroid/view/ViewGroup;

    const v1, 0x7f0f01d3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->l:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    .line 111
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->d:Landroid/view/ViewGroup;

    const v1, 0x7f0f01d2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->m:Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    .line 112
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->d:Landroid/view/ViewGroup;

    const v1, 0x7f0f01d1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->n:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/images/GHSNetworkImageView;

    .line 114
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->d:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 157
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 159
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/q;->onBackPressed()V

    .line 161
    const/4 v0, 0x1

    .line 164
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 144
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 146
    if-eqz v1, :cond_0

    .line 147
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 150
    :cond_0
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_1

    .line 151
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const v1, 0x7f080089

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b(I)V

    .line 153
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 121
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->a()V

    .line 124
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Z)V

    .line 125
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 131
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->o:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/a;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->o:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/a;->g()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->o:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/e/a;

    .line 137
    :cond_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->f()V

    .line 138
    return-void
.end method
