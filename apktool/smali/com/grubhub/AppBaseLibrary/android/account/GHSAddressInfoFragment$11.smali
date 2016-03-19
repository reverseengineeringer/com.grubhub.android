.class Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->g(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
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
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V
    .locals 0

    .prologue
    .line 750
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$11;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

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
    const/4 v3, 0x1

    .line 753
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$11;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    .line 754
    if-eqz v1, :cond_4

    .line 755
    if-eqz p1, :cond_7

    .line 756
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$11;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->m(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V

    .line 758
    const/4 v0, 0x0

    .line 759
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 760
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    .line 763
    :cond_0
    if-eqz v0, :cond_6

    .line 765
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$11;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->o(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$11;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->l(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Lcom/grubhub/AppBaseLibrary/android/account/a;

    move-result-object v1

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/account/a;->ENTER:Lcom/grubhub/AppBaseLibrary/android/account/a;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$11;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->l(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Lcom/grubhub/AppBaseLibrary/android/account/a;

    move-result-object v1

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/account/a;->VERIFY:Lcom/grubhub/AppBaseLibrary/android/account/a;

    if-ne v1, v2, :cond_2

    .line 766
    :cond_1
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    .line 770
    :cond_2
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$11;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->l(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Lcom/grubhub/AppBaseLibrary/android/account/a;

    move-result-object v1

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/account/a;->VERIFY:Lcom/grubhub/AppBaseLibrary/android/account/a;

    if-eq v1, v2, :cond_3

    .line 771
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$11;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    const-string v2, "successful"

    invoke-static {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;Ljava/lang/String;)V

    .line 774
    :cond_3
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$11;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->p(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Lcom/grubhub/AppBaseLibrary/android/account/b;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 775
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$11;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->l(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Lcom/grubhub/AppBaseLibrary/android/account/a;

    move-result-object v1

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/account/a;->VERIFY:Lcom/grubhub/AppBaseLibrary/android/account/a;

    if-ne v1, v2, :cond_5

    .line 776
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$11;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->p(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Lcom/grubhub/AppBaseLibrary/android/account/b;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$11;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->q(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$11;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->r(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/grubhub/AppBaseLibrary/android/account/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    .line 790
    :cond_4
    :goto_0
    return-void

    .line 778
    :cond_5
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$11;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->p(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Lcom/grubhub/AppBaseLibrary/android/account/b;

    move-result-object v1

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/account/b;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 782
    :cond_6
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$11;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    const v2, 0x7f080368

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Ljava/lang/String;Z)V

    .line 783
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$11;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    const-string v1, "error"

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 786
    :cond_7
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$11;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    const v2, 0x7f080301

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Ljava/lang/String;Z)V

    .line 787
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$11;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    const-string v1, "error"

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 750
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$11;->a(Ljava/util/ArrayList;)V

    return-void
.end method
