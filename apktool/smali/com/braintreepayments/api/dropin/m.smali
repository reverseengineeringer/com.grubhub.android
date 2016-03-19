.class public Lcom/braintreepayments/api/dropin/m;
.super Lcom/braintreepayments/api/dropin/c;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private c:Lcom/braintreepayments/api/dropin/view/PaymentMethodView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/Button;

.field private f:I


# direct methods
.method public constructor <init>(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;Landroid/os/Bundle;Landroid/view/View;Lcom/braintreepayments/api/c;Lcom/braintreepayments/api/dropin/d;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/braintreepayments/api/dropin/c;-><init>(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;Landroid/view/View;Lcom/braintreepayments/api/c;Lcom/braintreepayments/api/dropin/d;)V

    .line 39
    sget v0, Lcom/braintreepayments/api/dropin/j;->bt_selected_payment_method_view:I

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/dropin/m;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/dropin/view/PaymentMethodView;

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/m;->c:Lcom/braintreepayments/api/dropin/view/PaymentMethodView;

    .line 40
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/m;->c:Lcom/braintreepayments/api/dropin/view/PaymentMethodView;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/api/dropin/view/PaymentMethodView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    sget v0, Lcom/braintreepayments/api/dropin/j;->bt_change_payment_method_link:I

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/dropin/m;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/m;->d:Landroid/widget/TextView;

    .line 43
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/m;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    sget v0, Lcom/braintreepayments/api/dropin/j;->bt_select_payment_method_submit_button:I

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/dropin/m;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/m;->e:Landroid/widget/Button;

    .line 46
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/m;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/m;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/m;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 49
    const-string v0, "com.braintreepayments.api.dropin.EXTRA_SELECTED_PAYMENT_METHOD"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const-string v0, "com.braintreepayments.api.dropin.EXTRA_SELECTED_PAYMENT_METHOD"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/braintreepayments/api/dropin/m;->f:I

    .line 54
    :goto_0
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/m;->a()V

    .line 55
    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/braintreepayments/api/dropin/m;->f:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/braintreepayments/api/dropin/m;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/m;->c()V

    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 93
    new-instance v1, Lcom/braintreepayments/api/dropin/f;

    iget-object v0, p0, Lcom/braintreepayments/api/dropin/m;->a:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

    iget-object v2, p0, Lcom/braintreepayments/api/dropin/m;->b:Lcom/braintreepayments/api/c;

    invoke-virtual {v2}, Lcom/braintreepayments/api/c;->m()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v0, p0, v2}, Lcom/braintreepayments/api/dropin/f;-><init>(Landroid/content/Context;Lcom/braintreepayments/api/dropin/m;Ljava/util/List;)V

    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    .line 98
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/braintreepayments/api/dropin/m;->a:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

    const v3, 0x1030075

    invoke-direct {v0, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 104
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/braintreepayments/api/dropin/l;->bt_choose_payment_method:I

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/braintreepayments/api/dropin/l;->bt_add_new_payment_method:I

    new-instance v2, Lcom/braintreepayments/api/dropin/m$1;

    invoke-direct {v2, p0}, Lcom/braintreepayments/api/dropin/m$1;-><init>(Lcom/braintreepayments/api/dropin/m;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 114
    return-void

    .line 101
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/braintreepayments/api/dropin/m;->a:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

    const v3, 0x103000d

    invoke-direct {v0, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/m;->a:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

    invoke-virtual {v0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a()V

    .line 118
    return-void
.end method

.method private d()Lcom/braintreepayments/api/models/PaymentMethod;
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/m;->b:Lcom/braintreepayments/api/c;

    invoke-virtual {v0}, Lcom/braintreepayments/api/c;->m()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/braintreepayments/api/dropin/m;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/models/PaymentMethod;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/m;->c:Lcom/braintreepayments/api/dropin/view/PaymentMethodView;

    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/m;->d()Lcom/braintreepayments/api/models/PaymentMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/dropin/view/PaymentMethodView;->setPaymentMethodDetails(Lcom/braintreepayments/api/models/PaymentMethod;)V

    .line 83
    sget v0, Lcom/braintreepayments/api/dropin/j;->bt_change_payment_method_link:I

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/dropin/m;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 84
    iget-object v1, p0, Lcom/braintreepayments/api/dropin/m;->b:Lcom/braintreepayments/api/c;

    invoke-virtual {v1}, Lcom/braintreepayments/api/c;->m()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 85
    sget v1, Lcom/braintreepayments/api/dropin/l;->bt_add_payment_method:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    sget v1, Lcom/braintreepayments/api/dropin/l;->bt_change_payment_method:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 59
    const-string v0, "com.braintreepayments.api.dropin.EXTRA_SELECTED_PAYMENT_METHOD"

    iget v1, p0, Lcom/braintreepayments/api/dropin/m;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    return-void
.end method

.method protected b(I)V
    .locals 0

    .prologue
    .line 121
    iput p1, p0, Lcom/braintreepayments/api/dropin/m;->f:I

    .line 122
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/m;->a()V

    .line 123
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/braintreepayments/api/dropin/m;->c:Lcom/braintreepayments/api/dropin/view/PaymentMethodView;

    invoke-virtual {v1}, Lcom/braintreepayments/api/dropin/view/PaymentMethodView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 65
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/m;->b:Lcom/braintreepayments/api/c;

    invoke-virtual {v0}, Lcom/braintreepayments/api/c;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/m;->b()V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/braintreepayments/api/dropin/m;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 69
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/m;->b:Lcom/braintreepayments/api/c;

    invoke-virtual {v0}, Lcom/braintreepayments/api/c;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 70
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/m;->c()V

    goto :goto_0

    .line 72
    :cond_2
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/m;->b()V

    goto :goto_0

    .line 74
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/braintreepayments/api/dropin/m;->e:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/m;->e:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 76
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/m;->a:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/m;->d()Lcom/braintreepayments/api/models/PaymentMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->b(Lcom/braintreepayments/api/models/PaymentMethod;)V

    goto :goto_0
.end method
