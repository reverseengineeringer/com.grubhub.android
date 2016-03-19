.class public Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;
.super Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;
.source "SourceFile"


# instance fields
.field private a:Lcom/grubhub/AppBaseLibrary/android/account/d;

.field private b:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

.field private c:Z

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/ToggleButton;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;-><init>()V

    .line 62
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$1;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->i:Landroid/text/TextWatcher;

    .line 340
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

    return-object p1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->e()V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 259
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "user account settings"

    const-string v3, "password_save"

    invoke-direct {v1, v2, v3, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 262
    return-void
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method public static b()Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;-><init>()V

    .line 87
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 88
    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 90
    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 127
    const v0, 0x7f0f01d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->d:Landroid/widget/EditText;

    .line 128
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->i:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 130
    const v0, 0x7f0f01d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->e:Landroid/widget/EditText;

    .line 131
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->i:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 133
    const v0, 0x7f0f01d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->f:Landroid/widget/ToggleButton;

    .line 134
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->f:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$2;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 166
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->f:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 168
    const v0, 0x7f0f01da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->g:Landroid/widget/Button;

    .line 169
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->g:Landroid/widget/Button;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$3;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    const v0, 0x7f0f01db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->h:Landroid/widget/Button;

    .line 177
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->h:Landroid/widget/Button;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$4;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    return-void
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method private c()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 190
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->d_()V

    .line 192
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->c:Z

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->d()V

    .line 195
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$5;

    invoke-direct {v7, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;)V

    new-instance v8, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$6;

    invoke-direct {v8, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$6;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;)V

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v8}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

    .line 211
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$7;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$7;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 222
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$8;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment$8;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 236
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;->a()V

    .line 251
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 240
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

    .line 241
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/utils/g;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f0803f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->d:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->a(Landroid/view/View;)V

    .line 248
    :cond_1
    :goto_1
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->a(Ljava/lang/String;Z)V

    .line 249
    const-string v0, "incomplete fields required"

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_2
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/utils/g;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f0803fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->e:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->a(Landroid/view/View;)V

    goto :goto_1
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;)Landroid/widget/ToggleButton;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->f:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->g:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->c:Z

    .line 300
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->c:Z

    if-eqz v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->g:Landroid/widget/Button;

    const v1, 0x7f02007b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 306
    :cond_0
    :goto_1
    return-void

    .line 298
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->g:Landroid/widget/Button;

    const v1, 0x7f02007c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method static synthetic e(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->c()V

    return-void
.end method

.method static synthetic f(Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;)Lcom/grubhub/AppBaseLibrary/android/account/d;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->a:Lcom/grubhub/AppBaseLibrary/android/account/d;

    return-object v0
.end method


# virtual methods
.method protected d_()V
    .locals 2

    .prologue
    const v1, 0x7f020041

    .line 289
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 290
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 291
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onAttach(Landroid/app/Activity;)V

    .line 96
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/account/d;

    if-eqz v0, :cond_0

    .line 97
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/account/d;

    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->a:Lcom/grubhub/AppBaseLibrary/android/account/d;

    .line 99
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->setHasOptionsMenu(Z)V

    .line 105
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 109
    const v0, 0x7f030062

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 111
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->a:Lcom/grubhub/AppBaseLibrary/android/account/d;

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/account/d;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->a:Lcom/grubhub/AppBaseLibrary/android/account/d;

    .line 114
    :cond_0
    invoke-direct {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->b(Landroid/view/View;)V

    .line 115
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->e()V

    .line 117
    return-object v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 323
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 325
    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 326
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->d()V

    .line 327
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 328
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_0

    .line 329
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b(Ljava/lang/String;)V

    .line 331
    :cond_0
    const/4 v0, 0x1

    .line 333
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
    .line 310
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 312
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 314
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 316
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_0

    .line 317
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const v1, 0x7f08008a

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->b(I)V

    .line 319
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 266
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onStart()V

    .line 269
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CONVENIENCE_FEATURES:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->USER_ACCOUNT_INFO:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v4, "edit info_password"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    .line 272
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 276
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->onStop()V

    .line 278
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;->g()V

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

    .line 282
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Z)V

    .line 283
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSChangePasswordInfoFragment;->e()V

    .line 285
    :cond_0
    return-void
.end method
