.class public Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;
.super Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/utils/g/f;


# instance fields
.field private g:Lcom/grubhub/AppBaseLibrary/android/utils/g/a;

.field private h:Lcom/grubhub/AppBaseLibrary/android/utils/g/c;

.field private i:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;-><init>()V

    .line 624
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;)Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/c;
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->m()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;Lcom/grubhub/AppBaseLibrary/android/utils/g/a;)Lcom/grubhub/AppBaseLibrary/android/utils/g/a;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->g:Lcom/grubhub/AppBaseLibrary/android/utils/g/a;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;Lcom/grubhub/AppBaseLibrary/android/utils/g/c;)Lcom/grubhub/AppBaseLibrary/android/utils/g/c;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->h:Lcom/grubhub/AppBaseLibrary/android/utils/g/c;

    return-object p1
.end method

.method private a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 421
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->getView()Landroid/view/View;

    move-result-object v4

    .line 422
    if-eqz v4, :cond_2

    .line 423
    const v0, 0x7f0f01fc

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 424
    const v1, 0x7f0f01fd

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 427
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;->getSelectedMaskedWalletModel()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAndroidPayMaskedWalletModel;

    move-result-object v5

    .line 429
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAndroidPayMaskedWalletModel;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAndroidPayMaskedWalletModel;->getPaymentDescriptions()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 432
    const-string v2, "\n"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    .line 433
    :goto_0
    invoke-virtual {v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAndroidPayMaskedWalletModel;->getPaymentDescriptions()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-ge v2, v7, :cond_1

    .line 434
    invoke-virtual {v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAndroidPayMaskedWalletModel;->getPaymentDescriptions()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAndroidPayMaskedWalletModel;->getPaymentDescriptions()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    if-eq v2, v7, :cond_0

    .line 436
    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 440
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0d0051

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 445
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    const v2, 0x7f080416

    invoke-virtual {v0, v2}, Landroid/support/v4/app/q;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 446
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$5;

    invoke-direct {v0, p0, p0, v5}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;Lcom/grubhub/AppBaseLibrary/android/utils/g/f;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAndroidPayMaskedWalletModel;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;->getSelectedMaskedWalletModel()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAndroidPayMaskedWalletModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;->setSelectedMaskedWalletModel(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAndroidPayMaskedWalletModel;)V

    .line 457
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;)V

    .line 460
    const/4 v0, 0x1

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->ANDROID_PAY:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    invoke-direct {p0, v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->a(ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    .line 461
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->ANDROID_PAY:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    .line 464
    const v0, 0x7f0f01fb

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 466
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;Z)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->a(Z)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->a(ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 409
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_0

    .line 410
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Z)V

    .line 412
    :cond_0
    return-void
.end method

.method private a(ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V
    .locals 1

    .prologue
    .line 555
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->m()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/c;

    move-result-object v0

    .line 556
    if-eqz v0, :cond_0

    .line 557
    invoke-interface {v0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/c;->a(ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    .line 559
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    return-object v0
.end method

.method private b(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;
    .locals 6

    .prologue
    .line 568
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->G()Ljava/util/ArrayList;

    move-result-object v2

    .line 570
    const/4 v1, 0x0

    .line 571
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 572
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;

    .line 573
    if-eqz p1, :cond_0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;->getSelectedCreditCardId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 580
    :goto_0
    if-nez v0, :cond_1

    .line 581
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;

    .line 584
    :cond_1
    :goto_1
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;)V

    return-void
.end method

.method private c(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedPayPalModel;
    .locals 6

    .prologue
    .line 594
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->S()Ljava/util/ArrayList;

    move-result-object v2

    .line 596
    const/4 v1, 0x0

    .line 597
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 598
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedPayPalModel;

    .line 599
    if-eqz p1, :cond_0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedPayPalModel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;->getSelectedPayPalId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 606
    :goto_0
    if-nez v0, :cond_1

    .line 607
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedPayPalModel;

    .line 610
    :cond_1
    :goto_1
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;)Lcom/grubhub/AppBaseLibrary/android/utils/g/a;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->g:Lcom/grubhub/AppBaseLibrary/android/utils/g/a;

    return-object v0
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->l()V

    return-void
.end method

.method static synthetic e(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;)Lcom/grubhub/AppBaseLibrary/android/utils/g/c;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->h:Lcom/grubhub/AppBaseLibrary/android/utils/g/c;

    return-object v0
.end method

.method public static j()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;
    .locals 4

    .prologue
    .line 47
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;-><init>()V

    .line 49
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 50
    const-string v2, "spinnerLocation"

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/views/j;->PAYMENT_INFO:Lcom/grubhub/AppBaseLibrary/android/views/j;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 51
    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 53
    return-object v0
.end method

.method private l()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 472
    invoke-direct {p0, v8}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->a(Z)V

    .line 473
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->s()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;

    move-result-object v2

    .line 475
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->getView()Landroid/view/View;

    move-result-object v3

    .line 476
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->m()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/c;

    move-result-object v4

    .line 480
    if-eqz v3, :cond_0

    .line 481
    const v0, 0x7f0f01fc

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 482
    const v1, 0x7f0f01fd

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 484
    invoke-direct {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->c(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedPayPalModel;

    move-result-object v5

    .line 485
    if-eqz v5, :cond_1

    .line 486
    invoke-interface {v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedPayPalModel;->getEmail()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0051

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 489
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    const v6, 0x7f080416

    invoke-virtual {v0, v6}, Landroid/support/v4/app/q;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 490
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$6;

    invoke-direct {v0, p0, v4, v5}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$6;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/c;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedPayPalModel;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    if-nez v2, :cond_2

    .line 502
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;-><init>()V

    .line 504
    :goto_0
    invoke-interface {v5}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedPayPalModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;->setSelectedPayPalId(Ljava/lang/String;)V

    .line 505
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;)V

    .line 508
    const/4 v0, 0x1

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->PAYPAL_EXPRESS:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    invoke-direct {p0, v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->a(ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    .line 530
    :goto_1
    const v0, 0x7f0f01fb

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 532
    :cond_0
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->PAYPAL_EXPRESS:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    .line 533
    return-void

    .line 510
    :cond_1
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v2

    const v4, 0x7f080415

    invoke-virtual {v2, v4}, Landroid/support/v4/app/q;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0d0042

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 514
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    const v2, 0x7f080414

    invoke-virtual {v0, v2}, Landroid/support/v4/app/q;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 515
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$7;

    invoke-direct {v0, p0, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$7;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;Lcom/grubhub/AppBaseLibrary/android/utils/g/f;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->PAYPAL_EXPRESS:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->i:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    invoke-direct {p0, v8, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->a(ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method private m()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/c;
    .locals 2

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 542
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/c;

    if-eqz v1, :cond_0

    .line 543
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/c;

    .line 545
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 617
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->g:Lcom/grubhub/AppBaseLibrary/android/utils/g/a;

    .line 618
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->h:Lcom/grubhub/AppBaseLibrary/android/utils/g/c;

    .line 619
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const v6, 0x7fffffff

    .line 119
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->s()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;->getSelectedPaymentType()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;->getSelectedPaymentType()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    move-result-object v0

    move-object v2, v0

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->d:Lcom/grubhub/AppBaseLibrary/android/views/GHSPaymentsSpinner;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSPaymentsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b;

    .line 130
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b;->getCount()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    move v4, v6

    move v5, v6

    :goto_1
    if-ltz v3, :cond_1

    .line 131
    invoke-virtual {v0, v3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 134
    invoke-virtual {v0, v3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    move-result-object v1

    if-ne v1, v2, :cond_4

    move v1, v3

    move v4, v3

    .line 130
    :goto_2
    add-int/lit8 v3, v3, -0x1

    move v5, v4

    move v4, v1

    goto :goto_1

    .line 122
    :cond_0
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->CREDIT_CARD:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    move-object v2, v0

    goto :goto_0

    .line 141
    :cond_1
    if-eq v5, v6, :cond_2

    .line 142
    if-eq v4, v6, :cond_3

    .line 143
    :goto_3
    invoke-virtual {p0, v4}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->a(I)V

    .line 145
    :cond_2
    return-void

    :cond_3
    move v4, v5

    .line 142
    goto :goto_3

    :cond_4
    move v1, v4

    move v4, v3

    goto :goto_2

    :cond_5
    move v1, v4

    move v4, v5

    goto :goto_2
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->a(Z)V

    .line 389
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->m()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/c;

    move-result-object v0

    .line 390
    if-eqz v0, :cond_0

    .line 391
    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/c;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 393
    :cond_0
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->n()V

    .line 394
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->d:Lcom/grubhub/AppBaseLibrary/android/views/GHSPaymentsSpinner;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSPaymentsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b;

    .line 154
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b;->getCount()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 155
    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 156
    invoke-virtual {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->a(I)V

    .line 160
    :cond_0
    return-void

    .line 154
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentResourceCreatedDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V
    .locals 2

    .prologue
    .line 361
    if-eqz p2, :cond_0

    .line 362
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$8;->a:[I

    invoke-virtual {p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 373
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->m()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/c;

    move-result-object v0

    .line 374
    if-eqz v0, :cond_1

    .line 375
    if-eqz p1, :cond_2

    .line 376
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentResourceCreatedDataModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/c;->a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    .line 381
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->n()V

    .line 382
    return-void

    .line 364
    :pswitch_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->s()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;)V

    goto :goto_0

    .line 367
    :pswitch_1
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->l()V

    goto :goto_0

    .line 378
    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/c;->a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    goto :goto_1

    .line 362
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected b()[Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;
    .locals 3

    .prologue
    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->h()Ljava/util/Set;

    move-result-object v1

    .line 192
    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->CREDIT_CARD:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->c()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_0
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->q()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->ANDROID_PAY:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->e()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/a;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_1
    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->PAYPAL_EXPRESS:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 203
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->f()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/f;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_2
    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->CASH:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 208
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->d()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 213
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->c()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;

    return-object v0
.end method

.method protected c()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/b;
    .locals 2

    .prologue
    .line 221
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/b;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$1;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;)V

    invoke-direct {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/e;)V

    return-object v0
.end method

.method protected d()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/c;
    .locals 2

    .prologue
    .line 284
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/c;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$2;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;)V

    invoke-direct {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/c;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/e;)V

    return-object v0
.end method

.method protected e()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/a;
    .locals 2

    .prologue
    .line 317
    .line 319
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/a;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$3;

    invoke-direct {v1, p0, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;Lcom/grubhub/AppBaseLibrary/android/utils/g/f;)V

    invoke-direct {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/a;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/e;)V

    return-object v0
.end method

.method protected f()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/f;
    .locals 2

    .prologue
    .line 351
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/f;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$4;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;)V

    invoke-direct {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/f;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/e;)V

    return-object v0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->a(Z)V

    .line 399
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->a()V

    .line 400
    return-void
.end method

.method public k()V
    .locals 4

    .prologue
    .line 167
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->s()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;

    move-result-object v0

    .line 168
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->m()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/c;

    move-result-object v1

    .line 170
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;->getSelectedPaymentType()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    move-result-object v2

    if-nez v2, :cond_1

    .line 171
    :cond_0
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/b/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_PAYMENT_PAYMENT_METHOD_UNSELECTED:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-direct {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/b/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/c;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 184
    :goto_0
    return-void

    .line 172
    :cond_1
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;->getSelectedPaymentType()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    move-result-object v2

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->ANDROID_PAY:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    if-ne v2, v3, :cond_2

    .line 173
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;->getSelectedPaymentId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 176
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;-><init>(Landroid/app/Activity;Lcom/grubhub/AppBaseLibrary/android/utils/g/f;)V

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->g:Lcom/grubhub/AppBaseLibrary/android/utils/g/a;

    .line 177
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->g:Lcom/grubhub/AppBaseLibrary/android/utils/g/a;

    .line 178
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;->getSelectedMaskedWalletModel()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAndroidPayMaskedWalletModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAndroidPayMaskedWalletModel;->getGoogleTransactionId()Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;->getSelectedMaskedWalletModel()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAndroidPayMaskedWalletModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSAndroidPayMaskedWalletModel;->getMerchantTransactionId()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {v1, v2, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_2
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;->getSelectedPaymentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSSelectedPaymentModel;->getSelectedPaymentType()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/c;->a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 99
    sparse-switch p1, :sswitch_data_0

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 101
    :sswitch_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->h:Lcom/grubhub/AppBaseLibrary/android/utils/g/c;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->h:Lcom/grubhub/AppBaseLibrary/android/utils/g/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->a(IILandroid/content/Intent;)V

    goto :goto_0

    .line 107
    :sswitch_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->g:Lcom/grubhub/AppBaseLibrary/android/utils/g/a;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->g:Lcom/grubhub/AppBaseLibrary/android/utils/g/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->a(IILandroid/content/Intent;)V

    goto :goto_0

    .line 99
    nop

    :sswitch_data_0
    .sparse-switch
        0x83e -> :sswitch_1
        0x840 -> :sswitch_1
        0xd197 -> :sswitch_0
    .end sparse-switch
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;->onStop()V

    .line 86
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->h:Lcom/grubhub/AppBaseLibrary/android/utils/g/c;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->h:Lcom/grubhub/AppBaseLibrary/android/utils/g/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->h_()V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->g:Lcom/grubhub/AppBaseLibrary/android/utils/g/a;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->g:Lcom/grubhub/AppBaseLibrary/android/utils/g/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->h_()V

    .line 93
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-super {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 61
    const v0, 0x7f0f01f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0804dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    const v0, 0x7f0f01fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 65
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    const v2, 0x7f0800f2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/q;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->f:[Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 70
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->f:[Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;->c()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    move-result-object v0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->CREDIT_CARD:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    if-ne v0, v1, :cond_0

    .line 71
    const v0, 0x7f0f01fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->f:[Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;->b()V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionReviewFragment;->a()V

    goto :goto_0
.end method
