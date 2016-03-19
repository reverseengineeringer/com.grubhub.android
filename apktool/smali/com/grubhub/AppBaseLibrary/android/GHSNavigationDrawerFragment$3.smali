.class Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->b()V

    .line 164
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->a(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->a(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;)Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/login/a;->CREATE_ACCOUNT:Lcom/grubhub/AppBaseLibrary/android/login/a;

    invoke-static {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginActivity;->a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/login/a;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 165
    return-void
.end method
