.class public Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewActivity;
.super Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    const-string v1, "web_view_title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 31
    const-string v1, "web_view_url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    const-string v1, "web_view_title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const-string v1, "web_view_url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewActivity;->setContentView(I)V

    .line 59
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 60
    if-eqz v1, :cond_0

    const-string v0, "web_view_title"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "web_view_url"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewActivity;->finish()V

    .line 81
    :goto_0
    return-void

    .line 66
    :cond_1
    const-string v0, "web_view_title"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 67
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 68
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewActivity;->a(Ljava/lang/String;)V

    .line 74
    :goto_1
    const-string v0, "web_view_url"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;->a(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;

    move-result-object v0

    .line 77
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    const v2, 0x7f0f0096

    const-class v3, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewFragment;

    .line 79
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    goto :goto_0

    .line 70
    :cond_2
    const-string v0, "web_view_title"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewActivity;->b(I)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 91
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 93
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewActivity;->onBackPressed()V

    .line 95
    const/4 v0, 0x1

    .line 97
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 86
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
