.class public Lcom/braintreepayments/api/dropin/view/PaymentButton;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:I

.field private c:Lcom/braintreepayments/api/c;

.field private d:Lcom/google/android/gms/wallet/Cart;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 5

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 205
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    const/high16 v3, 0x40400000    # 3.0f

    int-to-float v4, p2

    div-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 209
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/braintreepayments/api/c;)V
    .locals 1

    .prologue
    .line 79
    const/16 v0, 0x2e64

    invoke-virtual {p0, p1, p2, v0}, Lcom/braintreepayments/api/dropin/view/PaymentButton;->a(Landroid/app/Activity;Lcom/braintreepayments/api/c;I)V

    .line 80
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/braintreepayments/api/c;I)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 91
    iput-object p1, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->a:Landroid/app/Activity;

    .line 92
    iput-object p2, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->c:Lcom/braintreepayments/api/c;

    .line 93
    iput p3, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->b:I

    .line 95
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/view/PaymentButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/braintreepayments/api/dropin/k;->bt_payment_button:I

    invoke-static {v0, v3, p0}, Lcom/braintreepayments/api/dropin/view/PaymentButton;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->c:Lcom/braintreepayments/api/c;

    invoke-virtual {v0}, Lcom/braintreepayments/api/c;->d()Z

    move-result v4

    .line 98
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->c:Lcom/braintreepayments/api/c;

    invoke-virtual {v0}, Lcom/braintreepayments/api/c;->e()Z

    move-result v5

    .line 99
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->c:Lcom/braintreepayments/api/c;

    invoke-virtual {v0}, Lcom/braintreepayments/api/c;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->d:Lcom/google/android/gms/wallet/Cart;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->e:Z

    if-eqz v0, :cond_2

    :cond_0
    move v3, v1

    .line 101
    :goto_0
    if-nez v4, :cond_3

    if-nez v5, :cond_3

    if-nez v3, :cond_3

    .line 102
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/dropin/view/PaymentButton;->setVisibility(I)V

    .line 133
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v3, v2

    .line 99
    goto :goto_0

    .line 104
    :cond_3
    if-eqz v4, :cond_b

    move v0, v1

    .line 107
    :goto_2
    if-eqz v5, :cond_4

    .line 108
    add-int/lit8 v0, v0, 0x1

    .line 110
    :cond_4
    if-eqz v3, :cond_5

    .line 111
    add-int/lit8 v0, v0, 0x1

    .line 114
    :cond_5
    if-eqz v4, :cond_6

    .line 115
    sget v6, Lcom/braintreepayments/api/dropin/j;->bt_paypal_button:I

    invoke-virtual {p0, v6}, Lcom/braintreepayments/api/dropin/view/PaymentButton;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6, v0}, Lcom/braintreepayments/api/dropin/view/PaymentButton;->a(Landroid/view/View;I)V

    .line 117
    :cond_6
    if-eqz v5, :cond_7

    .line 118
    sget v6, Lcom/braintreepayments/api/dropin/j;->bt_venmo_button:I

    invoke-virtual {p0, v6}, Lcom/braintreepayments/api/dropin/view/PaymentButton;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6, v0}, Lcom/braintreepayments/api/dropin/view/PaymentButton;->a(Landroid/view/View;I)V

    .line 120
    :cond_7
    if-eqz v3, :cond_8

    .line 121
    sget v3, Lcom/braintreepayments/api/dropin/j;->bt_android_pay_button:I

    invoke-virtual {p0, v3}, Lcom/braintreepayments/api/dropin/view/PaymentButton;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/braintreepayments/api/dropin/view/PaymentButton;->a(Landroid/view/View;I)V

    .line 124
    :cond_8
    if-eqz v4, :cond_a

    if-le v0, v1, :cond_a

    .line 125
    sget v1, Lcom/braintreepayments/api/dropin/j;->bt_payment_button_divider:I

    invoke-virtual {p0, v1}, Lcom/braintreepayments/api/dropin/view/PaymentButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 129
    :cond_9
    :goto_3
    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 130
    sget v0, Lcom/braintreepayments/api/dropin/j;->bt_payment_button_divider_2:I

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/dropin/view/PaymentButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 126
    :cond_a
    if-eqz v5, :cond_9

    if-le v0, v1, :cond_9

    .line 127
    sget v1, Lcom/braintreepayments/api/dropin/j;->bt_payment_button_divider_2:I

    invoke-virtual {p0, v1}, Lcom/braintreepayments/api/dropin/view/PaymentButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_b
    move v0, v2

    goto :goto_2
.end method

.method public a(Lcom/google/android/gms/wallet/Cart;ZZZ)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->d:Lcom/google/android/gms/wallet/Cart;

    .line 159
    iput-boolean p2, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->e:Z

    .line 160
    iput-boolean p3, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->f:Z

    .line 161
    iput-boolean p4, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->g:Z

    .line 162
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/braintreepayments/api/dropin/j;->bt_paypal_button:I

    if-ne v0, v1, :cond_1

    .line 178
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->c:Lcom/braintreepayments/api/c;

    iget-object v1, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->a:Landroid/app/Activity;

    iget v2, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->b:I

    iget-object v3, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->h:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/braintreepayments/api/c;->a(Landroid/app/Activity;ILjava/util/List;)V

    .line 186
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/view/PaymentButton;->performClick()Z

    .line 187
    return-void

    .line 179
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/braintreepayments/api/dropin/j;->bt_venmo_button:I

    if-ne v0, v1, :cond_2

    .line 180
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->c:Lcom/braintreepayments/api/c;

    iget-object v1, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->a:Landroid/app/Activity;

    iget v2, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/braintreepayments/api/c;->b(Landroid/app/Activity;I)V

    goto :goto_0

    .line 181
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/braintreepayments/api/dropin/j;->bt_android_pay_button:I

    if-ne v0, v1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->c:Lcom/braintreepayments/api/c;

    iget-object v1, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->a:Landroid/app/Activity;

    iget v2, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->b:I

    iget-object v3, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->d:Lcom/google/android/gms/wallet/Cart;

    iget-boolean v4, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->e:Z

    iget-boolean v5, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->f:Z

    iget-boolean v6, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->g:Z

    invoke-virtual/range {v0 .. v6}, Lcom/braintreepayments/api/c;->a(Landroid/app/Activity;ILcom/google/android/gms/wallet/Cart;ZZZ)V

    goto :goto_0
.end method

.method public setAdditionalPayPalScopes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    iput-object p1, p0, Lcom/braintreepayments/api/dropin/view/PaymentButton;->h:Ljava/util/List;

    .line 173
    return-void
.end method

.method public setAndroidPayOptions(Lcom/google/android/gms/wallet/Cart;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 143
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/braintreepayments/api/dropin/view/PaymentButton;->a(Lcom/google/android/gms/wallet/Cart;ZZZ)V

    .line 144
    return-void
.end method
