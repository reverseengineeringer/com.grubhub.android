.class Lcom/grubhub/AppBaseLibrary/android/account/g$3$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;


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
    .line 624
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/g$3$4;->a:Lcom/grubhub/AppBaseLibrary/android/account/g$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 627
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/g$3$4;->a:Lcom/grubhub/AppBaseLibrary/android/account/g$3;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/g$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/g;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/g;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/g$3$4;->a:Lcom/grubhub/AppBaseLibrary/android/account/g$3;

    iget-object v3, v3, Lcom/grubhub/AppBaseLibrary/android/account/g$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/g;

    iget-object v3, v3, Lcom/grubhub/AppBaseLibrary/android/account/g;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    const v5, 0x7f0803e5

    invoke-virtual {v3, v5}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/d;)V

    .line 628
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/g$3$4;->a:Lcom/grubhub/AppBaseLibrary/android/account/g$3;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/g$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/g;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/g;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    const-string v1, "error"

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Ljava/lang/String;)V

    .line 629
    return-void
.end method
