.class Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)V
    .locals 0

    .prologue
    .line 811
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$4;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 814
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$4;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    instance-of v0, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$4;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Z)V

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$4;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->f(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Z)V

    .line 819
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$4;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Z)Z

    .line 820
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$4;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/o;

    .line 821
    return-void
.end method
