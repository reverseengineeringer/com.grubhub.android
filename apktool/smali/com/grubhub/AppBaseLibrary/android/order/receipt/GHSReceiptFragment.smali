.class public Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/order/cart/b;


# instance fields
.field private a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

.field private b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/grubhub/AppBaseLibrary/android/order/receipt/b;

.field private j:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

.field private k:Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;

.field private l:Z

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/Button;

.field private o:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 117
    return-void
.end method

.method private a(I)I
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->isAsapOrder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    const/16 p1, 0x8

    .line 696
    :cond_0
    return p1
.end method

.method private a(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;
    .locals 3

    .prologue
    .line 595
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030083

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 596
    const v0, 0x7f0f02c7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 597
    const v0, 0x7f0f02c6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    return-object v1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .prologue
    .line 611
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030083

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 612
    const v0, 0x7f0f02c7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 613
    const v0, 0x7f0f02c6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    return-object v1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;)Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;
    .locals 3

    .prologue
    .line 143
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;-><init>()V

    .line 144
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 145
    const-string v2, "order_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v2, "first_name"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v2, "last_name"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    if-eqz p3, :cond_0

    .line 149
    const-string v2, "phone_number"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_0
    const-string v2, "is_delivery"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 152
    const-string v2, "payment_type"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 153
    const-string v2, "launch_reason"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 154
    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->setArguments(Landroid/os/Bundle;)V

    .line 156
    return-object v0
.end method

