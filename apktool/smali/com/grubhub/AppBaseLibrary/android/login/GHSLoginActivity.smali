.class public Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginActivity;
.super Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/login/b;


# instance fields
.field private d:Lcom/grubhub/AppBaseLibrary/android/login/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;-><init>()V

    .line 34
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/login/a;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 50
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginActivity;->a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/login/a;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/login/a;Z)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginActivity;->a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/login/a;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/login/a;ZLjava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    if-eqz p1, :cond_0

    .line 77
    const-string v1, "login_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 79
    :cond_0
    const-string v1, "prefill_email"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    if-eqz p3, :cond_1

    .line 81
    const-string v1, "explanation_message"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    :cond_1
    return-object v0
.end method

.method private a(I)V
    .locals 4

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "prefill_email"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->a(IZ)Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;

    move-result-object v0

    .line 153
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 154
    const/high16 v2, 0x10a0000

    const v3, 0x10a0001

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/ag;->a(II)Landroid/support/v4/app/ag;

    .line 155
    const v2, 0x7f0f008d

    const-class v3, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 157
    return-void
.end method


# virtual methods
.method public d(Z)V
    .locals 3

    .prologue
    .line 135
    if-eqz p1, :cond_0

    .line 137
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 138
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginActivity;->finish()V

    .line 145
    :goto_0
    return-void

    .line 140
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 141
    const-string v1, "login_type"

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginActivity;->d:Lcom/grubhub/AppBaseLibrary/android/login/a;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 142
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 143
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginActivity;->finish()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 176
    invoke-super {p0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 179
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    const v1, 0x7f0f008d

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 180
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 161
    const/4 v1, 0x0

    .line 162
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    .line 163
    const v2, 0x7f0f008d

    invoke-virtual {v0, v2}, Landroid/support/v4/app/w;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/grubhub/AppBaseLibrary/android/a;

    if-eqz v2, :cond_1

    .line 166
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/a;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/a;->f_()Z

    move-result v0

    .line 169
    :goto_0
    if-nez v0, :cond_0

    .line 170
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onBackPressed()V

    .line 172
    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 89
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 92
    const-string v0, "login_type"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/login/a;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginActivity;->d:Lcom/grubhub/AppBaseLibrary/android/login/a;

    .line 93
    const-string v0, "explanation_message"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    if-eqz v2, :cond_0

    .line 95
    const v0, 0x7f0803e5

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/d;)V

    .line 98
    :cond_0
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginActivity;->setContentView(I)V

    .line 99
    const v0, 0x7f0f030d

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginActivity;->c:Landroid/view/View;

    .line 101
    if-nez p1, :cond_1

    .line 102
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginActivity;->d:Lcom/grubhub/AppBaseLibrary/android/login/a;

    if-eqz v0, :cond_2

    .line 103
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginActivity$1;->a:[I

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginActivity;->d:Lcom/grubhub/AppBaseLibrary/android/login/a;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/login/a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 110
    invoke-direct {p0, v7}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginActivity;->a(I)V

    .line 118
    :cond_1
    :goto_0
    return-void

    .line 105
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginActivity;->a(I)V

    goto :goto_0

    .line 115
    :cond_2
    invoke-direct {p0, v7}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginActivity;->a(I)V

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onStart()V

    .line 126
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginActivity;->d:Lcom/grubhub/AppBaseLibrary/android/login/a;

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/login/a;->ONBOARDING:Lcom/grubhub/AppBaseLibrary/android/login/a;

    if-ne v0, v1, :cond_0

    .line 127
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginActivity;->finish()V

    .line 131
    :cond_0
    return-void
.end method
