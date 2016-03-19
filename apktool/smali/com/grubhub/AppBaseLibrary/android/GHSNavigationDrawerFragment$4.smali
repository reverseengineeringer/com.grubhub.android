.class Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$4;
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
    .line 171
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$4;->a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$4;->a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment$4;->a:Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->a(Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSNavigationDrawerFragment;->startActivity(Landroid/content/Intent;)V

    .line 175
    return-void
.end method
