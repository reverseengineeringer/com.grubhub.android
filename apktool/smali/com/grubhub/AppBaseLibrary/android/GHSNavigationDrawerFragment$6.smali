.class Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$6;
.super Landroid/support/v7/app/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->a(ILandroid/support/v4/widget/DrawerLayout;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$6;->a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/support/v7/app/n;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 371
    invoke-super {p0, p1}, Landroid/support/v7/app/n;->onDrawerClosed(Landroid/view/View;)V

    .line 372
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$6;->a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$6;->a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->a(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 377
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$6;->a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->d(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;)Landroid/support/v4/widget/p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$6;->a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->d(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;)Landroid/support/v4/widget/p;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/widget/p;->onDrawerClosed(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 350
    invoke-super {p0, p1}, Landroid/support/v7/app/n;->onDrawerOpened(Landroid/view/View;)V

    .line 351
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$6;->a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$6;->a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->c(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 358
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$6;->a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-static {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->a(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;Z)Z

    .line 359
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$6;->a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->a(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 360
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "navigation_drawer_learned"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 362
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$6;->a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->a(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 364
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$6;->a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->d(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;)Landroid/support/v4/widget/p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$6;->a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->d(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;)Landroid/support/v4/widget/p;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/widget/p;->onDrawerOpened(Landroid/view/View;)V

    goto :goto_0
.end method
