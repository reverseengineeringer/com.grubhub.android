.class Lcom/grubhub/AppBaseLibrary/android/account/g$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/account/g$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/account/g$3;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/g$3;)V
    .locals 0

    .prologue
    .line 579
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/g$3$1;->a:Lcom/grubhub/AppBaseLibrary/android/account/g$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/g$3$1;->a:Lcom/grubhub/AppBaseLibrary/android/account/g$3;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/g$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/g;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/g;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    instance-of v0, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/g$3$1;->a:Lcom/grubhub/AppBaseLibrary/android/account/g$3;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/g$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/g;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/g;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Z)V

    .line 585
    :cond_0
    return-void
.end method
