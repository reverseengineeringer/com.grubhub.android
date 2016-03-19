.class public Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;
.super Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/a;
.implements Lcom/grubhub/AppBaseLibrary/android/account/b;
.implements Lcom/grubhub/AppBaseLibrary/android/account/f;
.implements Lcom/grubhub/AppBaseLibrary/android/account/s;


# instance fields
.field private a:Lcom/grubhub/AppBaseLibrary/android/order/cart/a;

.field private b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

.field private c:Lcom/grubhub/AppBaseLibrary/android/order/g;

.field private d:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

.field private e:Landroid/support/v4/app/w;

.field private f:Lcom/grubhub/AppBaseLibrary/android/views/a;

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;-><init>()V

    .line 431
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

    return-object p1
.end method

.method public static a(Lcom/grubhub/AppBaseLibrary/android/order/g;ZZZZZZ)Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;
    .locals 3

    .prologue
    .line 76
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;-><init>()V

    .line 77
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 78
    const-string v2, "order_type"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 79
    const-string v2, "missing_name_or_pickup_phone_number"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 80
    const-string v2, "missing_payment"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 81
    const-string v2, "missing_address"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 82
    const-string v2, "missing_delivery_phone_number"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83
    const-string v2, "missing_cross_street"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 84
    const-string v2, "cross_street_required"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->setArguments(Landroid/os/Bundle;)V

    .line 87
    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;Z)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 5

    .prologue
    .line 349
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->g:I

    .line 350
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "missing_payment"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->e:Landroid/support/v4/app/w;

    invoke-virtual {v0}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 352
    if-eqz p1, :cond_0

    .line 353
    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/ag;

    .line 354
    const v1, 0x7f040021

    const v2, 0x7f040027

    const v3, 0x7f040020

    const v4, 0x7f040028

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/ag;->a(IIII)Landroid/support/v4/app/ag;

    .line 356
    :cond_0
    const v1, 0x7f0f0112

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/account/e;->ENTER:Lcom/grubhub/AppBaseLibrary/android/account/e;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/e;Z)Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;

    move-result-object v2

    const-class v3, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 358
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->e()V

    .line 363
    :goto_0
    return-void

    .line 361
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->b(Z)V

    goto :goto_0
.end method

