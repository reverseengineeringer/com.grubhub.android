.class Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment$2;
.super Landroid/support/v4/view/dh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;

    invoke-direct {p0}, Landroid/support/v4/view/dh;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 122
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {v1}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 124
    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;

    invoke-static {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->a(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;I)V

    .line 128
    return-void
.end method
