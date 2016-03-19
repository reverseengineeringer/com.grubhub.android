.class public Lcom/braintreepayments/cardform/view/MonthYearEditText;
.super Lcom/braintreepayments/cardform/view/c;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/braintreepayments/cardform/view/c;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->d()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/braintreepayments/cardform/view/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->d()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/braintreepayments/cardform/view/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->d()V

    .line 35
    return-void
.end method

.method private a(Landroid/text/Editable;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 105
    invoke-interface {p1, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 106
    const/4 v1, 0x1

    const-string v2, "0"

    invoke-interface {p1, v3, v1, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    .line 107
    return-void
.end method

.method private b(Landroid/text/Editable;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 110
    .line 111
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 112
    if-gt v3, v0, :cond_0

    .line 113
    new-instance v0, Lcom/braintreepayments/cardform/view/d;

    invoke-direct {v0}, Lcom/braintreepayments/cardform/view/d;-><init>()V

    const/4 v1, 0x1

    const/16 v2, 0x21

    invoke-interface {p1, v0, v1, v3, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 116
    :cond_0
    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    .line 38
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->setInputType(I)V

    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    .line 40
    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 41
    invoke-virtual {p0, p0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 42
    return-void
.end method

.method private getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->getMonth()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->getYear()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/braintreepayments/cardform/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 84
    iget-boolean v1, p0, Lcom/braintreepayments/cardform/view/MonthYearEditText;->b:Z

    if-eqz v1, :cond_0

    .line 85
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 86
    invoke-direct {p0, p1}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->a(Landroid/text/Editable;)V

    .line 90
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    const-class v2, Lcom/braintreepayments/cardform/view/d;

    invoke-interface {p1, v0, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 91
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 92
    invoke-interface {p1, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_1
    iget-boolean v0, p0, Lcom/braintreepayments/cardform/view/MonthYearEditText;->a:Z

    if-nez v0, :cond_2

    .line 96
    invoke-direct {p0, p1}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->b(Landroid/text/Editable;)V

    .line 99
    :cond_2
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->getSelectionStart()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "20"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->getSelectionStart()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 100
    :cond_4
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->b()V

    .line 102
    :cond_5
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public getMonth()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 49
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->getString()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 51
    const-string v0, ""

    .line 53
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->getString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getYear()Ljava/lang/String;
    .locals 3

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->getString()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 63
    :cond_0
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->getString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Lcom/braintreepayments/cardform/view/c;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 79
    if-le p4, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/braintreepayments/cardform/view/MonthYearEditText;->b:Z

    .line 80
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
