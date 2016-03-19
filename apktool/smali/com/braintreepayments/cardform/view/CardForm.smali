.class public Lcom/braintreepayments/cardform/view/CardForm;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/braintreepayments/cardform/view/a;


# instance fields
.field private a:Lcom/braintreepayments/cardform/view/CardEditText;

.field private b:Lcom/braintreepayments/cardform/view/MonthYearEditText;

.field private c:Lcom/braintreepayments/cardform/view/CvvEditText;

.field private d:Lcom/braintreepayments/cardform/view/PostalCodeEditText;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lcom/braintreepayments/cardform/c;

.field private k:Lcom/braintreepayments/cardform/b;

.field private l:Lcom/braintreepayments/cardform/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->i:Z

    .line 54
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/CardForm;->h()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->i:Z

    .line 59
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/CardForm;->h()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->i:Z

    .line 65
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/CardForm;->h()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->i:Z

    .line 71
    invoke-direct {p0}, Lcom/braintreepayments/cardform/view/CardForm;->h()V

    .line 72
    return-void
.end method

.method private a(Landroid/widget/EditText;)V
    .locals 2

    .prologue
    .line 294
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 295
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/CardForm;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 297
    return-void
.end method

.method private a(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 165
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 166
    invoke-virtual {p1, p2, v0}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 167
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 168
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/CardForm;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/braintreepayments/cardform/h;->bt_card_form_fields:I

    invoke-static {v0, v1, p0}, Lcom/braintreepayments/cardform/view/CardForm;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 77
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/CardForm;->setVisibility(I)V

    .line 79
    sget v0, Lcom/braintreepayments/cardform/g;->bt_card_form_card_number:I

    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/CardForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/cardform/view/CardEditText;

    iput-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->a:Lcom/braintreepayments/cardform/view/CardEditText;

    .line 80
    sget v0, Lcom/braintreepayments/cardform/g;->bt_card_form_expiration:I

    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/CardForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/cardform/view/MonthYearEditText;

    iput-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->b:Lcom/braintreepayments/cardform/view/MonthYearEditText;

    .line 81
    sget v0, Lcom/braintreepayments/cardform/g;->bt_card_form_cvv:I

    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/CardForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/cardform/view/CvvEditText;

    iput-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->c:Lcom/braintreepayments/cardform/view/CvvEditText;

    .line 82
    sget v0, Lcom/braintreepayments/cardform/g;->bt_card_form_postal_code:I

    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/CardForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/cardform/view/PostalCodeEditText;

    iput-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->d:Lcom/braintreepayments/cardform/view/PostalCodeEditText;

    .line 84
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->a:Lcom/braintreepayments/cardform/view/CardEditText;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/cardform/view/CardEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 85
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->b:Lcom/braintreepayments/cardform/view/MonthYearEditText;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 86
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->c:Lcom/braintreepayments/cardform/view/CvvEditText;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/cardform/view/CvvEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 87
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->d:Lcom/braintreepayments/cardform/view/PostalCodeEditText;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/cardform/view/PostalCodeEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 89
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->a:Lcom/braintreepayments/cardform/view/CardEditText;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/cardform/view/CardEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->b:Lcom/braintreepayments/cardform/view/MonthYearEditText;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->c:Lcom/braintreepayments/cardform/view/CvvEditText;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/cardform/view/CvvEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->d:Lcom/braintreepayments/cardform/view/PostalCodeEditText;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/cardform/view/PostalCodeEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->a:Lcom/braintreepayments/cardform/view/CardEditText;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/cardform/view/CardEditText;->setOnCardTypeChangedListener(Lcom/braintreepayments/cardform/view/a;)V

    .line 95
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;ZZZZLjava/lang/String;)V
    .locals 5

    .prologue
    const/16 v4, 0x2000

    const/4 v3, 0x5

    const/16 v2, 0x8

    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 114
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 118
    :cond_0
    iput-boolean p2, p0, Lcom/braintreepayments/cardform/view/CardForm;->e:Z

    .line 119
    iput-boolean p3, p0, Lcom/braintreepayments/cardform/view/CardForm;->f:Z

    .line 120
    iput-boolean p4, p0, Lcom/braintreepayments/cardform/view/CardForm;->g:Z

    .line 121
    iput-boolean p5, p0, Lcom/braintreepayments/cardform/view/CardForm;->h:Z

    .line 123
    if-eqz p2, :cond_2

    .line 124
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->a:Lcom/braintreepayments/cardform/view/CardEditText;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/cardform/view/CardEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 129
    :goto_0
    if-eqz p3, :cond_3

    .line 130
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->b:Lcom/braintreepayments/cardform/view/MonthYearEditText;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 135
    :goto_1
    if-nez p4, :cond_1

    if-eqz p5, :cond_4

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->b:Lcom/braintreepayments/cardform/view/MonthYearEditText;

    invoke-virtual {v0, v3}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->setImeOptions(I)V

    .line 141
    :goto_2
    if-eqz p4, :cond_6

    .line 142
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->c:Lcom/braintreepayments/cardform/view/CvvEditText;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/cardform/view/CvvEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 143
    if-eqz p5, :cond_5

    .line 144
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->c:Lcom/braintreepayments/cardform/view/CvvEditText;

    invoke-virtual {v0, v3}, Lcom/braintreepayments/cardform/view/CvvEditText;->setImeOptions(I)V

    .line 152
    :goto_3
    if-eqz p5, :cond_7

    .line 153
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->d:Lcom/braintreepayments/cardform/view/PostalCodeEditText;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/cardform/view/PostalCodeEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 154
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->d:Lcom/braintreepayments/cardform/view/PostalCodeEditText;

    invoke-direct {p0, v0, p6}, Lcom/braintreepayments/cardform/view/CardForm;->a(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 159
    :goto_4
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->a:Lcom/braintreepayments/cardform/view/CardEditText;

    invoke-virtual {v0, p0}, Lcom/braintreepayments/cardform/view/CardEditText;->setOnCardTypeChangedListener(Lcom/braintreepayments/cardform/view/a;)V

    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/braintreepayments/cardform/view/CardForm;->setVisibility(I)V

    .line 162
    return-void

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->a:Lcom/braintreepayments/cardform/view/CardEditText;

    invoke-virtual {v0, v2}, Lcom/braintreepayments/cardform/view/CardEditText;->setVisibility(I)V

    goto :goto_0

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->b:Lcom/braintreepayments/cardform/view/MonthYearEditText;

    invoke-virtual {v0, v2}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->setVisibility(I)V

    goto :goto_1

    .line 138
    :cond_4
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->b:Lcom/braintreepayments/cardform/view/MonthYearEditText;

    invoke-direct {p0, v0, p6}, Lcom/braintreepayments/cardform/view/CardForm;->a(Landroid/widget/EditText;Ljava/lang/String;)V

    goto :goto_2

    .line 146
    :cond_5
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->c:Lcom/braintreepayments/cardform/view/CvvEditText;

    invoke-direct {p0, v0, p6}, Lcom/braintreepayments/cardform/view/CardForm;->a(Landroid/widget/EditText;Ljava/lang/String;)V

    goto :goto_3

    .line 149
    :cond_6
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->c:Lcom/braintreepayments/cardform/view/CvvEditText;

    invoke-virtual {v0, v2}, Lcom/braintreepayments/cardform/view/CvvEditText;->setVisibility(I)V

    goto :goto_3

    .line 156
    :cond_7
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->d:Lcom/braintreepayments/cardform/view/PostalCodeEditText;

    invoke-virtual {v0, v2}, Lcom/braintreepayments/cardform/view/PostalCodeEditText;->setVisibility(I)V

    goto :goto_4
.end method

.method public a(Lcom/braintreepayments/cardform/a/a;)V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->c:Lcom/braintreepayments/cardform/view/CvvEditText;

    invoke-virtual {v0, p1}, Lcom/braintreepayments/cardform/view/CvvEditText;->setCardType(Lcom/braintreepayments/cardform/a/a;)V

    .line 347
    return-void
.end method

.method public a()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 211
    .line 212
    iget-boolean v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->e:Z

    if-eqz v0, :cond_7

    .line 213
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->a:Lcom/braintreepayments/cardform/view/CardEditText;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/CardEditText;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 215
    :goto_0
    iget-boolean v3, p0, Lcom/braintreepayments/cardform/view/CardForm;->f:Z

    if-eqz v3, :cond_0

    .line 216
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->b:Lcom/braintreepayments/cardform/view/MonthYearEditText;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 218
    :cond_0
    :goto_1
    iget-boolean v3, p0, Lcom/braintreepayments/cardform/view/CardForm;->g:Z

    if-eqz v3, :cond_1

    .line 219
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->c:Lcom/braintreepayments/cardform/view/CvvEditText;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/CvvEditText;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 221
    :cond_1
    :goto_2
    iget-boolean v3, p0, Lcom/braintreepayments/cardform/view/CardForm;->h:Z

    if-eqz v3, :cond_6

    .line 222
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->d:Lcom/braintreepayments/cardform/view/PostalCodeEditText;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/PostalCodeEditText;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 224
    :goto_3
    return v1

    :cond_2
    move v0, v2

    .line 213
    goto :goto_0

    :cond_3
    move v0, v2

    .line 216
    goto :goto_1

    :cond_4
    move v0, v2

    .line 219
    goto :goto_2

    :cond_5
    move v1, v2

    .line 222
    goto :goto_3

    :cond_6
    move v1, v0

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/CardForm;->a()Z

    move-result v0

    .line 366
    iget-boolean v1, p0, Lcom/braintreepayments/cardform/view/CardForm;->i:Z

    if-eq v1, v0, :cond_0

    .line 367
    iput-boolean v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->i:Z

    .line 368
    iget-object v1, p0, Lcom/braintreepayments/cardform/view/CardForm;->j:Lcom/braintreepayments/cardform/c;

    if-eqz v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/braintreepayments/cardform/view/CardForm;->j:Lcom/braintreepayments/cardform/c;

    invoke-interface {v1, v0}, Lcom/braintreepayments/cardform/c;->a(Z)V

    .line 372
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->e:Z

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->a:Lcom/braintreepayments/cardform/view/CardEditText;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/CardEditText;->c()V

    .line 234
    :cond_0
    iget-boolean v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->f:Z

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->b:Lcom/braintreepayments/cardform/view/MonthYearEditText;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->c()V

    .line 237
    :cond_1
    iget-boolean v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->g:Z

    if-eqz v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->c:Lcom/braintreepayments/cardform/view/CvvEditText;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/CvvEditText;->c()V

    .line 240
    :cond_2
    iget-boolean v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->h:Z

    if-eqz v0, :cond_3

    .line 241
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->d:Lcom/braintreepayments/cardform/view/PostalCodeEditText;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/PostalCodeEditText;->c()V

    .line 243
    :cond_3
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 384
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->e:Z

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->a:Lcom/braintreepayments/cardform/view/CardEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/braintreepayments/cardform/view/CardEditText;->setError(Z)V

    .line 251
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->a:Lcom/braintreepayments/cardform/view/CardEditText;

    invoke-direct {p0, v0}, Lcom/braintreepayments/cardform/view/CardForm;->a(Landroid/widget/EditText;)V

    .line 253
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->f:Z

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->b:Lcom/braintreepayments/cardform/view/MonthYearEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->setError(Z)V

    .line 261
    iget-boolean v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->a:Lcom/braintreepayments/cardform/view/CardEditText;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/CardEditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->b:Lcom/braintreepayments/cardform/view/MonthYearEditText;

    invoke-direct {p0, v0}, Lcom/braintreepayments/cardform/view/CardForm;->a(Landroid/widget/EditText;)V

    .line 265
    :cond_1
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->g:Z

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->c:Lcom/braintreepayments/cardform/view/CvvEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/braintreepayments/cardform/view/CvvEditText;->setError(Z)V

    .line 273
    iget-boolean v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->f:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->a:Lcom/braintreepayments/cardform/view/CardEditText;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/CardEditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->b:Lcom/braintreepayments/cardform/view/MonthYearEditText;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_2

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->c:Lcom/braintreepayments/cardform/view/CvvEditText;

    invoke-direct {p0, v0}, Lcom/braintreepayments/cardform/view/CardForm;->a(Landroid/widget/EditText;)V

    .line 278
    :cond_2
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->h:Z

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->d:Lcom/braintreepayments/cardform/view/PostalCodeEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/braintreepayments/cardform/view/PostalCodeEditText;->setError(Z)V

    .line 286
    iget-boolean v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->g:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->a:Lcom/braintreepayments/cardform/view/CardEditText;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/CardEditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->b:Lcom/braintreepayments/cardform/view/MonthYearEditText;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->c:Lcom/braintreepayments/cardform/view/CvvEditText;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/CvvEditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_2

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->d:Lcom/braintreepayments/cardform/view/PostalCodeEditText;

    invoke-direct {p0, v0}, Lcom/braintreepayments/cardform/view/CardForm;->a(Landroid/widget/EditText;)V

    .line 291
    :cond_2
    return-void
.end method

.method public g()V
    .locals 3

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/CardForm;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/braintreepayments/cardform/view/CardForm;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 305
    return-void
.end method

.method public getCardNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->a:Lcom/braintreepayments/cardform/view/CardEditText;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/CardEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCvv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->c:Lcom/braintreepayments/cardform/view/CvvEditText;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/CvvEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpirationMonth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->b:Lcom/braintreepayments/cardform/view/MonthYearEditText;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->getMonth()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpirationYear()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->b:Lcom/braintreepayments/cardform/view/MonthYearEditText;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->getYear()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->d:Lcom/braintreepayments/cardform/view/PostalCodeEditText;

    invoke-virtual {v0}, Lcom/braintreepayments/cardform/view/PostalCodeEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->l:Lcom/braintreepayments/cardform/a;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->l:Lcom/braintreepayments/cardform/a;

    invoke-interface {v0, p1}, Lcom/braintreepayments/cardform/a;->a(Landroid/view/View;)V

    .line 361
    :cond_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->k:Lcom/braintreepayments/cardform/b;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->k:Lcom/braintreepayments/cardform/b;

    invoke-interface {v0}, Lcom/braintreepayments/cardform/b;->a()V

    .line 378
    const/4 v0, 0x1

    .line 380
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 351
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->l:Lcom/braintreepayments/cardform/a;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->l:Lcom/braintreepayments/cardform/a;

    invoke-interface {v0, p1}, Lcom/braintreepayments/cardform/a;->a(Landroid/view/View;)V

    .line 354
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 387
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->a:Lcom/braintreepayments/cardform/view/CardEditText;

    invoke-virtual {v0, p1}, Lcom/braintreepayments/cardform/view/CardEditText;->setEnabled(Z)V

    .line 202
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->b:Lcom/braintreepayments/cardform/view/MonthYearEditText;

    invoke-virtual {v0, p1}, Lcom/braintreepayments/cardform/view/MonthYearEditText;->setEnabled(Z)V

    .line 203
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->c:Lcom/braintreepayments/cardform/view/CvvEditText;

    invoke-virtual {v0, p1}, Lcom/braintreepayments/cardform/view/CvvEditText;->setEnabled(Z)V

    .line 204
    iget-object v0, p0, Lcom/braintreepayments/cardform/view/CardForm;->d:Lcom/braintreepayments/cardform/view/PostalCodeEditText;

    invoke-virtual {v0, p1}, Lcom/braintreepayments/cardform/view/PostalCodeEditText;->setEnabled(Z)V

    .line 205
    return-void
.end method

.method public setOnCardFormSubmitListener(Lcom/braintreepayments/cardform/b;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/braintreepayments/cardform/view/CardForm;->k:Lcom/braintreepayments/cardform/b;

    .line 185
    return-void
.end method

.method public setOnCardFormValidListener(Lcom/braintreepayments/cardform/c;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/braintreepayments/cardform/view/CardForm;->j:Lcom/braintreepayments/cardform/c;

    .line 176
    return-void
.end method

.method public setOnFormFieldFocusedListener(Lcom/braintreepayments/cardform/a;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/braintreepayments/cardform/view/CardForm;->l:Lcom/braintreepayments/cardform/a;

    .line 193
    return-void
.end method
