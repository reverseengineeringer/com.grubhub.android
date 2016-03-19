.class public Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;
.super Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/account/b;
.implements Lcom/grubhub/AppBaseLibrary/android/account/f;
.implements Lcom/grubhub/AppBaseLibrary/android/account/i;
.implements Lcom/grubhub/AppBaseLibrary/android/account/m;
.implements Lcom/grubhub/AppBaseLibrary/android/account/s;
.implements Lcom/grubhub/AppBaseLibrary/android/order/cart/a;
.implements Lcom/grubhub/AppBaseLibrary/android/order/cart/h;
.implements Lcom/grubhub/AppBaseLibrary/android/order/cart/k;
.implements Lcom/grubhub/AppBaseLibrary/android/order/h;


# instance fields
.field private d:Landroid/support/v4/app/w;

.field private e:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;)Landroid/support/v4/app/w;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->d:Landroid/support/v4/app/w;

    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;Lcom/grubhub/AppBaseLibrary/android/order/g;ZZZZZZ)V
    .locals 0

    .prologue
    .line 64
    invoke-direct/range {p0 .. p7}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->a(Lcom/grubhub/AppBaseLibrary/android/order/g;ZZZZZZ)V

    return-void
.end method

.method private a(Lcom/grubhub/AppBaseLibrary/android/order/g;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 171
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v1

    .line 172
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->U()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->isCrossStreetRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v6, v0

    .line 174
    :goto_0
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->t()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v0

    .line 176
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/g;->DELIVERY:Lcom/grubhub/AppBaseLibrary/android/order/g;

    if-ne p1, v1, :cond_1

    .line 177
    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSDeliveryInfoDataModel;

    invoke-direct {v3, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSDeliveryInfoDataModel;-><init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    .line 178
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity$1;

    invoke-direct {v4, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;)V

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity$2;

    invoke-direct {v5, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;-><init>(Landroid/content/Context;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryInfo;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;

    .line 211
    :goto_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;Lcom/grubhub/AppBaseLibrary/android/order/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 221
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;

    .line 222
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity$6;

    invoke-direct {v2, p0, p1, v6, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity$6;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;Lcom/grubhub/AppBaseLibrary/android/order/g;ZLcom/grubhub/AppBaseLibrary/android/dataServices/a/a;)V

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 245
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->a()V

    .line 246
    return-void

    :cond_0
    move v6, v2

    .line 173
    goto :goto_0

    .line 194
    :cond_1
    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPickupInfoDataModel;

    invoke-direct {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSPickupInfoDataModel;-><init>()V

    .line 195
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;

    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity$3;

    invoke-direct {v4, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;)V

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity$4;

    invoke-direct {v5, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/p;-><init>(Landroid/content/Context;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPickupInfo;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;

    goto :goto_1
.end method

.method private a(Lcom/grubhub/AppBaseLibrary/android/order/g;ZZZZZZ)V
    .locals 4

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    .line 146
    invoke-static/range {p1 .. p7}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/g;ZZZZZZ)Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;

    move-result-object v1

    .line 148
    invoke-virtual {v0}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    const v2, 0x7f0f007f

    const-class v3, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;

    .line 149
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;

    .line 150
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 152
    return-void
.end method

.method private c(Lcom/grubhub/AppBaseLibrary/android/order/g;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 160
    invoke-direct {p0, p1, v0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->a(Lcom/grubhub/AppBaseLibrary/android/order/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method private l()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 529
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->d:Landroid/support/v4/app/w;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/w;->b(Ljava/lang/String;I)Z

    .line 530
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->d:Landroid/support/v4/app/w;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/w;->b(Ljava/lang/String;I)Z

    .line 531
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->d:Landroid/support/v4/app/w;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/w;->b(Ljava/lang/String;I)Z

    .line 532
    return-void
.end method

.method private m()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 540
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;Z)Ljava/util/Set;

    move-result-object v2

    .line 541
    if-nez v2, :cond_0

    move v0, v1

    .line 558
    :goto_0
    return v0

    .line 545
    :cond_0
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity$7;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity$7;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;)V

    .line 553
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;

    .line 554
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 555
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 558
    goto :goto_0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->d:Landroid/support/v4/app/w;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    .line 567
    if-eqz v0, :cond_0

    .line 568
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(Z)V

    .line 570
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;ZZLjava/lang/String;)V
    .locals 4

    .prologue
    .line 452
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/account/a;->EDIT:Lcom/grubhub/AppBaseLibrary/android/account/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p2, p3, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/a;ZZZZ)Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    move-result-object v0

    .line 453
    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    .line 454
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->d:Landroid/support/v4/app/w;

    invoke-virtual {v1}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    const v2, 0x7f0f007f

    const-class v3, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    .line 455
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    .line 456
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 457
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 458
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 350
    if-nez p2, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->i()V

    .line 359
    :goto_0
    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->d:Landroid/support/v4/app/w;

    invoke-virtual {v0}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    const v1, 0x7f0f007f

    const/4 v2, 0x1

    .line 355
    invoke-static {p2, v2, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->a(Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    move-result-object v2

    const-class v3, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    .line 356
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 357
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    goto :goto_0
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/order/g;)V
    .locals 1

    .prologue
    .line 467
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->n()V

    .line 468
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->b(Ljava/lang/String;)V

    .line 469
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->c(Lcom/grubhub/AppBaseLibrary/android/order/g;)V

    .line 470
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Z)V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->d:Landroid/support/v4/app/w;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    .line 380
    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {v0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    .line 384
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->onBackPressed()V

    .line 385
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
    .locals 0

    .prologue
    .line 486
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 363
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->d:Landroid/support/v4/app/w;

    invoke-virtual {v0}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    const v1, 0x7f0f007f

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/account/r;->EDIT:Lcom/grubhub/AppBaseLibrary/android/account/r;

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/order/g;->PICKUP:Lcom/grubhub/AppBaseLibrary/android/order/g;

    .line 364
    invoke-static {v2, v3, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/r;Lcom/grubhub/AppBaseLibrary/android/order/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;

    move-result-object v2

    const-class v3, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;

    .line 365
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 367
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V
    .locals 8

    .prologue
    .line 398
    sget-object v7, Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;->LAUNCHED_BY_CART:Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p7

    invoke-static/range {v0 .. v7}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;)Landroid/content/Intent;

    move-result-object v0

    .line 399
    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->startActivity(Landroid/content/Intent;)V

    .line 402
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/order/cart/i;->a()V

    .line 405
    if-eqz p6, :cond_1

    .line 406
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v1

    .line 407
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->z()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v0

    .line 408
    if-nez v0, :cond_0

    .line 409
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;-><init>()V

    .line 412
    :cond_0
    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/order/g;->DELIVERY:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setOrderType(Lcom/grubhub/AppBaseLibrary/android/order/g;)V

    .line 413
    invoke-static {p6}, Lcom/grubhub/AppBaseLibrary/android/order/a;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p6, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setAddress(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Ljava/lang/String;)V

    .line 414
    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V

    .line 417
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 418
    const/16 v1, 0x17

    invoke-virtual {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->setResult(ILandroid/content/Intent;)V

    .line 419
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->finish()V

    .line 420
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 424
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->d:Landroid/support/v4/app/w;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;

    .line 425
    if-eqz v0, :cond_0

    .line 427
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v1

    invoke-interface {v1, p3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->h(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->d:Landroid/support/v4/app/w;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/w;->b(Ljava/lang/String;I)Z

    .line 432
    :cond_0
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 444
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->d:Landroid/support/v4/app/w;

    invoke-virtual {v0}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    const v1, 0x7f0f007f

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/account/a;->ADD:Lcom/grubhub/AppBaseLibrary/android/account/a;

    const/4 v3, 0x1

    .line 445
    invoke-static {v2, p1, v4, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/a;ZZZZ)Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    move-result-object v2

    const-class v3, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    .line 446
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 447
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 448
    return-void
.end method

.method public b(Lcom/grubhub/AppBaseLibrary/android/order/g;)V
    .locals 14

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 275
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v1

    .line 277
    const/4 v13, 0x0

    .line 278
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->d(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v2

    .line 280
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->U()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v5

    .line 281
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->t()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v6

    .line 282
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 284
    if-eqz v2, :cond_10

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getSession()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;

    move-result-object v7

    invoke-static {v7, v3, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/a/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;Ljava/util/Date;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getSession()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/grubhub/AppBaseLibrary/android/utils/a/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 285
    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getFirstName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    move v7, v0

    .line 286
    :goto_0
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->m()Z

    move-result v3

    .line 288
    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/order/g;->PICKUP:Lcom/grubhub/AppBaseLibrary/android/order/g;

    if-ne p1, v2, :cond_7

    .line 290
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->B()Ljava/lang/String;

    move-result-object v1

    .line 291
    if-nez v7, :cond_2

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/h/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_2
    move v2, v0

    .line 293
    :goto_1
    if-nez v2, :cond_6

    if-nez v3, :cond_6

    .line 294
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/g;->PICKUP:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->c(Lcom/grubhub/AppBaseLibrary/android/order/g;)V

    :goto_2
    move-object v0, v13

    .line 318
    :goto_3
    if-eqz v0, :cond_3

    .line 319
    invoke-virtual {p0, v0, v4}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 321
    :cond_3
    return-void

    :cond_4
    move v7, v4

    .line 285
    goto :goto_0

    :cond_5
    move v2, v4

    .line 291
    goto :goto_1

    :cond_6
    move-object v0, p0

    move-object v1, p1

    move v5, v4

    move v6, v4

    move v7, v4

    .line 296
    invoke-direct/range {v0 .. v7}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->a(Lcom/grubhub/AppBaseLibrary/android/order/g;ZZZZZZ)V

    goto :goto_2

    .line 300
    :cond_7
    if-eqz v6, :cond_8

    invoke-interface {v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getIsSavedAddress()Z

    move-result v1

    if-nez v1, :cond_b

    :cond_8
    move v9, v0

    .line 301
    :goto_4
    if-eqz v6, :cond_9

    invoke-interface {v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/h/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    :cond_9
    move v10, v0

    .line 302
    :goto_5
    if-eqz v5, :cond_d

    invoke-interface {v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->isCrossStreetRequired()Z

    move-result v1

    if-eqz v1, :cond_d

    move v12, v0

    .line 303
    :goto_6
    if-eqz v12, :cond_e

    if-eqz v6, :cond_a

    invoke-interface {v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getCrossStreet()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_a
    move v11, v0

    .line 305
    :goto_7
    if-nez v7, :cond_f

    if-nez v3, :cond_f

    if-nez v9, :cond_f

    if-nez v11, :cond_f

    if-nez v10, :cond_f

    .line 306
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/g;->DELIVERY:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->c(Lcom/grubhub/AppBaseLibrary/android/order/g;)V

    goto :goto_2

    :cond_b
    move v9, v4

    .line 300
    goto :goto_4

    :cond_c
    move v10, v4

    .line 301
    goto :goto_5

    :cond_d
    move v12, v4

    .line 302
    goto :goto_6

    :cond_e
    move v11, v4

    .line 303
    goto :goto_7

    :cond_f
    move-object v5, p0

    move-object v6, p1

    move v8, v3

    .line 308
    invoke-direct/range {v5 .. v12}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->a(Lcom/grubhub/AppBaseLibrary/android/order/g;ZZZZZZ)V

    goto :goto_2

    .line 313
    :cond_10
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/g;->PICKUP:Lcom/grubhub/AppBaseLibrary/android/order/g;

    if-ne p1, v1, :cond_11

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/login/a;->CHECKOUT_PICKUP:Lcom/grubhub/AppBaseLibrary/android/login/a;

    :goto_8
    invoke-static {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginActivity;->a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/login/a;Z)Landroid/content/Intent;

    move-result-object v0

    goto :goto_3

    :cond_11
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/login/a;->CHECKOUT_DELIVERY:Lcom/grubhub/AppBaseLibrary/android/login/a;

    goto :goto_8
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 515
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    .line 516
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->d:Landroid/support/v4/app/w;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->d:Landroid/support/v4/app/w;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/w;->b(Ljava/lang/String;I)Z

    .line 522
    :goto_0
    return-void

    .line 520
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->d:Landroid/support/v4/app/w;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;

    .line 437
    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Ljava/lang/String;)V

    .line 440
    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->d:Landroid/support/v4/app/w;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    .line 476
    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->a(Ljava/lang/String;)V

    .line 479
    :cond_0
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->b(Ljava/lang/String;)V

    .line 480
    return-void
.end method

.method public d(Z)V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->d:Landroid/support/v4/app/w;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    .line 390
    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->b()V

    .line 393
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 261
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 262
    const-string v1, "restaurant_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->setResult(ILandroid/content/Intent;)V

    .line 264
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->finish()V

    .line 265
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 339
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->U()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v0

    .line 340
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->isCrossStreetRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 342
    :goto_0
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->d:Landroid/support/v4/app/w;

    invoke-virtual {v2}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v2

    const v3, 0x7f0f007f

    .line 343
    invoke-static {p1, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->a(Ljava/lang/String;ZZ)Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    move-result-object v0

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v0, v1}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    .line 344
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 346
    return-void

    .line 340
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g_()V
    .locals 0

    .prologue
    .line 491
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 463
    return-void
.end method

.method public i()V
    .locals 4

    .prologue
    .line 371
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->d:Landroid/support/v4/app/w;

    invoke-virtual {v0}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    const v1, 0x7f0f007f

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/account/e;->ADD:Lcom/grubhub/AppBaseLibrary/android/account/e;

    const/4 v3, 0x1

    .line 372
    invoke-static {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/e;Z)Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;

    move-result-object v2

    const-class v3, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;

    .line 373
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 375
    return-void
.end method

.method public j()V
    .locals 4

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 253
    const v1, 0x7f0f0080

    .line 255
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSGoogleWalletPreAuthFragment;->a()Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSGoogleWalletPreAuthFragment;

    move-result-object v2

    const-class v3, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSGoogleWalletPreAuthFragment;

    .line 256
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 253
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 257
    return-void
.end method

.method public k()V
    .locals 0

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->s()V

    .line 271
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 105
    if-nez p1, :cond_1

    .line 106
    packed-switch p2, :pswitch_data_0

    .line 120
    :goto_0
    return-void

    .line 108
    :pswitch_0
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->n()V

    .line 109
    if-eqz p3, :cond_0

    const-string v0, "login_type"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/login/a;->CHECKOUT_PICKUP:Lcom/grubhub/AppBaseLibrary/android/login/a;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/g;->PICKUP:Lcom/grubhub/AppBaseLibrary/android/order/g;

    .line 111
    :goto_1
    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->b(Lcom/grubhub/AppBaseLibrary/android/order/g;)V

    goto :goto_0

    .line 109
    :cond_0
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/g;->DELIVERY:Lcom/grubhub/AppBaseLibrary/android/order/g;

    goto :goto_1

    .line 114
    :cond_1
    const/16 v0, 0x92b

    if-ne p1, v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->d:Landroid/support/v4/app/w;

    const v1, 0x7f0f0080

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->d:Landroid/support/v4/app/w;

    const v1, 0x7f0f007f

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 325
    const/4 v1, 0x0

    .line 326
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    .line 327
    const v2, 0x7f0f007f

    invoke-virtual {v0, v2}, Landroid/support/v4/app/w;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 328
    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/grubhub/AppBaseLibrary/android/a;

    if-eqz v2, :cond_1

    .line 329
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/a;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/a;->f_()Z

    move-result v0

    .line 332
    :goto_0
    if-nez v0, :cond_0

    .line 333
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onBackPressed()V

    .line 335
    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const v3, 0x7f0f007f

    .line 84
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->j()V

    .line 87
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->setContentView(I)V

    .line 88
    const v0, 0x7f0f030d

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->c:Landroid/view/View;

    .line 90
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->d:Landroid/support/v4/app/w;

    .line 92
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->d:Landroid/support/v4/app/w;

    invoke-virtual {v0, v3}, Landroid/support/v4/app/w;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 93
    if-nez v0, :cond_0

    .line 94
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->d()Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->d:Landroid/support/v4/app/w;

    invoke-virtual {v1}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    const-class v2, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    .line 96
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v0, v2}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 99
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onStop()V

    .line 126
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;->g()V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->a(Z)V

    .line 131
    :cond_0
    return-void
.end method

.method public r()V
    .locals 2

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->n()V

    .line 496
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->l()V

    .line 498
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->d:Landroid/support/v4/app/w;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 499
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    if-eqz v1, :cond_0

    .line 500
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->e()V

    .line 504
    :goto_0
    return-void

    .line 502
    :cond_0
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/g;->PICKUP:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->b(Lcom/grubhub/AppBaseLibrary/android/order/g;)V

    goto :goto_0
.end method

.method public s()V
    .locals 2

    .prologue
    .line 508
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 509
    const/16 v1, 0x16

    invoke-virtual {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->setResult(ILandroid/content/Intent;)V

    .line 510
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartActivity;->finish()V

    .line 511
    return-void
.end method
