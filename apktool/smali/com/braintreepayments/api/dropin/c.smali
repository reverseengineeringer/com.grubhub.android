.class public abstract Lcom/braintreepayments/api/dropin/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

.field protected final b:Lcom/braintreepayments/api/c;

.field private c:Landroid/view/View;

.field private final d:Lcom/braintreepayments/api/dropin/d;


# direct methods
.method public constructor <init>(Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;Landroid/view/View;Lcom/braintreepayments/api/c;Lcom/braintreepayments/api/dropin/d;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/braintreepayments/api/dropin/c;->a:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

    .line 22
    iput-object p2, p0, Lcom/braintreepayments/api/dropin/c;->c:Landroid/view/View;

    .line 23
    iput-object p3, p0, Lcom/braintreepayments/api/dropin/c;->b:Lcom/braintreepayments/api/c;

    .line 24
    iput-object p4, p0, Lcom/braintreepayments/api/dropin/c;->d:Lcom/braintreepayments/api/dropin/d;

    .line 25
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/c;->a()V

    .line 26
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/c;->d:Lcom/braintreepayments/api/dropin/d;

    invoke-virtual {v0}, Lcom/braintreepayments/api/dropin/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    sget v0, Lcom/braintreepayments/api/dropin/j;->bt_primary_description:I

    iget-object v1, p0, Lcom/braintreepayments/api/dropin/c;->d:Lcom/braintreepayments/api/dropin/d;

    invoke-virtual {v1}, Lcom/braintreepayments/api/dropin/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/braintreepayments/api/dropin/c;->a(ILjava/lang/String;)V

    .line 56
    sget v0, Lcom/braintreepayments/api/dropin/j;->bt_secondary_description:I

    iget-object v1, p0, Lcom/braintreepayments/api/dropin/c;->d:Lcom/braintreepayments/api/dropin/d;

    invoke-virtual {v1}, Lcom/braintreepayments/api/dropin/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/braintreepayments/api/dropin/c;->a(ILjava/lang/String;)V

    .line 57
    sget v0, Lcom/braintreepayments/api/dropin/j;->bt_description_amount:I

    iget-object v1, p0, Lcom/braintreepayments/api/dropin/c;->d:Lcom/braintreepayments/api/dropin/d;

    invoke-virtual {v1}, Lcom/braintreepayments/api/dropin/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/braintreepayments/api/dropin/c;->a(ILjava/lang/String;)V

    .line 59
    sget v0, Lcom/braintreepayments/api/dropin/j;->bt_description_container:I

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/dropin/c;->a(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    :cond_0
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 64
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0, p1}, Lcom/braintreepayments/api/dropin/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 66
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/c;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Landroid/os/Bundle;)V
.end method

.method protected e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/c;->f()Ljava/lang/String;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/braintreepayments/api/dropin/c;->d:Lcom/braintreepayments/api/dropin/d;

    invoke-virtual {v1}, Lcom/braintreepayments/api/dropin/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/braintreepayments/api/dropin/c;->d:Lcom/braintreepayments/api/dropin/d;

    invoke-virtual {v2}, Lcom/braintreepayments/api/dropin/d;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/c;->d:Lcom/braintreepayments/api/dropin/d;

    invoke-virtual {v0}, Lcom/braintreepayments/api/dropin/d;->e()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/c;->a:Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;

    sget v1, Lcom/braintreepayments/api/dropin/l;->bt_default_submit_button_text:I

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/dropin/BraintreePaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    :cond_0
    return-object v0
.end method
