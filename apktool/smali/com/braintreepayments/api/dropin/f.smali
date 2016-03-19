.class public Lcom/braintreepayments/api/dropin/f;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/braintreepayments/api/dropin/m;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/braintreepayments/api/models/PaymentMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/braintreepayments/api/dropin/m;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/braintreepayments/api/dropin/m;",
            "Ljava/util/List",
            "<",
            "Lcom/braintreepayments/api/models/PaymentMethod;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/braintreepayments/api/dropin/f;->a:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/braintreepayments/api/dropin/f;->b:Lcom/braintreepayments/api/dropin/m;

    .line 28
    iput-object p3, p0, Lcom/braintreepayments/api/dropin/f;->c:Ljava/util/List;

    .line 29
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/f;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 43
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 48
    new-instance v1, Lcom/braintreepayments/api/dropin/view/PaymentMethodView;

    iget-object v0, p0, Lcom/braintreepayments/api/dropin/f;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/braintreepayments/api/dropin/view/PaymentMethodView;-><init>(Landroid/content/Context;)V

    .line 49
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/f;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/models/PaymentMethod;

    invoke-virtual {v1, v0}, Lcom/braintreepayments/api/dropin/view/PaymentMethodView;->setPaymentMethodDetails(Lcom/braintreepayments/api/models/PaymentMethod;)V

    .line 50
    return-object v1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/f;->b:Lcom/braintreepayments/api/dropin/m;

    invoke-virtual {v0, p2}, Lcom/braintreepayments/api/dropin/m;->b(I)V

    .line 56
    return-void
.end method
