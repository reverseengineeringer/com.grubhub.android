.class public Lcom/braintreepayments/cardform/view/PostalCodeEditText;
.super Lcom/braintreepayments/cardform/view/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/braintreepayments/cardform/view/c;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/PostalCodeEditText;->d()V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/braintreepayments/cardform/view/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/PostalCodeEditText;->d()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/braintreepayments/cardform/view/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/PostalCodeEditText;->d()V

    .line 26
    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    .line 29
    const/16 v0, 0x70

    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/PostalCodeEditText;->setInputType(I)V

    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    .line 31
    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/PostalCodeEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 32
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/PostalCodeEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
