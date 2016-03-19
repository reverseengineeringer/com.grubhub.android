.class Lcom/grubhub/AppBaseLibrary/android/account/g$3$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/account/g$3;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/account/g$3;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/g$3;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
    .locals 0

    .prologue
    .line 598
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/g$3$3;->b:Lcom/grubhub/AppBaseLibrary/android/account/g$3;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/account/g$3$3;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 4
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
    const/4 v1, 0x0

    .line 601
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/g$3$3;->b:Lcom/grubhub/AppBaseLibrary/android/account/g$3;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/g$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/g;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/g;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->f(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Lcom/grubhub/AppBaseLibrary/android/account/j;

    move-result-object v0

    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->R()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/account/j;->a(Ljava/util/ArrayList;)V

    .line 602
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/g$3$3;->b:Lcom/grubhub/AppBaseLibrary/android/account/g$3;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/g$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/g;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/g;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    const-string v2, "successful"

    invoke-static {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/g$3$3;->b:Lcom/grubhub/AppBaseLibrary/android/account/g$3;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/g$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/g;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/g;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/g$3$3;->b:Lcom/grubhub/AppBaseLibrary/android/account/g$3;

    iget-object v2, v2, Lcom/grubhub/AppBaseLibrary/android/account/g$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/g;

    iget-object v2, v2, Lcom/grubhub/AppBaseLibrary/android/account/g;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    const v3, 0x7f08013c

    invoke-virtual {v2, v3}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 605
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/g$3$3;->b:Lcom/grubhub/AppBaseLibrary/android/account/g$3;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/g$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/g;

    iget-object v2, v0, Lcom/grubhub/AppBaseLibrary/android/account/g;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/g$3$3;->b:Lcom/grubhub/AppBaseLibrary/android/account/g$3;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/g$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/g;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/g;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->f(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Lcom/grubhub/AppBaseLibrary/android/account/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/account/j;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->e(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Z)V

    .line 608
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->t()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v0

    .line 609
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/g$3$3;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/g$3$3;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 610
    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->setIsSavedAddress(Z)V

    .line 611
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    .line 615
    :cond_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    .line 616
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->z()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v1

    .line 617
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getSavedAddressId()Ljava/lang/String;

    move-result-object v2

    .line 618
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/g$3$3;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 619
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setAddressToNotSaved()V

    .line 620
    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V

    .line 622
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 605
    goto :goto_0
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 598
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/g$3$3;->a(Ljava/util/ArrayList;)V

    return-void
.end method
