.class Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->a(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->b(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->b(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 235
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->c(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;)Lcom/grubhub/AppBaseLibrary/android/login/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->c(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;)Lcom/grubhub/AppBaseLibrary/android/login/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/login/c;->c()V

    .line 239
    :cond_0
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0

    .prologue
    .line 244
    return-void
.end method
