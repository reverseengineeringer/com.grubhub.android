.class public Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;
.super Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;
.source "SourceFile"


# instance fields
.field private a:Lcom/grubhub/AppBaseLibrary/android/account/c;

.field private b:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

.field private c:Z

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/Button;

.field private f:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;-><init>()V

    .line 56
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment$1;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->f:Landroid/text/TextWatcher;

    .line 290
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->e()V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 210
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "user account settings"

    const-string v3, "email_save"

    invoke-direct {v1, v2, v3, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 213
    return-void
.end method

.method public static b()Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;-><init>()V

    .line 81
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 82
    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 84
    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 131
    const v0, 0x7f0f0175

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->d:Landroid/widget/EditText;

    .line 132
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->f:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 134
    const v0, 0x7f0f0176

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->e:Landroid/widget/Button;

    .line 135
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->e:Landroid/widget/Button;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment$2;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    return-void
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->c()V

    return-void
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;)Lcom/grubhub/AppBaseLibrary/android/account/c;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->a:Lcom/grubhub/AppBaseLibrary/android/account/c;

    return-object v0
.end method

.method private c()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->d_()V

    .line 146
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->c:Z

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->d()V

    .line 149
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment$3;

    invoke-direct {v7, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;)V

    new-instance v8, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment$4;

    invoke-direct {v8, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;)V

    move-object v3, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v8}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

    .line 165
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment$5;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 177
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment$6;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment$6;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 186
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;->a()V

    .line 202
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 190
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

    .line 192
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/utils/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 193
    const v0, 0x7f080252

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->d:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->a(Landroid/view/View;)V

    .line 199
    :cond_1
    :goto_1
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->a(Ljava/lang/String;Z)V

    .line 200
    const-string v0, "incomplete fields required"

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_2
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f080251

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->d:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->a(Landroid/view/View;)V

    goto :goto_1
.end method

.method private e()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->e:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/g;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->c:Z

    .line 250
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->c:Z

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->e:Landroid/widget/Button;

    const v1, 0x7f02007b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->e:Landroid/widget/Button;

    const v1, 0x7f02007c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected d_()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->d:Landroid/widget/EditText;

    const v1, 0x7f020041

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 241
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onAttach(Landroid/app/Activity;)V

    .line 90
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/account/c;

    if-eqz v0, :cond_0

    .line 91
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/account/c;

    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->a:Lcom/grubhub/AppBaseLibrary/android/account/c;

    .line 93
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->setHasOptionsMenu(Z)V

    .line 99
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 103
    const v0, 0x7f030052

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 105
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->a:Lcom/grubhub/AppBaseLibrary/android/account/c;

    if-nez v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/account/c;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->a:Lcom/grubhub/AppBaseLibrary/android/account/c;

    .line 109
    :cond_0
    invoke-direct {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->b(Landroid/view/View;)V

    .line 111
    if-nez p3, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->d(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_1

    .line 115
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->d:Landroid/widget/EditText;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :cond_1
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->e()V

    .line 121
    return-object v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 273
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 275
    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 276
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->d()V

    .line 277
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 278
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_0

    .line 279
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b(Ljava/lang/String;)V

    .line 281
    :cond_0
    const/4 v0, 0x1

    .line 283
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
    .line 260
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 262
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 264
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 266
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_0

    .line 267
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const v1, 0x7f08007c

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b(I)V

    .line 269
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 217
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onStart()V

    .line 220
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CONVENIENCE_FEATURES:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->USER_ACCOUNT_INFO:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v4, "edit info_email"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 223
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 227
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onStop()V

    .line 229
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;->g()V

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

    .line 233
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Z)V

    .line 234
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangeEmailInfoFragment;->e()V

    .line 236
    :cond_0
    return-void
.end method
