.class Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->h(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
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

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
    .locals 0

    .prologue
    .line 824
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$16;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$16;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 5
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
    const/4 v4, 0x1

    .line 828
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    .line 829
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->z()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v1

    .line 830
    if-eqz v1, :cond_0

    .line 831
    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->getSavedAddressId()Ljava/lang/String;

    move-result-object v2

    .line 832
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$16;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->s(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 833
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$16;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$16;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/order/a;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setAddress(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Ljava/lang/String;)V

    .line 834
    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$16;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    .line 839
    if-eqz v1, :cond_3

    .line 840
    if-eqz p1, :cond_5

    .line 841
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$16;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->m(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V

    .line 843
    const/4 v0, 0x0

    .line 844
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 845
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    .line 848
    :cond_1
    if-eqz v0, :cond_4

    .line 850
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$16;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->o(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 851
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    .line 854
    :cond_2
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$16;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    const-string v2, "successful"

    invoke-static {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;Ljava/lang/String;)V

    .line 856
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$16;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->p(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Lcom/grubhub/AppBaseLibrary/android/account/b;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 857
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$16;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->p(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Lcom/grubhub/AppBaseLibrary/android/account/b;

    move-result-object v1

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/account/b;->d(Ljava/lang/String;)V

    .line 868
    :cond_3
    :goto_0
    return-void

    .line 860
    :cond_4
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$16;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    const v2, 0x7f080368

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Ljava/lang/String;Z)V

    .line 861
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$16;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    const-string v1, "error"

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 864
    :cond_5
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$16;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    const v2, 0x7f080301

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Ljava/lang/String;Z)V

    .line 865
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$16;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    const-string v1, "error"

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 824
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$16;->a(Ljava/util/ArrayList;)V

    return-void
.end method
