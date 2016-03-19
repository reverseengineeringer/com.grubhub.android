.class public Lcom/braintreepayments/api/dropin/view/PaymentMethodView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/braintreepayments/api/dropin/view/b;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 59
    sget-object v0, Lcom/braintreepayments/api/dropin/view/b;->UNKNOWN:Lcom/braintreepayments/api/dropin/view/b;

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/view/PaymentMethodView;->a:Lcom/braintreepayments/api/dropin/view/b;

    .line 67
    invoke-direct {p0, p1}, Lcom/braintreepayments/api/dropin/view/PaymentMethodView;->a(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    sget-object v0, Lcom/braintreepayments/api/dropin/view/b;->UNKNOWN:Lcom/braintreepayments/api/dropin/view/b;

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/view/PaymentMethodView;->a:Lcom/braintreepayments/api/dropin/view/b;

    .line 72
    invoke-direct {p0, p1}, Lcom/braintreepayments/api/dropin/view/PaymentMethodView;->a(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    sget-object v0, Lcom/braintreepayments/api/dropin/view/b;->UNKNOWN:Lcom/braintreepayments/api/dropin/view/b;

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/view/PaymentMethodView;->a:Lcom/braintreepayments/api/dropin/view/b;

    .line 77
    invoke-direct {p0, p1}, Lcom/braintreepayments/api/dropin/view/PaymentMethodView;->a(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method private a(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/braintreepayments/api/dropin/view/PaymentMethodView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/view/PaymentMethodView;->a:Lcom/braintreepayments/api/dropin/view/b;

    # getter for: Lcom/braintreepayments/api/dropin/view/b;->mPictureResId:I
    invoke-static {v0}, Lcom/braintreepayments/api/dropin/view/b;->access$000(Lcom/braintreepayments/api/dropin/view/b;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/view/PaymentMethodView;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/braintreepayments/api/dropin/view/PaymentMethodView;->a:Lcom/braintreepayments/api/dropin/view/b;

    # getter for: Lcom/braintreepayments/api/dropin/view/b;->mPictureResId:I
    invoke-static {v1}, Lcom/braintreepayments/api/dropin/view/b;->access$000(Lcom/braintreepayments/api/dropin/view/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/view/PaymentMethodView;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    :goto_0
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/view/PaymentMethodView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/view/PaymentMethodView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/braintreepayments/api/dropin/view/PaymentMethodView;->a:Lcom/braintreepayments/api/dropin/view/b;

    # getter for: Lcom/braintreepayments/api/dropin/view/b;->mDescriptorStringId:I
    invoke-static {v2}, Lcom/braintreepayments/api/dropin/view/b;->access$100(Lcom/braintreepayments/api/dropin/view/b;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/view/PaymentMethodView;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/braintreepayments/api/dropin/view/PaymentMethodView;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/view/PaymentMethodView;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 81
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/braintreepayments/api/dropin/k;->bt_payment_method:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 82
    sget v0, Lcom/braintreepayments/api/dropin/j;->bt_payment_method_icon:I

    invoke-direct {p0, v0}, Lcom/braintreepayments/api/dropin/view/PaymentMethodView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/view/PaymentMethodView;->b:Landroid/widget/ImageView;

    .line 83
    sget v0, Lcom/braintreepayments/api/dropin/j;->bt_payment_method_type:I

    invoke-direct {p0, v0}, Lcom/braintreepayments/api/dropin/view/PaymentMethodView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/view/PaymentMethodView;->c:Landroid/widget/TextView;

    .line 84
    sget v0, Lcom/braintreepayments/api/dropin/j;->bt_payment_method_description:I

    invoke-direct {p0, v0}, Lcom/braintreepayments/api/dropin/view/PaymentMethodView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/view/PaymentMethodView;->d:Landroid/widget/TextView;

    .line 85
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/view/PaymentMethodView;->a()V

    .line 86
    return-void
.end method


# virtual methods
.method public setPaymentMethodDetails(Lcom/braintreepayments/api/models/PaymentMethod;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 89
    invoke-virtual {p1}, Lcom/braintreepayments/api/models/PaymentMethod;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/braintreepayments/api/dropin/view/b;->forType(Ljava/lang/String;)Lcom/braintreepayments/api/dropin/view/b;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/view/PaymentMethodView;->a:Lcom/braintreepayments/api/dropin/view/b;

    .line 90
    instance-of v0, p1, Lcom/braintreepayments/api/models/Card;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/view/PaymentMethodView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/braintreepayments/api/dropin/l;->bt_card_descriptor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    check-cast p1, Lcom/braintreepayments/api/models/Card;

    invoke-virtual {p1}, Lcom/braintreepayments/api/models/Card;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/view/PaymentMethodView;->e:Ljava/lang/CharSequence;

    .line 99
    :goto_0
    invoke-direct {p0}, Lcom/braintreepayments/api/dropin/view/PaymentMethodView;->a()V

    .line 100
    return-void

    .line 93
    :cond_0
    instance-of v0, p1, Lcom/braintreepayments/api/models/AndroidPayCard;

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/view/PaymentMethodView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/braintreepayments/api/dropin/l;->bt_card_descriptor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    check-cast p1, Lcom/braintreepayments/api/models/AndroidPayCard;

    invoke-virtual {p1}, Lcom/braintreepayments/api/models/AndroidPayCard;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/view/PaymentMethodView;->e:Ljava/lang/CharSequence;

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {p1}, Lcom/braintreepayments/api/models/PaymentMethod;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/view/PaymentMethodView;->e:Ljava/lang/CharSequence;

    goto :goto_0
.end method
