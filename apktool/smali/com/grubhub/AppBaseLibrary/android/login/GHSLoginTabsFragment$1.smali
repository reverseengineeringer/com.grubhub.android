.class Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment$1;
.super Landroid/support/v4/app/ac;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;Landroid/support/v4/app/w;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;

    invoke-direct {p0, p2}, Landroid/support/v4/app/ac;-><init>(Landroid/support/v4/app/w;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v4/app/Fragment;
    .locals 3

    .prologue
    .line 98
    if-nez p1, :cond_0

    .line 99
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;->b()Lcom/grubhub/AppBaseLibrary/android/login/GHSCreateAccountFragment;

    move-result-object v1

    .line 100
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;

    move-object v0, v1

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/login/c;

    invoke-static {v2, v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->a(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;Lcom/grubhub/AppBaseLibrary/android/login/c;)Lcom/grubhub/AppBaseLibrary/android/login/c;

    .line 104
    :goto_0
    return-object v1

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "prefill_login_email"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->a(Z)Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    move-result-object v1

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x2

    return v0
.end method
