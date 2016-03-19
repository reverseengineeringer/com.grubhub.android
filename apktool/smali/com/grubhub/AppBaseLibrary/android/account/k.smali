.class Lcom/grubhub/AppBaseLibrary/android/account/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/account/p;


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

.field private b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/k;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/account/k;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;

    .line 516
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 520
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/k;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 523
    const v0, 0x7f0f0300

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 524
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/k;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;->isSingleUse()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 525
    const v1, 0x7f080535

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 533
    :goto_0
    const v0, 0x7f0f0303

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 534
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/k;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;

    invoke-static {v1, v8}, Lcom/grubhub/AppBaseLibrary/android/utils/g;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 535
    if-eqz v1, :cond_0

    .line 536
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    :cond_0
    const v1, 0x7f0f0301

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 541
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/k;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->c(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/k;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/k;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/k;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->f(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 542
    const v2, 0x7f0d003f

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 543
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 550
    :goto_1
    const v0, 0x7f0f0302

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 551
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/k;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;->getCreditCardType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 552
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 553
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/k;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;->getCreditCardType()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0800cc

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 554
    const v1, 0x7f02019b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 567
    :cond_1
    :goto_2
    const v0, 0x7f0f02b4

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 568
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/account/l;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/k;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/k;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->CREDIT_CARD:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    const v4, 0x7f080135

    .line 570
    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0803e3

    .line 571
    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f080134

    .line 572
    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0803e1

    .line 573
    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v10, 0x7f080136

    .line 574
    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/grubhub/AppBaseLibrary/android/account/l;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 576
    return-object p3

    .line 528
    :cond_2
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 545
    :cond_3
    const v2, 0x7f0d0054

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 546
    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_1

    .line 555
    :cond_4
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/k;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;->getCreditCardType()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080250

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 556
    const v1, 0x7f02019d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 557
    :cond_5
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/k;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;->getCreditCardType()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0803b1

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 558
    const v1, 0x7f02019f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 559
    :cond_6
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/k;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;->getCreditCardType()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080539

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 560
    const v1, 0x7f0201a1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 563
    :cond_7
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/k;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIVaultedCreditCardModel;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;
    .locals 1

    .prologue
    .line 586
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->CREDIT_CARD:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    return-object v0
.end method
