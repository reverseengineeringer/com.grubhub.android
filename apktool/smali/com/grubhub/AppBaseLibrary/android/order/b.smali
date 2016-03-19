.class Lcom/grubhub/AppBaseLibrary/android/order/b;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/order/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/order/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 655
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/b;->a:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;

    .line 656
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 657
    return-void
.end method

.method private a(Landroid/widget/LinearLayout;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderStatus;)V
    .locals 9

    .prologue
    const/16 v3, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 692
    const v0, 0x7f0f02e4

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 693
    const v1, 0x7f0f01c8

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 695
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderStatus;->getOrderEvents()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v8, :cond_0

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/b;->a:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;

    invoke-static {v2, p2}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 696
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 697
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/b$1;

    invoke-direct {v2, p0, p2}, Lcom/grubhub/AppBaseLibrary/android/order/b$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/b;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 715
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v3, "order status tracking"

    const-string v4, "order status tracking_impression"

    const-string v5, "real-time order tracking"

    const-string v6, "true"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 722
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 728
    :goto_0
    const v0, 0x7f0f02e6

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 729
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 731
    invoke-interface {p3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderStatus;->getOrderEvents()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO$OrderEvent;

    .line 732
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/b;->a:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/q;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f030095

    invoke-virtual {v2, v4, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 733
    const v2, 0x7f0f02ea

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO$OrderEvent;->getOrderEventTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    const v2, 0x7f0f02eb

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO$OrderEvent;->getOrderEventHeadline()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 735
    const v2, 0x7f0f02ec

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1OrderStatusDTO$OrderEvent;->getOrderEventDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 736
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 724
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 725
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 739
    :cond_1
    const v0, 0x7f0f02e8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderStatus;->getRestaurantName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 741
    const v0, 0x7f0f02e7

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 742
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/b$2;

    invoke-direct {v1, p0, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/order/b$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/b;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderStatus;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 749
    const v0, 0x7f0f02e9

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 750
    invoke-interface {p3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderStatus;->getRestaurantPhone()Ljava/lang/String;

    move-result-object v1

    .line 751
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 752
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/b;->a:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;

    const v3, 0x7f080487

    invoke-virtual {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 753
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/b$3;

    invoke-direct {v2, p0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/b$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/b;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 771
    :goto_2
    return-void

    .line 768
    :cond_2
    const v1, 0x7f080488

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 769
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 654
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 786
    const-string v0, "call care"

    if-eq p1, v0, :cond_0

    const-string v0, "call restaurant"

    if-ne p1, v0, :cond_1

    .line 787
    :cond_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "exit links"

    const-string v3, "completed orders"

    invoke-direct {v1, v2, v3, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 791
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/order/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/b;->clear()V

    .line 661
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/b;->addAll(Ljava/util/Collection;)V

    .line 662
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/b;->notifyDataSetChanged()V

    .line 663
    return-void
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 667
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 672
    check-cast p2, Landroid/widget/LinearLayout;

    .line 674
    if-nez p2, :cond_0

    .line 675
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/b;->a:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/q;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030094

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    move-object p2, v0

    .line 678
    :cond_0
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/c;

    .line 679
    iget-object v1, v0, Lcom/grubhub/AppBaseLibrary/android/order/c;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/c;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderStatus;

    invoke-direct {p0, p2, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/order/b;->a(Landroid/widget/LinearLayout;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIOrderStatus;)V

    .line 681
    return-object p2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 775
    const/4 v0, 0x1

    return v0
.end method
