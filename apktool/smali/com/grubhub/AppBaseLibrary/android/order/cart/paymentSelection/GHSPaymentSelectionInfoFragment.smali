.class public Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;
.super Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/utils/g/f;


# instance fields
.field private g:Lcom/grubhub/AppBaseLibrary/android/account/e;

.field private h:Lcom/grubhub/AppBaseLibrary/android/utils/g/b;

.field private i:Lcom/grubhub/AppBaseLibrary/android/utils/g/c;

.field private j:Lcom/grubhub/AppBaseLibrary/android/utils/g/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/grubhub/AppBaseLibrary/android/account/e;)Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;
    .locals 4

    .prologue
    .line 42
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;-><init>()V

    .line 44
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 45
    const-string v2, "spinnerLocation"

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/views/j;->PAYMENT_INFO:Lcom/grubhub/AppBaseLibrary/android/views/j;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 46
    const-string v2, "paymentInfoType"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 47
    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 49
    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;)Lcom/grubhub/AppBaseLibrary/android/utils/g/a;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->j:Lcom/grubhub/AppBaseLibrary/android/utils/g/a;

    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;Lcom/grubhub/AppBaseLibrary/android/utils/g/a;)Lcom/grubhub/AppBaseLibrary/android/utils/g/a;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->j:Lcom/grubhub/AppBaseLibrary/android/utils/g/a;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;Lcom/grubhub/AppBaseLibrary/android/utils/g/c;)Lcom/grubhub/AppBaseLibrary/android/utils/g/c;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->i:Lcom/grubhub/AppBaseLibrary/android/utils/g/c;

    return-object p1
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;)Lcom/grubhub/AppBaseLibrary/android/account/e;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->g:Lcom/grubhub/AppBaseLibrary/android/account/e;

    return-object v0
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;)Lcom/grubhub/AppBaseLibrary/android/utils/g/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->i:Lcom/grubhub/AppBaseLibrary/android/utils/g/c;

    return-object v0
.end method

.method private j()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 281
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->h:Lcom/grubhub/AppBaseLibrary/android/utils/g/b;

    .line 282
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->i:Lcom/grubhub/AppBaseLibrary/android/utils/g/c;

    .line 283
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->j:Lcom/grubhub/AppBaseLibrary/android/utils/g/a;

    .line 284
    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 1

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->g()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->g()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/a;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    .line 266
    :cond_0
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->j()V

    .line 267
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentResourceCreatedDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V
    .locals 1

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->g()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->g()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentResourceCreatedDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    .line 258
    :cond_0
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->j()V

    .line 259
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .prologue
    .line 79
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/utils/g/f;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->h:Lcom/grubhub/AppBaseLibrary/android/utils/g/b;

    .line 80
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->h:Lcom/grubhub/AppBaseLibrary/android/utils/g/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->a()V

    .line 81
    return-void
.end method

.method protected b()[Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;
    .locals 3

    .prologue
    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->g:Lcom/grubhub/AppBaseLibrary/android/account/e;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/account/e;->ADD:Lcom/grubhub/AppBaseLibrary/android/account/e;

    if-ne v1, v2, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->c()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->f()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/f;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;

    return-object v0

    .line 126
    :cond_1
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->g:Lcom/grubhub/AppBaseLibrary/android/account/e;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/account/e;->ENTER:Lcom/grubhub/AppBaseLibrary/android/account/e;

    if-ne v1, v2, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->h()Ljava/util/Set;

    move-result-object v1

    .line 129
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 131
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->c()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->c()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->q()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->ANDROID_PAY:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 138
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->e()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/a;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_3
    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->PAYPAL_EXPRESS:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 143
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->f()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/f;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_4
    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->CASH:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->d()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected d()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/c;
    .locals 2

    .prologue
    .line 158
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/c;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment$1;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;)V

    invoke-direct {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/c;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/e;)V

    return-object v0
.end method

.method protected e()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/a;
    .locals 2

    .prologue
    .line 177
    .line 179
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/a;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment$2;

    invoke-direct {v1, p0, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;Lcom/grubhub/AppBaseLibrary/android/utils/g/f;)V

    invoke-direct {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/a;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/e;)V

    return-object v0
.end method

.method protected f()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/f;
    .locals 2

    .prologue
    .line 194
    .line 196
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/f;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment$3;

    invoke-direct {v1, p0, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;Lcom/grubhub/AppBaseLibrary/android/utils/g/f;)V

    invoke-direct {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/f;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/e;)V

    return-object v0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->g()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->g()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/a;->c()V

    .line 274
    :cond_0
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->j()V

    .line 275
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 104
    sparse-switch p1, :sswitch_data_0

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 106
    :sswitch_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->i:Lcom/grubhub/AppBaseLibrary/android/utils/g/c;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->i:Lcom/grubhub/AppBaseLibrary/android/utils/g/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->a(IILandroid/content/Intent;)V

    goto :goto_0

    .line 112
    :sswitch_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->j:Lcom/grubhub/AppBaseLibrary/android/utils/g/a;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->j:Lcom/grubhub/AppBaseLibrary/android/utils/g/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->a(IILandroid/content/Intent;)V

    goto :goto_0

    .line 104
    nop

    :sswitch_data_0
    .sparse-switch
        0x83e -> :sswitch_1
        0x840 -> :sswitch_1
        0xd197 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 57
    const-string v1, "paymentInfoType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/account/e;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->g:Lcom/grubhub/AppBaseLibrary/android/account/e;

    .line 58
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;->onStop()V

    .line 87
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->h:Lcom/grubhub/AppBaseLibrary/android/utils/g/b;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->h:Lcom/grubhub/AppBaseLibrary/android/utils/g/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/b;->h_()V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->i:Lcom/grubhub/AppBaseLibrary/android/utils/g/c;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->i:Lcom/grubhub/AppBaseLibrary/android/utils/g/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/c;->h_()V

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->j:Lcom/grubhub/AppBaseLibrary/android/utils/g/a;

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->j:Lcom/grubhub/AppBaseLibrary/android/utils/g/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/g/a;->h_()V

    .line 98
    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f0f01f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080518

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    const v0, 0x7f0f01fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    return-void
.end method
