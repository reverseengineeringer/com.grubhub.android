.class Lcom/grubhub/AppBaseLibrary/android/account/g$3$2;
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
    .line 587
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/g$3$2;->a:Lcom/grubhub/AppBaseLibrary/android/account/g$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/g$3$2;->a:Lcom/grubhub/AppBaseLibrary/android/account/g$3;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/g$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/g;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/g;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    instance-of v0, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/g$3$2;->a:Lcom/grubhub/AppBaseLibrary/android/account/g$3;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/g$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/g;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/g;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Z)V

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/g$3$2;->a:Lcom/grubhub/AppBaseLibrary/android/account/g$3;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/g$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/g;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/g;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/c;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/c;

    .line 595
    return-void
.end method