.method private a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 580
    if-nez p1, :cond_0

    .line 581
    const-string v0, "credit card"

    .line 583
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->toLoggingString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 775
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 776
    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 777
    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x21

    .line 775
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 779
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 9

    .prologue
    const v8, 0x7f080517

    const/16 v7, 0x8

    const v6, 0x7f080459

    const v5, 0x7f0f0219

    const/4 v4, 0x0

    .line 639
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    if-nez v0, :cond_0

    .line 640
    const v0, 0x7f0f0216

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 682
    :goto_0
    return-void

    .line 644
    :cond_0
    const v0, 0x7f0f0217

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 645
    const v1, 0x7f0f0218

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 646
    const v2, 0x7f0f0216

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 648
    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment$6;->a:[I

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    invoke-virtual {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 676
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 677
    const v0, 0x7f0200e2

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 678
    const v0, 0x7f080201

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 679
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v4}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 650
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    const v0, 0x7f0200b3

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 652
    const v0, 0x7f080200

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 653
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v7}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 656
    :pswitch_1
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->H()Z

    move-result v2

    .line 657
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 658
    if-eqz v2, :cond_1

    const v0, 0x7f020039

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 659
    const v0, 0x7f0801ff

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 660
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v4}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 658
    :cond_1
    const v0, 0x7f02017c

    goto :goto_1

    .line 663
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 664
    const v0, 0x7f0201bb

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 665
    const v0, 0x7f080203

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 666
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v4}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 669
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    const v0, 0x7f02017b

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 671
    const v0, 0x7f080202

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 672
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v4}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 648
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 626
    const-string v0, "call care"

    if-eq p1, v0, :cond_0

    const-string v0, "call restaurant"

    if-ne p1, v0, :cond_1

    .line 627
    :cond_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "exit links"

    const-string v3, "completed orders"

    invoke-direct {v1, v2, v3, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 631
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 706
    const v0, 0x7f0f0224

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 708
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->k:Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;->LAUNCHED_BY_FUTURE_ORDER:Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;

    if-ne v0, v1, :cond_0

    .line 709
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->n:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 710
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->m:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 711
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->o:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 713
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->o:Landroid/widget/Button;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment$5;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 734
    :goto_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMMM d, yyyy"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getExpectedTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 735
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "h:mm a"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getExpectedTimeInMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 736
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 738
    const v3, 0x7f08048e

    .line 739
    invoke-virtual {p0, v3}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v7

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    .line 738
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 745
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 746
    invoke-direct {p0, v4, v3, v0}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    invoke-direct {p0, v4, v3, v1}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    invoke-direct {p0, v4, v3, v2}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->d:Z

    if-eqz v0, :cond_1

    .line 754
    const v0, 0x7f0f020f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 756
    const v0, 0x7f0f0210

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 757
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 764
    :goto_1
    return-void

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->n:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 729
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->m:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 730
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->o:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 759
    :cond_1
    const v0, 0x7f0f020b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 761
    const v0, 0x7f0f020c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 762
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 783
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->i:Lcom/grubhub/AppBaseLibrary/android/order/receipt/b;

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->i:Lcom/grubhub/AppBaseLibrary/android/order/receipt/b;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getCartId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/b;->c(Ljava/lang/String;)V

    .line 786
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 163
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/order/receipt/b;

    if-eqz v0, :cond_0

    .line 164
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/order/receipt/b;

    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->i:Lcom/grubhub/AppBaseLibrary/android/order/receipt/b;

    .line 166
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 172
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 173
    const-string v0, "order_number"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->e:Ljava/lang/String;

    .line 174
    const-string v0, "first_name"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->f:Ljava/lang/String;

    .line 175
    const-string v0, "last_name"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->g:Ljava/lang/String;

    .line 176
    const-string v0, "phone_number"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->h:Ljava/lang/String;

    .line 177
    const-string v0, "is_delivery"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->c:Z

    .line 178
    const-string v0, "payment_type"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    .line 179
    const-string v0, "launch_reason"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->k:Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;

    .line 181
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    .line 182
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->Z()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    move-result-object v1

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    .line 183
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->V()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v1

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    .line 184
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->F()Z

    move-result v0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->d:Z

    .line 186
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->k:Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;->LAUNCHED_BY_CART:Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;

    if-ne v0, v1, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-static {v0}, Lorg/b/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->l:Z

    .line 188
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->l:Z

    if-eqz v0, :cond_0

    .line 189
    const-string v0, "APP_RATER_SHOWN"

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a;->a(Ljava/lang/String;)V

    .line 193
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->setHasOptionsMenu(Z)V

    .line 194
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 17

    .prologue
    .line 198
    const v2, 0x7f030069

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 199
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 202
    const v3, 0x7f0f020a

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 203
    const v4, 0x7f0f020d

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 206
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->d:Z

    if-eqz v5, :cond_5

    .line 207
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 208
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 210
    const v3, 0x7f0f0210

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 211
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->c:Z

    if-eqz v4, :cond_4

    const v4, 0x7f08054d

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 212
    const v3, 0x7f0f020f

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object v12, v3

    .line 219
    :goto_1
    const v3, 0x7f0f0228

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 221
    const v4, 0x7f0f020c

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 222
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->c:Z

    if-eqz v5, :cond_6

    const v5, 0x7f08048c

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 224
    const v4, 0x7f0f0211

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 225
    const v4, 0x7f0f0213

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 227
    const v4, 0x7f0f0215

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 228
    const v5, 0x7f0f0214

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 230
    const v6, 0x7f0f021c

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 231
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->c:Z

    if-eqz v7, :cond_7

    const v7, 0x7f080108

    :goto_3
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 233
    const v6, 0x7f0f021d

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 235
    const v7, 0x7f0f0222

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 236
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->c:Z

    if-eqz v8, :cond_8

    const v8, 0x7f080105

    :goto_4
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 238
    const v7, 0x7f0f0223

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 239
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->c:Z

    if-eqz v8, :cond_9

    .line 240
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v14}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getDeliveryAddress()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v14

    invoke-static {v7, v8, v9, v14}, Lcom/grubhub/AppBaseLibrary/android/utils/g;->a(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    .line 245
    :goto_5
    const v7, 0x7f0f0226

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 247
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->c:Z

    if-nez v8, :cond_b

    .line 250
    const/4 v9, 0x0

    .line 251
    const/4 v8, 0x0

    .line 254
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    if-eqz v14, :cond_0

    .line 255
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v8}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getLatitude()Ljava/lang/String;

    move-result-object v9

    .line 256
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v8}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getLongitude()Ljava/lang/String;

    move-result-object v8

    .line 259
    :cond_0
    invoke-static {v13}, Lcom/google/android/gms/common/e;->a(Landroid/content/Context;)I

    move-result v14

    if-nez v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    if-eqz v14, :cond_a

    .line 260
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_a

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 261
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Landroid/view/View;->setVisibility(I)V

    .line 265
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->u()Z

    move-result v10

    if-nez v10, :cond_2

    .line 267
    new-instance v10, Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v9}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-direct {v10, v14, v15, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 269
    invoke-static {}, Lcom/google/android/gms/maps/SupportMapFragment;->a()Lcom/google/android/gms/maps/SupportMapFragment;

    move-result-object v8

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->getChildFragmentManager()Landroid/support/v4/app/w;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v9

    .line 272
    const v14, 0x7f0f0212

    invoke-virtual {v9, v14, v8}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    .line 273
    invoke-virtual {v9}, Landroid/support/v4/app/ag;->a()I

    .line 275
    if-eqz v8, :cond_1

    .line 276
    new-instance v9, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v10}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;Lcom/google/android/gms/maps/model/LatLng;)V

    invoke-virtual {v8, v9}, Lcom/google/android/gms/maps/SupportMapFragment;->a(Lcom/google/android/gms/maps/e;)V

    .line 291
    :cond_1
    new-instance v8, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;Landroid/widget/LinearLayout;)V

    invoke-virtual {v11, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 321
    :cond_2
    :goto_6
    const v8, 0x7f0f0229

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 322
    const v9, 0x7f0f022a

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 323
    const v10, 0x7f0f022b

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 325
    const v11, 0x7f0f022c

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->m:Landroid/widget/Button;

    .line 326
    const v11, 0x7f0f022d

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->n:Landroid/widget/Button;

    .line 327
    const v11, 0x7f0f022e

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->o:Landroid/widget/Button;

    .line 329
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    if-eqz v11, :cond_3

    .line 330
    const v11, 0x7f080491

    invoke-virtual {v13, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v11, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v11}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantPhoneNumber()Ljava/lang/String;

    move-result-object v3

    .line 334
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 335
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->m:Landroid/widget/Button;

    const v12, 0x7f080487

    invoke-virtual {v13, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->m:Landroid/widget/Button;

    new-instance v12, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v3}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    :cond_3
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    if-eqz v3, :cond_15

    .line 358
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->e:Ljava/lang/String;

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 359
    const/16 v3, 0x8

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 360
    const/16 v3, 0x8

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 367
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getExpectedTimeInMillis()J

    move-result-wide v4

    .line 368
    invoke-static {v4, v5}, Lcom/grubhub/AppBaseLibrary/android/utils/b;->a(J)I

    move-result v3

    .line 369
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v11}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->isAsapOrder()Z

    move-result v11

    if-nez v11, :cond_e

    .line 371
    const v3, 0x7f0f0221

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "MMMM d, yyyy, h:mm a"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v5, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    .line 373
    invoke-interface {v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getTimePlacedMillis()J

    move-result-wide v14

    invoke-direct {v5, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 372
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    const v3, 0x7f0f021b

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 378
    const v3, 0x7f0f021a

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 379
    const v3, 0x7f0f021f

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 380
    const v3, 0x7f0f021e

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 398
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderSpecialInstructions()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 399
    const v3, 0x7f0f0225

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 400
    const v4, 0x7f0f0227

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 401
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 402
    const/16 v3, 0x8

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 408
    :goto_a
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 409
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderItems()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 410
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;

    .line 411
    invoke-static {v13}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f030082

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 412
    const v4, 0x7f0f02c7

    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getItemQuantity()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getItemName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    const v4, 0x7f0f02c6

    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v11, 0x7f080456

    invoke-virtual {v13, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getItemPrice()Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getItemQuantity()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v15

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v12, v14

    invoke-static {v7, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_b

    .line 211
    :cond_4
    const v4, 0x7f08054e

    goto/16 :goto_0

    .line 214
    :cond_5
    const v5, 0x7f0f020b

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 215
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 216
    const/16 v3, 0x8

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object v12, v5

    goto/16 :goto_1

    .line 222
    :cond_6
    const v5, 0x7f08048d

    goto/16 :goto_2

    .line 231
    :cond_7
    const v7, 0x7f080109

    goto/16 :goto_3

    .line 236
    :cond_8
    const v8, 0x7f080106

    goto/16 :goto_4

    .line 242
    :cond_9
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->h:Ljava/lang/String;

    invoke-static {v7, v8, v9, v14}, Lcom/grubhub/AppBaseLibrary/android/utils/g;->a(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 315
    :cond_a
    const/16 v8, 0x8

    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 318
    :cond_b
    const/16 v8, 0x8

    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 352
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->m:Landroid/widget/Button;

    const v11, 0x7f080488

    invoke-virtual {v3, v11}, Landroid/widget/Button;->setText(I)V

    .line 353
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->m:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_7

    .line 362
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->e:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 381
    :cond_e
    if-gtz v3, :cond_f

    .line 382
    const v3, 0x7f0f021b

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 383
    const v3, 0x7f0f021a

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 384
    const v3, 0x7f0f021f

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 385
    const v3, 0x7f0f021e

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 388
    :cond_f
    const-wide/32 v14, 0x927c0

    invoke-static {v4, v5, v14, v15}, Lcom/grubhub/AppBaseLibrary/android/utils/b;->a(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    const v3, 0x7f0f021b

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 392
    const v3, 0x7f0f021a

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 393
    const v3, 0x7f0f021f

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 394
    const v3, 0x7f0f021e

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 404
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderSpecialInstructions()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 419
    :cond_11
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 422
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getCoupon()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;

    move-result-object v4

    .line 423
    if-eqz v4, :cond_12

    .line 424
    invoke-interface {v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;->getDescription()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_16

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v5, 0x7f0804d9

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;->getDescription()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 425
    :goto_c
    invoke-interface {v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;->getAmount()Ljava/lang/Float;

    move-result-object v5

    if-eqz v5, :cond_17

    invoke-interface {v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;->getAmount()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 426
    :goto_d
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_18

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v6, 0x7f08024f

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 427
    :goto_e
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 428
    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 431
    :cond_12
    const v3, 0x7f08010e

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v5, 0x7f080456

    invoke-virtual {v13, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v8}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getSubtotal()Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 432
    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 434
    const v3, 0x7f08010d

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v5, 0x7f080456

    invoke-virtual {v13, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v8}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getTax()Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 435
    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 437
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->c:Z

    if-eqz v3, :cond_13

    .line 438
    const v3, 0x7f080107

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v5, 0x7f080456

    invoke-virtual {v13, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v8}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getDeliveryFee()Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 439
    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 443
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getTipType()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;

    move-result-object v3

    sget-object v4, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;->CASH:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;

    if-ne v3, v4, :cond_19

    .line 444
    invoke-virtual/range {p0 .. p0}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080111

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 448
    :goto_f
    const v4, 0x7f08010f

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4, v3}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 449
    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getAppliedDiscount()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;

    move-result-object v3

    .line 453
    if-eqz v3, :cond_14

    .line 454
    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;->getDiscountValue()Ljava/lang/Float;

    move-result-object v4

    if-eqz v4, :cond_1a

    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;->getDiscountValue()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 455
    :goto_10
    const v4, 0x7f08010c

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v6, 0x7f08024f

    invoke-virtual {v13, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4, v3}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 456
    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 460
    :cond_14
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080456

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getAmountDue()Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    const v3, 0x7f080126

    invoke-virtual {v13, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 464
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 465
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->n:Landroid/widget/Button;

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v3}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    :goto_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->isAsapOrder()Z

    move-result v3

    if-nez v3, :cond_15

    .line 489
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->b(Landroid/view/View;)V

    .line 493
    :cond_15
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a(Landroid/view/View;)V

    .line 494
    return-object v2

    .line 424
    :cond_16
    const v3, 0x7f0804d8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_c

    .line 425
    :cond_17
    const/4 v4, 0x0

    goto/16 :goto_d

    .line 426
    :cond_18
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v5, 0x7f080456

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_e

    .line 446
    :cond_19
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v4, 0x7f080456

    invoke-virtual {v13, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-interface {v7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getTip()Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_f

    .line 454
    :cond_1a
    const/4 v3, 0x0

    goto/16 :goto_10

    .line 484
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->n:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_11
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 569
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 570
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->i:Lcom/grubhub/AppBaseLibrary/android/order/receipt/b;

    .line 571
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 515
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 517
    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 518
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 519
    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 522
    :cond_0
    const/4 v0, 0x1

    .line 524
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
    .line 499
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 501
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 502
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 503
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 505
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_0

    .line 506
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->k:Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;->LAUNCHED_BY_FUTURE_ORDER:Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;

    if-ne v1, v2, :cond_1

    const v1, 0x7f080091

    .line 509
    :goto_0
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b(I)V

    .line 511
    :cond_0
    return-void

    .line 506
    :cond_1
    const v1, 0x7f080090

    goto :goto_0
.end method

.method public onStart()V
    .locals 7

    .prologue
    .line 530
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 532
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->k:Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;->LAUNCHED_BY_ORDER_STATUS:Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;

    if-ne v0, v1, :cond_0

    .line 534
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CONVENIENCE_FEATURES:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->ORDER_STATUS_TRACKING:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v4, "order tracking receipt"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 555
    :goto_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->isManagedDelivery()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Z)V

    .line 556
    return-void

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->k:Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;->LAUNCHED_BY_FUTURE_ORDER:Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;

    if-ne v0, v1, :cond_1

    .line 540
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CONVENIENCE_FEATURES:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->USER_ACCOUNT_INFO:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v4, "open future order details"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    goto :goto_0

    .line 546
    :cond_1
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v6

    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CORE_ORDERING_EXP:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->THANK_YOU:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v3, "thank you"

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    .line 550
    invoke-interface {v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v4

    :goto_1
    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->j:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    .line 551
    invoke-direct {p0, v5}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-virtual {v6, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->b(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    goto :goto_0

    .line 550
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 561
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->b()V

    .line 562
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->e()V

    .line 563
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->f()V

    .line 564
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 565
    return-void
.end method
