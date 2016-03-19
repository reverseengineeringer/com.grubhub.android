.class public Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;
.super Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/grubhub/AppBaseLibrary/android/account/f;

.field private c:Lcom/grubhub/AppBaseLibrary/android/account/e;

.field private d:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Landroid/widget/ScrollView;

.field private j:Landroid/widget/EditText;

.field private k:Landroid/widget/Spinner;

.field private l:Landroid/widget/Spinner;

.field private m:Landroid/widget/EditText;

.field private n:Landroid/widget/EditText;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/CheckBox;

.field private q:Landroid/widget/Button;

.field private r:[Ljava/lang/String;

.field private s:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;-><init>()V

    .line 94
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment$1;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->s:Landroid/text/TextWatcher;

    .line 653
    return-void
.end method

.method public static a(Lcom/grubhub/AppBaseLibrary/android/account/e;Z)Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;
    .locals 4

    .prologue
    .line 119
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;-><init>()V

    .line 121
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 122
    const-string v2, "PAYMENT_INFO_TYPE"

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/e;->getValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    const-string v2, "SHOW_SAVE_CHECKBOX"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 124
    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 126
    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->h()V

    return-void
.end method

.method private a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V
    .locals 2

    .prologue
    .line 613
    if-eqz p1, :cond_0

    .line 614
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment$8;->a:[I

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 616
    :pswitch_0
    const-string v0, "successful_creditcard"

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 619
    :pswitch_1
    const-string v0, "successful_cash"

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 622
    :pswitch_2
    const-string v0, "successful_paypal"

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 625
    :pswitch_3
    const-string v0, "successful_androidpay"

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 614
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 359
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    invoke-direct {v1, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 361
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 319
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "user account settings"

    const-string v3, "payment_save"

    invoke-direct {v1, v2, v3, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 323
    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->j:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 509
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->k:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 510
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->l:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 511
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->m:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 512
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 514
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->q:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 515
    return-void
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->j:Landroid/widget/EditText;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .locals 8

    .prologue
    const v7, 0x7f0f00bd

    const v6, 0x7f0300c7

    const v5, 0x7f03002d

    const/4 v1, 0x0

    .line 176
    const v0, 0x7f0f01f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->k:Landroid/widget/Spinner;

    .line 177
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v2

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v5, v7, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 178
    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 179
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->k:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 181
    const v0, 0x7f0f01f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->l:Landroid/widget/Spinner;

    .line 182
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->r:[Ljava/lang/String;

    .line 183
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    rem-int/lit16 v0, v0, 0x3e8

    move v2, v0

    move v0, v1

    .line 185
    :goto_0
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->r:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 186
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->r:[Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 187
    add-int/lit8 v2, v2, 0x1

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v2

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->r:[Ljava/lang/String;

    invoke-direct {v0, v2, v5, v7, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 191
    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 192
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->l:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 194
    const v0, 0x7f0f01ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->j:Landroid/widget/EditText;

    .line 195
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->j:Landroid/widget/EditText;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment$2;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 215
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->j:Landroid/widget/EditText;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment$3;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 227
    const v0, 0x7f0f01f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->m:Landroid/widget/EditText;

    .line 228
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->m:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->s:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 230
    const v0, 0x7f0f01f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->n:Landroid/widget/EditText;

    .line 231
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->n:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->s:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 233
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->n:Landroid/widget/EditText;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment$4;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 244
    const v0, 0x7f0f01f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->o:Landroid/view/View;

    .line 246
    const v0, 0x7f0f01f8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->q:Landroid/widget/Button;

    .line 247
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->q:Landroid/widget/Button;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment$5;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    const v0, 0x7f0f01ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 255
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment$6;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment$6;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    const v0, 0x7f0f01f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->p:Landroid/widget/CheckBox;

    .line 265
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->p:Landroid/widget/CheckBox;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment$7;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment$7;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 275
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->p:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->f:Z

    if-eqz v2, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 276
    return-void

    .line 275
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->f()V

    return-void
.end method

.method private f()V
    .locals 9

    .prologue
    const v5, 0x7f0f00bd

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 279
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->d_()V

    .line 280
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->p:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->p:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v6, v8

    .line 282
    :goto_0
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->e:Z

    if-eqz v0, :cond_3

    .line 283
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->d()V

    .line 285
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->b()V

    .line 286
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->d:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->k:Landroid/widget/Spinner;

    .line 287
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "20"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->l:Landroid/widget/Spinner;

    .line 288
    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->m:Landroid/widget/EditText;

    .line 289
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->n:Landroid/widget/EditText;

    .line 290
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v6, :cond_2

    move v6, v8

    .line 286
    :goto_1
    invoke-virtual/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 311
    :goto_2
    return-void

    :cond_1
    move v6, v7

    .line 280
    goto :goto_0

    :cond_2
    move v6, v7

    .line 290
    goto :goto_1

    .line 293
    :cond_3
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f080372

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->j:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f080409

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->j:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->i:Landroid/widget/ScrollView;

    invoke-virtual {p0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->a(Landroid/view/View;Landroid/widget/ScrollView;)V

    .line 308
    :cond_4
    :goto_3
    invoke-virtual {p0, v0, v8}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->a(Ljava/lang/String;Z)V

    .line 309
    const-string v0, "incomplete fields required"

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 298
    :cond_5
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->m:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f080411

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->m:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->i:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->o:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->a(Landroid/view/View;Landroid/widget/ScrollView;I)V

    goto :goto_3

    .line 301
    :cond_6
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f080412

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->n:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->i:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->o:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->a(Landroid/view/View;Landroid/widget/ScrollView;I)V

    goto :goto_3

    .line 304
    :cond_7
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/utils/g;->g(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 305
    const v0, 0x7f080413

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 306
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->n:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->i:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->o:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->a(Landroid/view/View;Landroid/widget/ScrollView;I)V

    goto/16 :goto_3
.end method

.method static synthetic f(Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->i()V

    return-void
.end method

.method static synthetic g(Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->q:Landroid/widget/Button;

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 376
    const-string v0, ""

    move v1, v2

    move-object v3, v0

    move v0, v2

    .line 378
    :goto_0
    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->g:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 379
    const/4 v4, 0x4

    if-ne v0, v4, :cond_2

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move v3, v2

    .line 383
    :goto_1
    const/16 v4, 0xc

    if-ge v1, v4, :cond_0

    .line 384
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 388
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 378
    add-int/lit8 v1, v1, 0x1

    move v5, v3

    move-object v3, v0

    move v0, v5

    goto :goto_0

    .line 386
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->g:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 391
    :cond_1
    return-object v3

    :cond_2
    move v5, v0

    move-object v0, v3

    move v3, v5

    goto :goto_1
.end method

.method private h()V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->q:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->j:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->k:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->l:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->m:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->m:Landroid/widget/EditText;

    .line 402
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->n:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->n:Landroid/widget/EditText;

    .line 403
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/g;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->e:Z

    .line 404
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->e:Z

    if-eqz v0, :cond_2

    .line 405
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->q:Landroid/widget/Button;

    const v1, 0x7f02007b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 410
    :cond_0
    :goto_1
    return-void

    .line 403
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 407
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->q:Landroid/widget/Button;

    const v1, 0x7f02007c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method private i()V
    .locals 5

    .prologue
    const/16 v4, 0x42

    const/4 v3, 0x1

    .line 442
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    const-class v2, Lio/card/payment/CardIOActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 445
    const-string v1, "io.card.payment.requireExpiry"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 446
    const-string v1, "io.card.payment.requireCVV"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 447
    const-string v1, "io.card.payment.requirePostalCode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 450
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 451
    invoke-virtual {p0, v0, v4}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 455
    :goto_0
    return-void

    .line 453
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 521
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->a(Z)V

    .line 522
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->d:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->a()V

    .line 524
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 525
    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Z)V

    .line 528
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 7

    .prologue
    .line 584
    .line 585
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 586
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->f()Ljava/lang/String;

    move-result-object v1

    .line 587
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    .line 588
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->g()Ljava/lang/String;

    move-result-object v3

    .line 589
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->h()Ljava/lang/String;

    move-result-object v4

    .line 590
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->i()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 584
    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/d;)V

    .line 593
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->j()V

    .line 594
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->h()V

    .line 595
    const-string v0, "error"

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->a(Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/account/f;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/account/f;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/f;->d(Z)V

    .line 600
    :cond_0
    return-void
.end method

.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentResourceCreatedDataModel;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 538
    invoke-direct {p0, p2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    .line 540
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->c:Lcom/grubhub/AppBaseLibrary/android/account/e;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/account/e;->ADD:Lcom/grubhub/AppBaseLibrary/android/account/e;

    if-ne v0, v1, :cond_1

    .line 541
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->j()V

    .line 542
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/account/f;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/account/f;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentResourceCreatedDataModel;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p2, v2}, Lcom/grubhub/AppBaseLibrary/android/account/f;->a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Z)V

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    if-nez p1, :cond_3

    .line 549
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->CASH:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    if-eq p2, v0, :cond_2

    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;->ANDROID_PAY:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    if-eq p2, v0, :cond_2

    .line 552
    const-string v0, "Vaulting the payment failed."

    const-string v1, "Null response from the payments endpoint."

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/b/b;

    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_UNKNOWN:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-direct {v5, v0}, Lcom/grubhub/AppBaseLibrary/android/b/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    .line 557
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 558
    invoke-virtual {v5}, Lcom/grubhub/AppBaseLibrary/android/b/b;->f()Ljava/lang/String;

    move-result-object v1

    .line 559
    invoke-virtual {v5}, Lcom/grubhub/AppBaseLibrary/android/b/b;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 560
    invoke-virtual {v5}, Lcom/grubhub/AppBaseLibrary/android/b/b;->g()Ljava/lang/String;

    move-result-object v3

    .line 561
    invoke-virtual {v5}, Lcom/grubhub/AppBaseLibrary/android/b/b;->h()Ljava/lang/String;

    move-result-object v4

    .line 562
    invoke-virtual {v5}, Lcom/grubhub/AppBaseLibrary/android/b/b;->i()Ljava/lang/String;

    move-result-object v5

    .line 556
    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/d;)V

    .line 565
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->j()V

    goto :goto_0

    .line 567
    :cond_2
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->j()V

    .line 568
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/account/f;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/account/f;

    invoke-interface {v0, v6, p2, v2}, Lcom/grubhub/AppBaseLibrary/android/account/f;->a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Z)V

    goto :goto_0

    .line 574
    :cond_3
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->j()V

    .line 575
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/account/f;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/account/f;

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIPaymentResourceCreatedDataModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, v2}, Lcom/grubhub/AppBaseLibrary/android/account/f;->a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Z)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 532
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->a(Z)V

    .line 533
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Z)V

    .line 534
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 604
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->j()V

    .line 605
    return-void
.end method

.method protected d_()V
    .locals 2

    .prologue
    const v1, 0x7f020041

    .line 365
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->j:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 366
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->m:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 367
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 368
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    .line 459
    invoke-super {p0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 461
    sparse-switch p1, :sswitch_data_0

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 466
    :sswitch_0
    if-eqz p3, :cond_0

    const-string v0, "io.card.payment.scanResult"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    const-string v0, "io.card.payment.scanResult"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/card/payment/CreditCard;

    .line 469
    iget v1, v0, Lio/card/payment/CreditCard;->expiryMonth:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 470
    iget v2, v0, Lio/card/payment/CreditCard;->expiryMonth:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    .line 471
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 473
    :cond_1
    iget v2, v0, Lio/card/payment/CreditCard;->expiryYear:I

    rem-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 475
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 476
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 477
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->k:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 478
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->r:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 479
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->l:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 481
    iget-object v1, v0, Lio/card/payment/CreditCard;->cardNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->g:Ljava/lang/String;

    .line 482
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->j:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 483
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->j:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 488
    :goto_1
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->m:Landroid/widget/EditText;

    iget-object v2, v0, Lio/card/payment/CreditCard;->cvv:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->n:Landroid/widget/EditText;

    iget-object v0, v0, Lio/card/payment/CreditCard;->postalCode:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 485
    :cond_2
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->j:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 494
    :sswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->h:Z

    .line 497
    :sswitch_2
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->getChildFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    const v1, 0x7f0f01ea

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 461
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x83e -> :sswitch_2
        0x840 -> :sswitch_2
        0xd197 -> :sswitch_1
    .end sparse-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onAttach(Landroid/app/Activity;)V

    .line 133
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/f;

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/account/f;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/account/f;

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/account/f;

    if-eqz v0, :cond_0

    .line 136
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/account/f;

    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/account/f;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onCreate(Landroid/os/Bundle;)V

    .line 143
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PAYMENT_INFO_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/e;->getPaymentInfoEnum(I)Lcom/grubhub/AppBaseLibrary/android/account/e;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->c:Lcom/grubhub/AppBaseLibrary/android/account/e;

    .line 144
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SHOW_SAVE_CHECKBOX"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->f:Z

    .line 145
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->setHasOptionsMenu(Z)V

    .line 146
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    .line 150
    const v0, 0x7f030065

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 152
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/account/f;

    if-nez v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/account/f;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/account/f;

    .line 155
    :cond_0
    const v0, 0x7f0f01e8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->i:Landroid/widget/ScrollView;

    .line 156
    invoke-direct {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->b(Landroid/view/View;)V

    .line 157
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->h()V

    .line 160
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->c:Lcom/grubhub/AppBaseLibrary/android/account/e;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/e;)Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->d:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;

    .line 161
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->getChildFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    const v2, 0x7f0f01ea

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->d:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->d:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionInfoFragment;

    .line 163
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 166
    return-object v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 427
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 429
    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 430
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->d()V

    .line 431
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 432
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_0

    .line 433
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b(Ljava/lang/String;)V

    .line 435
    :cond_0
    const/4 v0, 0x1

    .line 437
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    .prologue
    .line 414
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 416
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 417
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 418
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 420
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_0

    .line 421
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const v1, 0x7f080088

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b(I)V

    .line 423
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 327
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onStart()V

    .line 329
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->h:Z

    if-eqz v0, :cond_0

    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->h:Z

    .line 340
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->c:Lcom/grubhub/AppBaseLibrary/android/account/e;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/account/e;->ADD:Lcom/grubhub/AppBaseLibrary/android/account/e;

    if-ne v0, v1, :cond_1

    .line 335
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CONVENIENCE_FEATURES:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->USER_ACCOUNT_INFO:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v2, "edit info_add payment details"

    invoke-direct {p0, v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :cond_1
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CORE_ORDERING_EXP:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->ORDER_PROCESSING:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v2, "enter info_payment details"

    invoke-direct {p0, v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 344
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onStop()V

    .line 346
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->a(Z)V

    .line 347
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Z)V

    .line 348
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->h()V

    .line 349
    return-void
.end method
