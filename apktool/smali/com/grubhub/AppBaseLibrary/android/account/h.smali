.class Lcom/grubhub/AppBaseLibrary/android/account/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;I)V
    .locals 0

    .prologue
    .line 670
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/h;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 671
    iput p2, p0, Lcom/grubhub/AppBaseLibrary/android/account/h;->b:I

    .line 672
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 676
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/h;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->f(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Lcom/grubhub/AppBaseLibrary/android/account/j;

    move-result-object v0

    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/h;->b:I

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/j;->a(I)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v0

    .line 677
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/h;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->e(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Lcom/grubhub/AppBaseLibrary/android/account/i;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 678
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/h;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->e(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Lcom/grubhub/AppBaseLibrary/android/account/i;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/h;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->i(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Z

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/account/h;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v4}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->j(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/account/i;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;ZZLjava/lang/String;)V

    .line 680
    :cond_0
    return-void
.end method
