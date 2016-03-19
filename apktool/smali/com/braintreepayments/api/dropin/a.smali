.class public Lcom/braintreepayments/api/dropin/a;
.super Lcom/braintreepayments/api/dropin/c;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/braintreepayments/cardform/a;
.implements Lcom/braintreepayments/cardform/b;
.implements Lcom/braintreepayments/cardform/c;


# instance fields
.field private c:Lcom/braintreepayments/api/dropin/view/PaymentButton;

.field private d:Lcom/braintreepayments/cardform/view/CardForm;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/Button;

.field private g:Lcom/braintreepayments/api/dropin/view/LoadingHeader;

.field private h:Landroid/widget/ScrollView;

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;Landroid/os/Bundle;Landroid/view/View;Lcom/braintreepayments/api/c;Lcom/braintreepayments/api/dropin/d;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/braintreepayments/api/dropin/c;-><init>(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;Landroid/view/View;Lcom/braintreepayments/api/c;Lcom/braintreepayments/api/dropin/d;)V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/braintreepayments/api/dropin/a;->i:Z

    .line 54
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/a;->g()V

    .line 55
    invoke-direct {p0, p2}, Lcom/braintreepayments/api/dropin/a;->b(Landroid/os/Bundle;)V

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/braintreepayments/api/dropin/a;)Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/a;->h:Landroid/widget/ScrollView;

    return-object v0
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 86
    const-string v0, "com.braintreepayments.api.dropin.EXTRA_FORM_IS_SUBMITTING"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "com.braintreepayments.api.dropin.EXTRA_FORM_IS_SUBMITTING"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/braintreepayments/api/dropin/a;->i:Z

    .line 88
    iget-boolean v0, p0, Lcom/braintreepayments/api/dropin/a;->i:Z

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/a;->k()V

    .line 93
    :cond_0
    const-string v0, "com.braintreepayments.api.dropin.EXTRA_SUBMIT_BUTTON_ENABLED"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/a;->f:Landroid/widget/Button;

    const-string v1, "com.braintreepayments.api.dropin.EXTRA_SUBMIT_BUTTON_ENABLED"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/a;->d:Lcom/braintreepayments/cardform/view/CardForm;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/CardForm;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/a;->l()V

    .line 100
    :cond_2
    return-void
.end method

