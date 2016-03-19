.class Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/a;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 547
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/a;->a:Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;

    .line 548
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 549
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
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/a;->clear()V

    .line 558
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/a;->addAll(Ljava/util/Collection;)V

    .line 559
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/a;->notifyDataSetChanged()V

    .line 560
    return-void
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 564
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 569
    if-nez p2, :cond_0

    .line 570
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/a;->a:Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03008b

    invoke-virtual {v0, v1, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 573
    :cond_0
    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    .line 576
    const v1, 0x7f0f01df

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getRestaurantName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    const v1, 0x7f0f02d4

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    const-string v2, "%s %s"

    new-array v3, v10, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/a;->a:Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;

    const v5, 0x7f080396

    .line 580
    invoke-virtual {v4, v5}, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "MMM d, yyyy, h:mm a"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v5, Ljava/util/Date;

    .line 581
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getExpectedTimeInMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    .line 579
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    const-string v1, "%s $%.2f"

    new-array v2, v10, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/a;->a:Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;

    const v4, 0x7f080397

    .line 585
    invoke-virtual {v3, v4}, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 586
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getAmountDue()Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v9

    .line 584
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 588
    const v0, 0x7f0f02d5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;

    .line 589
    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    return-object p2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 596
    const/4 v0, 0x1

    return v0
.end method
