.class public Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;
.super Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/login/c;


# instance fields
.field private a:Lcom/grubhub/AppBaseLibrary/android/login/b;

.field private b:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/a;

.field private c:Z

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/ToggleButton;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;-><init>()V

    .line 297
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment$4;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->l:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/a;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/a;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/a;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;Z)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 274
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 275
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->h:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 276
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->f()V

    .line 277
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 279
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method public static b()Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;-><init>()V

    .line 63
    return-object v0
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->e()V

    return-void
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;)Landroid/widget/ToggleButton;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->h:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method private e()V
    .locals 9

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->d_()V

    .line 203
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->c:Z

    if-eqz v0, :cond_2

    .line 205
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->N()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getEmail()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 208
    :goto_0
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/a;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment$11;

    invoke-direct {v6, p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment$11;-><init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;)V

    new-instance v7, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment$12;

    invoke-direct {v7, p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment$12;-><init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;)V

    invoke-direct/range {v0 .. v7}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/a;

    .line 225
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/a;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment$2;

    invoke-direct {v1, p0, v8}, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 243
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/a;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment$3;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 256
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/a;->a()V

    .line 264
    :cond_0
    :goto_1
    return-void

    .line 206
    :cond_1
    const/4 v0, 0x0

    move-object v8, v0

    goto :goto_0

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 259
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->e:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->a(Landroid/view/View;)V

    goto :goto_1

    .line 260
    :cond_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->g:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->a(Landroid/view/View;)V

    goto :goto_1
.end method

.method static synthetic f(Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;)Lcom/grubhub/AppBaseLibrary/android/login/b;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->a:Lcom/grubhub/AppBaseLibrary/android/login/b;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->i:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->c:Z

    .line 287
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->i:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->c:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 289
    :cond_0
    return-void

    .line 286
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic g(Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->f()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 319
    :cond_0
    return-void
.end method

.method protected d_()V
    .locals 2

    .prologue
    const v1, 0x7f020041

    .line 293
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 294
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 295
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onAttach(Landroid/app/Activity;)V

    .line 70
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/login/b;

    if-eqz v0, :cond_0

    .line 71
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/login/b;

    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->a:Lcom/grubhub/AppBaseLibrary/android/login/b;

    .line 73
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->setHasOptionsMenu(Z)V

    .line 87
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 91
    const v0, 0x7f03004e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 93
    const v0, 0x7f0f015e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->d:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f0f015f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->e:Landroid/widget/EditText;

    .line 95
    const v0, 0x7f0f0160

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->f:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f0f0161

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->g:Landroid/widget/EditText;

    .line 97
    const v0, 0x7f0f0162

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->h:Landroid/widget/ToggleButton;

    .line 98
    const v0, 0x7f0f0163

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->i:Landroid/widget/Button;

    .line 99
    const v0, 0x7f0f0165

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->j:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f0f0166

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->k:Landroid/widget/TextView;

    .line 102
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->e:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->l:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 103
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->e:Landroid/widget/EditText;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment$1;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 110
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->g:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->l:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 111
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->g:Landroid/widget/EditText;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment$5;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 118
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->g:Landroid/widget/EditText;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment$6;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment$6;-><init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 130
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->h:Landroid/widget/ToggleButton;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment$7;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment$7;-><init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 154
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->i:Landroid/widget/Button;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment$8;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment$8;-><init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->j:Landroid/widget/TextView;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment$9;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment$9;-><init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->k:Landroid/widget/TextView;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment$10;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment$10;-><init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->f()V

    .line 185
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->h:Landroid/widget/ToggleButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 186
    return-object v1
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onDetach()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->a:Lcom/grubhub/AppBaseLibrary/android/login/b;

    .line 80
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 191
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onStop()V

    .line 193
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/a;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/a;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/a;->g()V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/a;

    .line 196
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->a(Z)V

    .line 198
    :cond_0
    return-void
.end method
