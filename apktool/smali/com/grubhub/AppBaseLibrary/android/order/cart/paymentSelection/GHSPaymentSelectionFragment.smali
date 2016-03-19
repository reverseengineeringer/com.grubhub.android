.class public abstract Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field protected a:Z

.field protected b:Ljava/lang/String;

.field protected c:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

.field protected d:Lcom/grubhub/AppBaseLibrary/android/views/GHSPaymentsSpinner;

.field protected e:Lcom/grubhub/AppBaseLibrary/android/views/j;

.field protected f:[Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 284
    return-void
.end method

.method private a(Lcom/grubhub/AppBaseLibrary/android/views/GHSPaymentsSpinner;)V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;->a:Z

    .line 137
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment$1;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;)V

    invoke-virtual {p1, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSPaymentsSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 154
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;->a(I)V

    .line 89
    return-void
.end method

.method protected a(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 162
    iput-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;->a:Z

    .line 163
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;->d:Lcom/grubhub/AppBaseLibrary/android/views/GHSPaymentsSpinner;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;->d:Lcom/grubhub/AppBaseLibrary/android/views/GHSPaymentsSpinner;

    invoke-virtual {v0, p1, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSPaymentsSpinner;->setSelection(IZ)V

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;->a:Z

    goto :goto_0
.end method

.method protected b()[Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;
    .locals 3

    .prologue
    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;->h()Ljava/util/Set;

    move-result-object v1

    .line 101
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;->c()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->q()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;->e()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/a;

    move-result-object v2

    .line 108
    if-eqz v2, :cond_0

    .line 109
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;->f()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/f;

    move-result-object v2

    .line 115
    if-eqz v2, :cond_1

    .line 116
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_1
    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->CASH:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;->d()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/c;

    move-result-object v1

    .line 122
    if-eqz v1, :cond_2

    .line 123
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_2
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
    .line 177
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/b;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment$2;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;)V

    invoke-direct {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/e;)V

    return-object v0
.end method

.method protected d()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/c;
    .locals 2

    .prologue
    .line 190
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/c;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment$3;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;)V

    invoke-direct {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/c;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/e;)V

    return-object v0
.end method

.method protected e()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/a;
    .locals 2

    .prologue
    .line 204
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/a;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment$4;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;)V

    invoke-direct {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/a;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/e;)V

    return-object v0
.end method

.method protected f()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/f;
    .locals 2

    .prologue
    .line 217
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/f;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment$5;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;)V

    invoke-direct {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/f;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/e;)V

    return-object v0
.end method

.method protected g()Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/a;
    .locals 2

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/a;

    if-eqz v1, :cond_0

    .line 232
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/a;

    .line 234
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected h()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;Z)Ljava/util/Set;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 247
    :cond_1
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    .line 52
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 53
    const-string v0, "spinnerLocation"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/j;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;->e:Lcom/grubhub/AppBaseLibrary/android/views/j;

    .line 54
    const-string v0, "googleEventCategory"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;->b:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 59
    const v0, 0x7f030066

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f0f01fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSPaymentsSpinner;

    .line 67
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;->e:Lcom/grubhub/AppBaseLibrary/android/views/j;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSPaymentsSpinner;->setLocation(Lcom/grubhub/AppBaseLibrary/android/views/j;)V

    .line 70
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;->b()[Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;

    move-result-object v1

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;->f:[Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;

    .line 73
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v2

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;->f:[Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;

    invoke-direct {v1, p0, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;Landroid/content/Context;[Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSPaymentsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 74
    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;->a(Lcom/grubhub/AppBaseLibrary/android/views/GHSPaymentsSpinner;)V

    .line 76
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;->d:Lcom/grubhub/AppBaseLibrary/android/views/GHSPaymentsSpinner;

    .line 79
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;->f:[Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 80
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 82
    :cond_0
    return-void
.end method
