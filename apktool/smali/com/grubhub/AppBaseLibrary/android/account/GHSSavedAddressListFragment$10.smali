.class Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$10;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 392
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$10;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v1, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 393
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$10;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->f(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Lcom/grubhub/AppBaseLibrary/android/account/j;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/grubhub/AppBaseLibrary/android/account/j;->a(Ljava/util/ArrayList;)V

    .line 394
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$10;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$10;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->f(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Lcom/grubhub/AppBaseLibrary/android/account/j;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->a(Landroid/widget/ListAdapter;)V

    .line 395
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$10;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->f(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Lcom/grubhub/AppBaseLibrary/android/account/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/account/j;->notifyDataSetChanged()V

    .line 396
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$10;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->d(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Z)Z

    .line 397
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$10;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$10;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->f(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Lcom/grubhub/AppBaseLibrary/android/account/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/account/j;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    invoke-static {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->e(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Z)V

    .line 398
    return-void

    .line 397
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 389
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$10;->a(Ljava/util/ArrayList;)V

    return-void
.end method