.method private g()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 59
    sget v0, Lcom/braintreepayments/api/dropin/j;->bt_header_container:I

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/dropin/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/dropin/view/LoadingHeader;

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/a;->g:Lcom/braintreepayments/api/dropin/view/LoadingHeader;

    .line 60
    sget v0, Lcom/braintreepayments/api/dropin/j;->bt_form_scroll_container:I

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/dropin/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/a;->h:Landroid/widget/ScrollView;

    .line 61
    sget v0, Lcom/braintreepayments/api/dropin/j;->bt_description_container:I

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/dropin/a;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/a;->e:Landroid/view/View;

    .line 62
    sget v0, Lcom/braintreepayments/api/dropin/j;->bt_payment_button:I

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/dropin/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/dropin/view/PaymentButton;

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/a;->c:Lcom/braintreepayments/api/dropin/view/PaymentButton;

    .line 63
    sget v0, Lcom/braintreepayments/api/dropin/j;->bt_card_form:I

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/dropin/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/cardform/view/CardForm;

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/a;->d:Lcom/braintreepayments/cardform/view/CardForm;

    .line 64
    sget v0, Lcom/braintreepayments/api/dropin/j;->bt_card_form_submit_button:I

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/dropin/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/a;->f:Landroid/widget/Button;

    .line 66
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/a;->c:Lcom/braintreepayments/api/dropin/view/PaymentButton;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/api/dropin/view/PaymentButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/a;->c:Lcom/braintreepayments/api/dropin/view/PaymentButton;

    iget-object v1, p0, Lcom/braintreepayments/api/dropin/a;->a:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

    invoke-virtual {v1}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->c()Lcom/google/android/gms/wallet/Cart;

    move-result-object v1

    iget-object v3, p0, Lcom/braintreepayments/api/dropin/a;->a:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

    invoke-virtual {v3}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->d()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/braintreepayments/api/dropin/view/PaymentButton;->a(Lcom/google/android/gms/wallet/Cart;ZZZ)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/a;->c:Lcom/braintreepayments/api/dropin/view/PaymentButton;

    iget-object v1, p0, Lcom/braintreepayments/api/dropin/a;->a:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

    iget-object v3, p0, Lcom/braintreepayments/api/dropin/a;->b:Lcom/braintreepayments/api/c;

    invoke-virtual {v0, v1, v3}, Lcom/braintreepayments/api/dropin/view/PaymentButton;->a(Landroid/app/Activity;Lcom/braintreepayments/api/c;)V

    .line 75
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/a;->d:Lcom/braintreepayments/cardform/view/CardForm;

    iget-object v1, p0, Lcom/braintreepayments/api/dropin/a;->a:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

    iget-object v3, p0, Lcom/braintreepayments/api/dropin/a;->b:Lcom/braintreepayments/api/c;

    invoke-virtual {v3}, Lcom/braintreepayments/api/c;->g()Z

    move-result v4

    iget-object v3, p0, Lcom/braintreepayments/api/dropin/a;->b:Lcom/braintreepayments/api/c;

    invoke-virtual {v3}, Lcom/braintreepayments/api/c;->h()Z

    move-result v5

    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/a;->f()Ljava/lang/String;

    move-result-object v6

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Lcom/braintreepayments/cardform/view/CardForm;->a(Landroid/app/Activity;ZZZZLjava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/a;->d:Lcom/braintreepayments/cardform/view/CardForm;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/cardform/view/CardForm;->setOnCardFormValidListener(Lcom/braintreepayments/cardform/c;)V

    .line 78
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/a;->d:Lcom/braintreepayments/cardform/view/CardForm;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/cardform/view/CardForm;->setOnCardFormSubmitListener(Lcom/braintreepayments/cardform/b;)V

    .line 79
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/a;->d:Lcom/braintreepayments/cardform/view/CardForm;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/cardform/view/CardForm;->setOnFormFieldFocusedListener(Lcom/braintreepayments/cardform/a;)V

    .line 81
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/a;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/a;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 83
    return-void

    .line 71
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private h()Lcom/braintreepayments/api/models/f;
    .locals 2

    .prologue
    .line 147
    new-instance v0, Lcom/braintreepayments/api/models/f;

    invoke-direct {v0}, Lcom/braintreepayments/api/models/f;-><init>()V

    iget-object v1, p0, Lcom/braintreepayments/api/dropin/a;->d:Lcom/braintreepayments/cardform/view/CardForm;

    invoke-virtual {v1}, Lcom/braintreepayments/cardform/view/CardForm;->getCardNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/models/f;->a(Ljava/lang/String;)Lcom/braintreepayments/api/models/f;

    move-result-object v0

    iget-object v1, p0, Lcom/braintreepayments/api/dropin/a;->d:Lcom/braintreepayments/cardform/view/CardForm;

    invoke-virtual {v1}, Lcom/braintreepayments/cardform/view/CardForm;->getExpirationMonth()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/models/f;->c(Ljava/lang/String;)Lcom/braintreepayments/api/models/f;

    move-result-object v0

    iget-object v1, p0, Lcom/braintreepayments/api/dropin/a;->d:Lcom/braintreepayments/cardform/view/CardForm;

    invoke-virtual {v1}, Lcom/braintreepayments/cardform/view/CardForm;->getExpirationYear()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/models/f;->d(Ljava/lang/String;)Lcom/braintreepayments/api/models/f;

    move-result-object v0

    const-string v1, "dropin"

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/models/f;->f(Ljava/lang/String;)Lcom/braintreepayments/api/models/f;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/braintreepayments/api/dropin/a;->b:Lcom/braintreepayments/api/c;

    invoke-virtual {v1}, Lcom/braintreepayments/api/c;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/braintreepayments/api/dropin/a;->d:Lcom/braintreepayments/cardform/view/CardForm;

    invoke-virtual {v1}, Lcom/braintreepayments/cardform/view/CardForm;->getCvv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/models/f;->b(Ljava/lang/String;)Lcom/braintreepayments/api/models/f;

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/braintreepayments/api/dropin/a;->b:Lcom/braintreepayments/api/c;

    invoke-virtual {v1}, Lcom/braintreepayments/api/c;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/braintreepayments/api/dropin/a;->d:Lcom/braintreepayments/cardform/view/CardForm;

    invoke-virtual {v1}, Lcom/braintreepayments/cardform/view/CardForm;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/models/f;->e(Ljava/lang/String;)Lcom/braintreepayments/api/models/f;

    .line 160
    :cond_1
    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/a;->g:Lcom/braintreepayments/api/dropin/view/LoadingHeader;

    iget-object v1, p0, Lcom/braintreepayments/api/dropin/a;->a:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

    sget v2, Lcom/braintreepayments/api/dropin/l;->bt_invalid_card:I

    invoke-virtual {v1, v2}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->setError(Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method private j()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/a;->d:Lcom/braintreepayments/cardform/view/CardForm;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/CardForm;->g()V

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/braintreepayments/api/dropin/a;->i:Z

    .line 217
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/a;->k()V

    .line 218
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 221
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/a;->d:Lcom/braintreepayments/cardform/view/CardForm;

    invoke-virtual {v0, v1}, Lcom/braintreepayments/cardform/view/CardForm;->setEnabled(Z)V

    .line 222
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/a;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 224
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/a;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/a;->g:Lcom/braintreepayments/api/dropin/view/LoadingHeader;

    invoke-virtual {v0}, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->a()V

    .line 226
    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/a;->f:Landroid/widget/Button;

    sget v1, Lcom/braintreepayments/api/dropin/i;->bt_submit_button_background:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 234
    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/a;->f:Landroid/widget/Button;

    sget v1, Lcom/braintreepayments/api/dropin/h;->bt_button_disabled_color:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 238
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/a;->f:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 135
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/braintreepayments/api/dropin/a;->i:Z

    .line 165
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/a;->b:Lcom/braintreepayments/api/c;

    iget-object v1, p0, Lcom/braintreepayments/api/dropin/a;->a:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/braintreepayments/api/c;->a(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 166
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 104
    const-string v0, "com.braintreepayments.api.dropin.EXTRA_FORM_IS_SUBMITTING"

    iget-boolean v1, p0, Lcom/braintreepayments/api/dropin/a;->i:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 105
    const-string v0, "com.braintreepayments.api.dropin.EXTRA_SUBMIT_BUTTON_ENABLED"

    iget-object v1, p0, Lcom/braintreepayments/api/dropin/a;->f:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 106
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 139
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/a;->h:Landroid/widget/ScrollView;

    new-instance v1, Lcom/braintreepayments/api/dropin/a$1;

    invoke-direct {v1, p0, p1}, Lcom/braintreepayments/api/dropin/a$1;-><init>(Lcom/braintreepayments/api/dropin/a;Landroid/view/View;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 144
    return-void
.end method

.method public a(Lcom/braintreepayments/api/exceptions/ErrorWithResponse;)V
    .locals 3

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/a;->c()V

    .line 171
    const-string v0, "creditCard"

    invoke-virtual {p1, v0}, Lcom/braintreepayments/api/exceptions/ErrorWithResponse;->a(Ljava/lang/String;)Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_5

    .line 173
    iget-object v1, p0, Lcom/braintreepayments/api/dropin/a;->b:Lcom/braintreepayments/api/c;

    const-string v2, "add-card.failed"

    invoke-virtual {v1, v2}, Lcom/braintreepayments/api/c;->a(Ljava/lang/String;)V

    .line 175
    const-string v1, "number"

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;->a(Ljava/lang/String;)Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/braintreepayments/api/dropin/a;->d:Lcom/braintreepayments/cardform/view/CardForm;

    invoke-virtual {v1}, Lcom/braintreepayments/cardform/view/CardForm;->c()V

    .line 179
    :cond_0
    const-string v1, "expirationYear"

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;->a(Ljava/lang/String;)Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "expirationMonth"

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;->a(Ljava/lang/String;)Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "expirationDate"

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;->a(Ljava/lang/String;)Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/braintreepayments/api/dropin/a;->d:Lcom/braintreepayments/cardform/view/CardForm;

    invoke-virtual {v1}, Lcom/braintreepayments/cardform/view/CardForm;->d()V

    .line 185
    :cond_2
    const-string v1, "cvv"

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;->a(Ljava/lang/String;)Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 186
    iget-object v1, p0, Lcom/braintreepayments/api/dropin/a;->d:Lcom/braintreepayments/cardform/view/CardForm;

    invoke-virtual {v1}, Lcom/braintreepayments/cardform/view/CardForm;->e()V

    .line 189
    :cond_3
    const-string v1, "billingAddress"

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;->a(Ljava/lang/String;)Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeError;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 190
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/a;->d:Lcom/braintreepayments/cardform/view/CardForm;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/CardForm;->f()V

    .line 193
    :cond_4
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/a;->i()V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_5
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/a;->a:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

    new-instance v1, Lcom/braintreepayments/api/exceptions/j;

    invoke-virtual {p1}, Lcom/braintreepayments/api/exceptions/ErrorWithResponse;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/braintreepayments/api/exceptions/j;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 125
    if-eqz p1, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/a;->l()V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/a;->m()V

    goto :goto_0
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/braintreepayments/api/dropin/a;->i:Z

    return v0
.end method

.method protected c()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 208
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/a;->m()V

    .line 209
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/a;->d:Lcom/braintreepayments/cardform/view/CardForm;

    invoke-virtual {v0, v1}, Lcom/braintreepayments/cardform/view/CardForm;->setEnabled(Z)V

    .line 210
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/a;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/braintreepayments/api/dropin/a;->i:Z

    .line 212
    return-void
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/a;->g:Lcom/braintreepayments/api/dropin/view/LoadingHeader;

    invoke-virtual {v0}, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->b()V

    .line 230
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/a;->c:Lcom/braintreepayments/api/dropin/view/PaymentButton;

    if-ne p1, v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/a;->a:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

    invoke-virtual {v0}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->b()V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/a;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/a;->d:Lcom/braintreepayments/cardform/view/CardForm;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/CardForm;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/a;->j()V

    .line 115
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/a;->b:Lcom/braintreepayments/api/c;

    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/a;->h()Lcom/braintreepayments/api/models/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/c;->a(Lcom/braintreepayments/api/models/l;)V

    goto :goto_0

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/a;->d:Lcom/braintreepayments/cardform/view/CardForm;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/CardForm;->b()V

    .line 118
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/a;->m()V

    goto :goto_0
.end method
