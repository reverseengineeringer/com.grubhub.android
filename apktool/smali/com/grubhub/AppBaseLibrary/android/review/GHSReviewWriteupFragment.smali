.class public Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/a;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Lcom/grubhub/AppBaseLibrary/android/review/e;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 54
    return-void
.end method

.method public static a(Ljava/lang/String;I)Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;
    .locals 3

    .prologue
    .line 72
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;-><init>()V

    .line 73
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 74
    const-string v2, "current_writeup"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v2, "minimum_word_count"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->setArguments(Landroid/os/Bundle;)V

    .line 78
    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->d()V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 282
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/b;->a(Ljava/lang/String;)I

    move-result v0

    .line 284
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->e:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 285
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 286
    iget v3, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->a:I

    if-ge v0, v3, :cond_1

    .line 287
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->e:Landroid/widget/TextView;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v5, 0x7f08047e

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->c:Ljava/lang/String;

    .line 295
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->g()V

    .line 296
    return-void

    .line 289
    :cond_1
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 290
    :goto_1
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->e:Landroid/widget/TextView;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v5, 0x7f080461

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 289
    goto :goto_1
.end method

.method private d()V
    .locals 2

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 225
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_0

    .line 226
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b(Ljava/lang/String;)V

    .line 228
    :cond_0
    return-void
.end method

.method private e()V
    .locals 7

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 236
    if-eqz v0, :cond_0

    .line 237
    const v1, 0x7f080484

    const v2, 0x7f080482

    const v3, 0x7f080483

    const v4, 0x7f080481

    const/4 v5, 0x0

    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment$2;

    invoke-direct {v6, p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;)V

    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;IIIIILcom/grubhub/AppBaseLibrary/android/d;)V

    .line 248
    :cond_0
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 255
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 256
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 257
    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 258
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 260
    :cond_0
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->f:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->c:Ljava/lang/String;

    .line 268
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/b;->a(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->a:I

    if-ge v0, v1, :cond_2

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->f:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 274
    :cond_1
    :goto_0
    return-void

    .line 271
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->f:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public b()V
    .locals 0

    .prologue
    .line 318
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 323
    return-void
.end method

.method public f_()Z
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/b;->a(Ljava/lang/String;)I

    move-result v0

    .line 303
    if-lez v0, :cond_0

    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->a:I

    if-ge v0, v1, :cond_0

    .line 304
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->e()V

    .line 305
    const/4 v0, 0x1

    .line 311
    :goto_0
    return v0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->d:Lcom/grubhub/AppBaseLibrary/android/review/e;

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->d:Lcom/grubhub/AppBaseLibrary/android/review/e;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/review/e;->c(Ljava/lang/String;)V

    .line 311
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 85
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/grubhub/AppBaseLibrary/android/review/e;

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/review/e;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->d:Lcom/grubhub/AppBaseLibrary/android/review/e;

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/review/e;

    if-eqz v0, :cond_0

    .line 88
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/review/e;

    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->d:Lcom/grubhub/AppBaseLibrary/android/review/e;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    if-eqz p1, :cond_0

    .line 114
    const-string v0, "current_writeup"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->c:Ljava/lang/String;

    .line 119
    :goto_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "minimum_word_count"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->a:I

    .line 122
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->b:I

    .line 124
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->setHasOptionsMenu(Z)V

    .line 125
    return-void

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "current_writeup"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 164
    const v0, 0x7f110002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 165
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 166
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 129
    const v0, 0x7f030071

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 131
    const v0, 0x7f0f026c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->e:Landroid/widget/TextView;

    .line 132
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment$1;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;)V

    .line 150
    const v0, 0x7f0f026d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 151
    new-array v3, v7, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    iget v5, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->b:I

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v6

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 152
    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setVerticalScrollBarEnabled(Z)V

    .line 153
    new-instance v3, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v3}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 154
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 156
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->a(Ljava/lang/String;)V

    .line 159
    return-object v1
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->d:Lcom/grubhub/AppBaseLibrary/android/review/e;

    .line 96
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 184
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 185
    const v2, 0x102002c

    if-ne v1, v2, :cond_2

    .line 186
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->f()V

    .line 190
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/b;->a(Ljava/lang/String;)I

    move-result v1

    .line 191
    if-lez v1, :cond_0

    iget v2, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->a:I

    if-ge v1, v2, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->e()V

    .line 216
    :goto_0
    return v0

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->d:Lcom/grubhub/AppBaseLibrary/android/review/e;

    if-eqz v1, :cond_1

    .line 196
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->d:Lcom/grubhub/AppBaseLibrary/android/review/e;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->c:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/review/e;->c(Ljava/lang/String;)V

    .line 200
    :cond_1
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->d()V

    goto :goto_0

    .line 204
    :cond_2
    const v2, 0x7f0f036b

    if-ne v1, v2, :cond_4

    .line 205
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->f()V

    .line 208
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->d:Lcom/grubhub/AppBaseLibrary/android/review/e;

    if-eqz v1, :cond_3

    .line 209
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->d:Lcom/grubhub/AppBaseLibrary/android/review/e;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->c:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/review/e;->c(Ljava/lang/String;)V

    .line 213
    :cond_3
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->d()V

    goto :goto_0

    .line 216
    :cond_4
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 172
    const v0, 0x7f0f036b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->f:Landroid/view/MenuItem;

    .line 173
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->g()V

    .line 175
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_0

    .line 178
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 180
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 100
    if-nez p1, :cond_0

    .line 101
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 103
    :cond_0
    const-string v0, "current_writeup"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewWriteupFragment;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 106
    return-void
.end method
