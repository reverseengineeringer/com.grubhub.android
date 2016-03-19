.class public Lcom/braintreepayments/cardform/view/CardEditText;
.super Lcom/braintreepayments/cardform/view/c;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private b:Lcom/braintreepayments/cardform/a/a;

.field private c:Lcom/braintreepayments/cardform/view/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/braintreepayments/cardform/view/c;-><init>(Landroid/content/Context;)V

    .line 24
    sget-object v0, Lcom/braintreepayments/cardform/a/a;->UNKNOWN:Lcom/braintreepayments/cardform/a/a;

    iput-object v0, p0, Lcom/braintreepayments/cardform/view/CardEditText;->b:Lcom/braintreepayments/cardform/a/a;

    .line 29
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/CardEditText;->d()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/braintreepayments/cardform/view/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    sget-object v0, Lcom/braintreepayments/cardform/a/a;->UNKNOWN:Lcom/braintreepayments/cardform/a/a;

    iput-object v0, p0, Lcom/braintreepayments/cardform/view/CardEditText;->b:Lcom/braintreepayments/cardform/a/a;

    .line 34
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/CardEditText;->d()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/braintreepayments/cardform/view/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    sget-object v0, Lcom/braintreepayments/cardform/a/a;->UNKNOWN:Lcom/braintreepayments/cardform/a/a;

    iput-object v0, p0, Lcom/braintreepayments/cardform/view/CardEditText;->b:Lcom/braintreepayments/cardform/a/a;

    .line 39
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/CardEditText;->d()V

    .line 40
    return-void
.end method

.method private a(Landroid/text/Editable;[I)V
    .locals 7

    .prologue
    .line 109
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    .line 110
    array-length v2, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, p2, v0

    .line 111
    if-gt v3, v1, :cond_0

    .line 112
    new-instance v4, Lcom/braintreepayments/cardform/view/e;

    invoke-direct {v4}, Lcom/braintreepayments/cardform/view/e;-><init>()V

    add-int/lit8 v5, v3, -0x1

    const/16 v6, 0x21

    invoke-interface {p1, v4, v5, v3, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 110
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_1
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/CardEditText;->setInputType(I)V

    .line 44
    sget v0, Lcom/braintreepayments/cardform/f;->bt_card_highlighted:I

    invoke-direct {p0, v0}, Lcom/braintreepayments/cardform/view/CardEditText;->setCardIcon(I)V

    .line 45
    invoke-virtual {p0, p0}, Lcom/braintreepayments/cardform/view/CardEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 46
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/CardEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/braintreepayments/cardform/a/a;->forCardNumber(Ljava/lang/String;)Lcom/braintreepayments/cardform/a/a;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/braintreepayments/cardform/view/CardEditText;->b:Lcom/braintreepayments/cardform/a/a;

    if-eq v1, v0, :cond_0

    .line 96
    iput-object v0, p0, Lcom/braintreepayments/cardform/view/CardEditText;->b:Lcom/braintreepayments/cardform/a/a;

    .line 98
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget-object v3, p0, Lcom/braintreepayments/cardform/view/CardEditText;->b:Lcom/braintreepayments/cardform/a/a;

    invoke-virtual {v3}, Lcom/braintreepayments/cardform/a/a;->getMaxCardLength()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    .line 99
    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/CardEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 100
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/CardEditText;->invalidate()V

    .line 102
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardEditText;->c:Lcom/braintreepayments/cardform/view/a;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardEditText;->c:Lcom/braintreepayments/cardform/view/a;

    iget-object v1, p0, Lcom/braintreepayments/cardform/view/CardEditText;->b:Lcom/braintreepayments/cardform/a/a;

    invoke-interface {v0, v1}, Lcom/braintreepayments/cardform/view/a;->a(Lcom/braintreepayments/cardform/a/a;)V

    .line 106
    :cond_0
    return-void
.end method

.method private setCardIcon(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 119
    iget-boolean v0, p0, Lcom/braintreepayments/cardform/view/CardEditText;->a:Z

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0, p1, v1, v1, v1}, Lcom/braintreepayments/cardform/view/CardEditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-virtual {p0, v1, v1, p1, v1}, Lcom/braintreepayments/cardform/view/CardEditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardEditText;->b:Lcom/braintreepayments/cardform/a/a;

    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/CardEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/braintreepayments/cardform/a/a;->validate(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    const-class v2, Lcom/braintreepayments/cardform/view/e;

    invoke-interface {p1, v0, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 68
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 69
    invoke-interface {p1, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/CardEditText;->e()V

    .line 73
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardEditText;->b:Lcom/braintreepayments/cardform/a/a;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/a/a;->getFrontResource()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/braintreepayments/cardform/view/CardEditText;->setCardIcon(I)V

    .line 75
    iget-boolean v0, p0, Lcom/braintreepayments/cardform/view/CardEditText;->a:Z

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardEditText;->b:Lcom/braintreepayments/cardform/a/a;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/a/a;->getSpaceIndices()[I

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/braintreepayments/cardform/view/CardEditText;->a(Landroid/text/Editable;[I)V

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardEditText;->b:Lcom/braintreepayments/cardform/a/a;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/a/a;->getMaxCardLength()I

    move-result v0

    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/CardEditText;->getSelectionStart()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 80
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/CardEditText;->c()V

    .line 82
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/CardEditText;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/CardEditText;->b()V

    .line 86
    :cond_2
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public getCardType()Lcom/braintreepayments/cardform/a/a;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardEditText;->b:Lcom/braintreepayments/cardform/a/a;

    return-object v0
.end method

.method public setOnCardTypeChangedListener(Lcom/braintreepayments/cardform/view/a;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/braintreepayments/cardform/view/CardEditText;->c:Lcom/braintreepayments/cardform/view/a;

    .line 63
    return-void
.end method