.method private b(Z)V
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 371
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment$5;->a:[I

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->c:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-virtual {v3}, Lcom/grubhub/AppBaseLibrary/android/order/g;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 426
    :goto_0
    return-void

    .line 373
    :pswitch_0
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->g:I

    .line 374
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 375
    const-string v3, "missing_name_or_pickup_phone_number"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 376
    const-string v3, "missing_payment"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 377
    const-string v3, "missing_address"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 378
    const-string v6, "missing_delivery_phone_number"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 379
    const-string v7, "missing_cross_street"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 380
    const-string v8, "cross_street_required"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 382
    if-nez v3, :cond_0

    if-nez v6, :cond_0

    if-eqz v7, :cond_8

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->e:Landroid/support/v4/app/w;

    invoke-virtual {v0}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v9

    .line 384
    if-eqz p1, :cond_1

    .line 385
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/ag;

    .line 386
    const v0, 0x7f040021

    const v3, 0x7f040027

    const v10, 0x7f040020

    const v11, 0x7f040028

    invoke-virtual {v9, v0, v3, v10, v11}, Landroid/support/v4/app/ag;->a(IIII)Landroid/support/v4/app/ag;

    .line 394
    :cond_1
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->t()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v10

    .line 395
    if-eqz v10, :cond_4

    invoke-interface {v10}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v6, :cond_2

    if-eqz v7, :cond_4

    :cond_2
    move v3, v1

    .line 396
    :goto_1
    if-nez v4, :cond_5

    if-nez v5, :cond_5

    move v0, v1

    .line 399
    :goto_2
    if-eqz v3, :cond_6

    .line 400
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/account/a;->EDIT:Lcom/grubhub/AppBaseLibrary/android/account/a;

    .line 407
    :goto_3
    invoke-static {v0, v8, v3, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/a;ZZZZ)Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    move-result-object v0

    .line 410
    if-eqz v3, :cond_3

    .line 411
    invoke-virtual {v0, v10}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    .line 414
    :cond_3
    const v1, 0x7f0f0112

    const-class v2, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v0, v2}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ag;->b()I

    .line 416
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->e()V

    goto/16 :goto_0

    :cond_4
    move v3, v2

    .line 395
    goto :goto_1

    :cond_5
    move v0, v2

    .line 396
    goto :goto_2

    .line 401
    :cond_6
    if-eqz v0, :cond_7

    .line 402
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/account/a;->VERIFY:Lcom/grubhub/AppBaseLibrary/android/account/a;

    goto :goto_3

    .line 404
    :cond_7
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/account/a;->ENTER:Lcom/grubhub/AppBaseLibrary/android/account/a;

    goto :goto_3

    .line 419
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 423
    :pswitch_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/a;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->c:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/a;->a(Lcom/grubhub/AppBaseLibrary/android/order/g;)V

    goto/16 :goto_0

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private e()V
    .locals 2

    .prologue
    .line 194
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->g:I

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->f:Lcom/grubhub/AppBaseLibrary/android/views/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/a;->a()V

    .line 201
    :goto_0
    return-void

    .line 196
    :cond_0
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 197
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->f:Lcom/grubhub/AppBaseLibrary/android/views/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/a;->b()V

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->f:Lcom/grubhub/AppBaseLibrary/android/views/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/a;->c()V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Z)V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0, p3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->b(Z)V

    .line 183
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
    .locals 3

    .prologue
    .line 267
    if-eqz p3, :cond_1

    .line 268
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v1

    .line 269
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->z()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v0

    .line 270
    if-nez v0, :cond_0

    .line 271
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;-><init>()V

    .line 274
    :cond_0
    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/order/g;->DELIVERY:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setOrderType(Lcom/grubhub/AppBaseLibrary/android/order/g;)V

    .line 275
    invoke-static {p3}, Lcom/grubhub/AppBaseLibrary/android/order/a;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p3, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setAddress(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Ljava/lang/String;)V

    .line 276
    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/a;

    if-eqz v0, :cond_2

    .line 280
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/a;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->c:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/a;->a(Lcom/grubhub/AppBaseLibrary/android/order/g;)V

    .line 282
    :cond_2
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 298
    if-eqz p4, :cond_0

    .line 299
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    new-instance v7, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment$1;

    invoke-direct {v7, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;)V

    new-instance v8, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment$2;

    invoke-direct {v8, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;)V

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v8}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

    .line 314
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment$3;

    invoke-direct {v1, p0, p3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 323
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment$4;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 333
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;->a()V

    .line 338
    :goto_0
    return-void

    .line 335
    :cond_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->h(Ljava/lang/String;)V

    .line 336
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->a(Z)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/a;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/a;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->c:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/a;->a(Lcom/grubhub/AppBaseLibrary/android/order/g;)V

    .line 260
    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method protected d_()V
    .locals 0

    .prologue
    .line 343
    return-void
.end method

.method public f_()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 232
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->e:Landroid/support/v4/app/w;

    invoke-virtual {v0}, Landroid/support/v4/app/w;->e()I

    move-result v0

    if-lez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->e:Landroid/support/v4/app/w;

    invoke-virtual {v0}, Landroid/support/v4/app/w;->c()V

    .line 234
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->g:I

    .line 235
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->e()V

    move v0, v1

    .line 241
    :goto_0
    return v0

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    instance-of v0, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b(Ljava/lang/String;)V

    move v0, v1

    .line 239
    goto :goto_0

    .line 241
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 286
    invoke-super {p0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 288
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->getChildFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    .line 289
    const-class v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 291
    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 294
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onAttach(Landroid/app/Activity;)V

    .line 94
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/order/cart/a;

    if-eqz v0, :cond_0

    .line 95
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/order/cart/a;

    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/a;

    .line 97
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onCreate(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "order_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/g;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->c:Lcom/grubhub/AppBaseLibrary/android/order/g;

    .line 116
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->N()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->g:I

    .line 119
    if-eqz p1, :cond_0

    .line 120
    const-string v0, "breadcrumb_position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->g:I

    .line 123
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->setHasOptionsMenu(Z)V

    .line 124
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const v7, 0x7f0f0112

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 128
    const v2, 0x7f030048

    invoke-virtual {p1, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 130
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    .line 133
    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment$5;->a:[I

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->c:Lcom/grubhub/AppBaseLibrary/android/order/g;

    invoke-virtual {v5}, Lcom/grubhub/AppBaseLibrary/android/order/g;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_0

    .line 140
    const-string v2, "missing_name_or_pickup_phone_number"

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "missing_payment"

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "missing_address"

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    .line 144
    :goto_0
    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/views/a;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lcom/grubhub/AppBaseLibrary/android/views/a;-><init>(Landroid/content/Context;Z)V

    iput-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->f:Lcom/grubhub/AppBaseLibrary/android/views/a;

    .line 145
    const v0, 0x7f0f00be

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->f:Lcom/grubhub/AppBaseLibrary/android/views/a;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 147
    if-eqz v2, :cond_3

    .line 148
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->e()V

    .line 153
    :goto_1
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->getChildFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->e:Landroid/support/v4/app/w;

    .line 154
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->e:Landroid/support/v4/app/w;

    invoke-virtual {v0, v7}, Landroid/support/v4/app/w;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 155
    const-string v0, "missing_name_or_pickup_phone_number"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 156
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->e:Landroid/support/v4/app/w;

    invoke-virtual {v0}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/account/r;->ENTER:Lcom/grubhub/AppBaseLibrary/android/account/r;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->c:Lcom/grubhub/AppBaseLibrary/android/order/g;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    invoke-interface {v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getFirstName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    invoke-interface {v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getLastName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static {v1, v2, v4, v5, v6}, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/r;Lcom/grubhub/AppBaseLibrary/android/order/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;

    move-result-object v1

    const-class v2, Lcom/grubhub/AppBaseLibrary/android/account/GHSYourInfoFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v7, v1, v2}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 162
    :cond_0
    :goto_2
    return-object v3

    .line 135
    :pswitch_0
    const-string v2, "missing_name_or_pickup_phone_number"

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "missing_payment"

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_3
    move v2, v0

    move v0, v1

    .line 137
    goto :goto_0

    :cond_1
    move v0, v1

    .line 135
    goto :goto_3

    :cond_2
    move v2, v1

    .line 140
    goto :goto_0

    .line 150
    :cond_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->f:Lcom/grubhub/AppBaseLibrary/android/views/a;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/views/a;->setVisibility(I)V

    goto :goto_1

    .line 158
    :cond_4
    invoke-direct {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->a(Z)V

    goto :goto_2

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onDetach()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/a;

    .line 103
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 213
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 215
    const v1, 0x102002c

    if-ne v0, v1, :cond_2

    .line 216
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->d()V

    .line 217
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->e:Landroid/support/v4/app/w;

    invoke-virtual {v0}, Landroid/support/v4/app/w;->e()I

    move-result v0

    if-lez v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->e:Landroid/support/v4/app/w;

    invoke-virtual {v0}, Landroid/support/v4/app/w;->c()V

    .line 219
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->g:I

    .line 220
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->e()V

    .line 224
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 226
    :goto_1
    return v0

    .line 221
    :cond_1
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    instance-of v0, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_2
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 205
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 207
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/q;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 208
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 209
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 108
    const-string v0, "breadcrumb_position"

    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->g:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 167
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onStop()V

    .line 169
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;->g()V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Z)V

    .line 175
    return-void
.end method
