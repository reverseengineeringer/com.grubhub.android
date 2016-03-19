.class public Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersActivity;
.super Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/c;
.implements Lcom/grubhub/AppBaseLibrary/android/order/receipt/b;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private k()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    .line 133
    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V

    .line 134
    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->c(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)V

    .line 137
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersActivity;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 138
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersActivity;->d:Ljava/lang/String;

    .line 140
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    .line 141
    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 142
    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {v0}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 145
    invoke-virtual {v0, v1}, Landroid/support/v4/app/ag;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 148
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v1

    .line 97
    invoke-interface {v1, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V

    .line 98
    invoke-interface {v1, p2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->c(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)V

    .line 102
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getDinerName()Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getCustomerContactPhone()Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderType()Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v2

    sget-object v4, Lcom/grubhub/AppBaseLibrary/android/order/g;->DELIVERY:Lcom/grubhub/AppBaseLibrary/android/order/g;

    if-ne v2, v4, :cond_0

    const/4 v4, 0x1

    .line 106
    :goto_0
    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getOrderPaymentType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->fromString(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    move-result-object v5

    sget-object v6, Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;->LAUNCHED_BY_FUTURE_ORDER:Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;

    move-object v2, v0

    .line 101
    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;)Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;

    move-result-object v0

    .line 109
    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersActivity;->d:Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v1

    .line 111
    invoke-virtual {v1}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    const v2, 0x7f0f0084

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersActivity;->d:Ljava/lang/String;

    .line 112
    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 116
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersActivity;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    return-void

    .line 105
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;

    .line 123
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;

    .line 124
    invoke-virtual {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;->a(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersActivity;->finish()V

    .line 86
    return-void
.end method

.method public i()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersActivity;->k()V

    .line 91
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 152
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersActivity;->setResult(I)V

    .line 153
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersActivity;->h()V

    .line 154
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 76
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersActivity;->k()V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const v3, 0x7f0f0085

    .line 49
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersActivity;->setContentView(I)V

    .line 52
    const v0, 0x7f0f030d

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersActivity;->c:Landroid/view/View;

    .line 53
    invoke-virtual {p0, v3}, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersActivity;->e:Landroid/view/View;

    .line 56
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersActivity;->d:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    .line 59
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;->a()Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 61
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 65
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 66
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/futureOrders/GHSFutureOrdersActivity;->k()V

    .line 68
    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
