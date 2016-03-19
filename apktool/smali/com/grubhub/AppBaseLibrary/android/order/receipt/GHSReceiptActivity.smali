.class public Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptActivity;
.super Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;-><init>()V

    .line 34
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    const-string v1, "order_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v1, "first_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v1, "last_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v1, "phone_number"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v1, "is_delivery"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 60
    const-string v1, "launch_reason"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 62
    if-nez p6, :cond_0

    .line 63
    const-string v1, "payment_type"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->CREDIT_CARD:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 67
    :goto_0
    return-object v0

    .line 65
    :cond_0
    const-string v1, "payment_type"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .prologue
    const v10, 0x7f0f0091

    const v9, 0x7f0f0090

    .line 72
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptActivity;->setContentView(I)V

    .line 76
    const v0, 0x7f0f008a

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptActivity;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;

    .line 77
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptActivity;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptActivity;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;

    invoke-virtual {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSFeedbackView;->setListener(Lcom/grubhub/AppBaseLibrary/android/views/f;)V

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v7

    .line 82
    invoke-virtual {v7, v10}, Landroid/support/v4/app/w;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 83
    invoke-virtual {v7, v9}, Landroid/support/v4/app/w;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 85
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 86
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "order_number"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "first_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "last_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "phone_number"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "is_delivery"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 92
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "launch_reason"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;

    .line 93
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v8, "payment_type"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    .line 94
    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;)Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;

    move-result-object v0

    .line 95
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/yummyRummy/GHSYummyRummyFragment;->a()Lcom/grubhub/AppBaseLibrary/android/yummyRummy/GHSYummyRummyFragment;

    move-result-object v1

    .line 96
    invoke-virtual {v7}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v2

    .line 98
    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;->LAUNCHED_BY_CART:Lcom/grubhub/AppBaseLibrary/android/order/receipt/a;

    if-ne v6, v3, :cond_1

    .line 99
    const-class v3, Lcom/grubhub/AppBaseLibrary/android/yummyRummy/GHSYummyRummyFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v9, v1, v3}, Landroid/support/v4/app/ag;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    .line 102
    :cond_1
    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v10, v0, v1}, Landroid/support/v4/app/ag;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    .line 103
    invoke-virtual {v2}, Landroid/support/v4/app/ag;->a()I

    .line 105
    :cond_2
    return-void
.end method
