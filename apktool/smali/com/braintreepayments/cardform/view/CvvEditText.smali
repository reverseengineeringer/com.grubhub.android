.class public Lcom/braintreepayments/cardform/view/CvvEditText;
.super Lcom/braintreepayments/cardform/view/c;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private b:Lcom/braintreepayments/cardform/a/a;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/braintreepayments/cardform/view/c;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/braintreepayments/cardform/view/CvvEditText;->c:Z

    .line 27
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/CvvEditText;->d()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/braintreepayments/cardform/view/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/braintreepayments/cardform/view/CvvEditText;->c:Z

    .line 32
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/CvvEditText;->d()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/braintreepayments/cardform/view/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/braintreepayments/cardform/view/CvvEditText;->c:Z

    .line 37
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/CvvEditText;->d()V

    .line 38
    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    .line 41
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/CvvEditText;->setInputType(I)V

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/CvvEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 43
    invoke-virtual {p0, p0}, Lcom/braintreepayments/cardform/view/CvvEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 44
    return-void
.end method

.method private getSecurityCodeLength()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CvvEditText;->b:Lcom/braintreepayments/cardform/a/a;

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x3

    .line 116
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CvvEditText;->b:Lcom/braintreepayments/cardform/a/a;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/a/a;->getSecurityCodeLength()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/CvvEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/CvvEditText;->getSecurityCodeLength()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CvvEditText;->b:Lcom/braintreepayments/cardform/a/a;

    if-nez v0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CvvEditText;->b:Lcom/braintreepayments/cardform/a/a;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/a/a;->getSecurityCodeLength()I

    move-result v0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/CvvEditText;->getSelectionStart()I

    move-result v0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/CvvEditText;->c()V

    .line 81
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/CvvEditText;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/CvvEditText;->b()V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-super {p0, p1, p2, p3}, Lcom/braintreepayments/cardform/view/c;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 92
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/braintreepayments/cardform/view/CvvEditText;->c:Z

    if-eqz v0, :cond_3

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CvvEditText;->b:Lcom/braintreepayments/cardform/a/a;

    if-nez v0, :cond_1

    .line 94
    sget v0, Lcom/braintreepayments/cardform/f;->bt_cvv_highlighted:I

    .line 100
    :goto_0
    iget-boolean v2, p0, Lcom/braintreepayments/cardform/view/CvvEditText;->a:Z

    if-eqz v2, :cond_2

    .line 101
    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/braintreepayments/cardform/view/CvvEditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 105
    :goto_1
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CvvEditText;->b:Lcom/braintreepayments/cardform/a/a;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/a/a;->getSecurityCodeResource()I

    move-result v0

    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {p0, v1, v1, v0, v1}, Lcom/braintreepayments/cardform/view/CvvEditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public setAlwaysDisplayHint(Z)V
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/braintreepayments/cardform/view/CvvEditText;->c:Z

    .line 70
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/CvvEditText;->invalidate()V

    .line 71
    return-void
.end method

.method public setCardType(Lcom/braintreepayments/cardform/a/a;)V
    .locals 4

    .prologue
    .line 54
    iput-object p1, p0, Lcom/braintreepayments/cardform/view/CvvEditText;->b:Lcom/braintreepayments/cardform/a/a;

    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {p1}, Lcom/braintreepayments/cardform/a/a;->getSecurityCodeLength()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    .line 56
    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/CvvEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 57
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/CvvEditText;->invalidate()V

    .line 58
    return-void
.end method
