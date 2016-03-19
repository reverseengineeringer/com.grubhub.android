.class Lcom/grubhub/AppBaseLibrary/android/account/g$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/account/g;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/account/g;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/g;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/g$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .prologue
    .line 576
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/g$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/g;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/g;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->f(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Lcom/grubhub/AppBaseLibrary/android/account/j;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/g$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/g;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/account/g;->a(Lcom/grubhub/AppBaseLibrary/android/account/g;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/j;->a(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v0

    .line 578
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/g$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/g;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/account/g;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/c;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/g$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/g;

    iget-object v3, v3, Lcom/grubhub/AppBaseLibrary/android/account/g;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-virtual {v3}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v3

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/grubhub/AppBaseLibrary/android/account/g$3$1;

    invoke-direct {v5, p0}, Lcom/grubhub/AppBaseLibrary/android/account/g$3$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/g$3;)V

    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/account/g$3$2;

    invoke-direct {v6, p0}, Lcom/grubhub/AppBaseLibrary/android/account/g$3$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/g$3;)V

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    invoke-static {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/c;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/c;

    .line 598
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/g$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/g;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/account/g;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->h(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/c;

    move-result-object v1

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/account/g$3$3;

    invoke-direct {v2, p0, v0}, Lcom/grubhub/AppBaseLibrary/android/account/g$3$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/g$3;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 624
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/g$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/g;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/g;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->h(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/c;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/g$3$4;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/g$3$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/g$3;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 631
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/g$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/g;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/g;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->h(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i/c;->a()V

    .line 632
    return-void
.end method
