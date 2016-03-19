.class public Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesActivity;
.super Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/order/favorites/b;
.implements Lcom/grubhub/AppBaseLibrary/android/order/search/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v1

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v3, "favorites"

    const-string v4, "view restaurant menu_cta"

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 79
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->z()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v1

    .line 80
    if-eqz v1, :cond_2

    .line 81
    if-nez p2, :cond_0

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getAddress()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v0

    :cond_0
    move-object v1, v0

    .line 85
    :goto_0
    if-eqz p2, :cond_1

    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/g;->PICKUP:Lcom/grubhub/AppBaseLibrary/android/order/g;

    :goto_1
    invoke-static {p0, p1, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->a(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/order/g;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesActivity;->startActivity(Landroid/content/Intent;)V

    .line 88
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesActivity;->finish()V

    .line 89
    return-void

    .line 85
    :cond_1
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/g;->DELIVERY:Lcom/grubhub/AppBaseLibrary/android/order/g;

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public h()V
    .locals 0

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesActivity;->finish()V

    .line 70
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 59
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const v3, 0x7f0f0082

    .line 37
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesActivity;->setContentView(I)V

    .line 41
    const v0, 0x7f0f030d

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesActivity;->c:Landroid/view/View;

    .line 44
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    .line 45
    invoke-virtual {v0, v3}, Landroid/support/v4/app/w;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 47
    if-nez v1, :cond_0

    .line 48
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->a()Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;

    move-result-object v1

    .line 50
    invoke-virtual {v0}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    const-class v2, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;

    .line 51
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v4/app/ag;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()I

    .line 54
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->onResume()V

    .line 64
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesActivity;->invalidateOptionsMenu()V

    .line 65
    return-void
.end method

.method public y()V
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesActivity;->getSupportFragmentManager()Landroid/support/v4/app/w;

    move-result-object v0

    .line 95
    const-class v1, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;

    if-eqz v1, :cond_0

    .line 98
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->a(Z)V

    .line 100
    :cond_0
    return-void
.end method
