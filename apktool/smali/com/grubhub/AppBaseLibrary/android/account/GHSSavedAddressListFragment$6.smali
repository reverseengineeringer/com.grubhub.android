.class Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
    .locals 0

    .prologue
    .line 839
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$6;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 842
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->U()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v2

    .line 843
    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->c()Lcom/grubhub/AppBaseLibrary/android/b/a;

    move-result-object v0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_ADDRESS_OUT_OF_DELIVERY_AREA:Lcom/grubhub/AppBaseLibrary/android/b/a;

    if-ne v0, v1, :cond_0

    .line 845
    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v0

    .line 846
    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantName()Ljava/lang/String;

    move-result-object v1

    .line 847
    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->offersPickup()Z

    move-result v2

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$6;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    sget-object v4, Lcom/grubhub/AppBaseLibrary/android/order/i;->ORDER:Lcom/grubhub/AppBaseLibrary/android/order/i;

    const-string v5, "saved addresses"

    .line 844
    invoke-static/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/order/i;Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;

    move-result-object v0

    .line 851
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getChildFragmentManager()Landroid/support/v4/app/w;

    move-result-object v1

    const-class v2, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/w;Ljava/lang/String;)V

    .line 858
    :goto_0
    return-void

    .line 852
    :cond_0
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->c()Lcom/grubhub/AppBaseLibrary/android/b/a;

    move-result-object v0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_ADDRESS_INVALID_PHONE:Lcom/grubhub/AppBaseLibrary/android/b/a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->e(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Lcom/grubhub/AppBaseLibrary/android/account/i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 853
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->e(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Lcom/grubhub/AppBaseLibrary/android/account/i;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$6;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->i(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Z

    move-result v2

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->j(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v7, v3}, Lcom/grubhub/AppBaseLibrary/android/account/i;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;ZZLjava/lang/String;)V

    goto :goto_0

    .line 855
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    const v5, 0x7f0803e5

    invoke-virtual {v4, v5}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    move-object v4, v3

    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/d;)V

    .line 856
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v0, v7}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->g(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Z)Z

    goto :goto_0
.end method
