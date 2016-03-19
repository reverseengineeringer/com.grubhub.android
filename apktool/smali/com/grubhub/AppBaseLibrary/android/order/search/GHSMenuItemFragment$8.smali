.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Z)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

.field final synthetic e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Ljava/lang/String;ZLandroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
    .locals 0

    .prologue
    .line 889
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$8;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$8;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$8;->b:Z

    iput-object p4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$8;->c:Landroid/content/Context;

    iput-object p5, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$8;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel;)V
    .locals 7

    .prologue
    const v5, 0x7f0803e5

    const/4 v3, 0x0

    .line 892
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$8;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel;->getSummary(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel$GHSIRestaurantAvailabilitySummary;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 893
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$8;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel;->getSummary(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel$GHSIRestaurantAvailabilitySummary;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel$GHSIRestaurantAvailabilitySummary;->offersDeliveryToDinerLocation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 894
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$8;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$8;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->m(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    move-result-object v0

    if-nez v0, :cond_1

    .line 895
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$8;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$8;->c:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$8;->b:Z

    invoke-static {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Landroid/content/Context;Z)V

    .line 921
    :goto_0
    return-void

    .line 897
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$8;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$8;->c:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$8;->b:Z

    invoke-static {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->c(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;Landroid/content/Context;Z)V

    goto :goto_0

    .line 900
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$8;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->k(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 901
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$8;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    .line 902
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->k(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$8;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    .line 903
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->k(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$8;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    .line 904
    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->k(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->offersPickup()Z

    move-result v2

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$8;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    sget-object v4, Lcom/grubhub/AppBaseLibrary/android/order/i;->ADD_ITEM:Lcom/grubhub/AppBaseLibrary/android/order/i;

    const-string v5, "restaurant menu item"

    .line 901
    invoke-static/range {v0 .. v5}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Lcom/grubhub/AppBaseLibrary/android/order/i;Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;

    move-result-object v0

    .line 908
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$8;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getChildFragmentManager()Landroid/support/v4/app/w;

    move-result-object v1

    const-class v2, Lcom/grubhub/AppBaseLibrary/android/order/GHSOutOfRangeDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/w;Ljava/lang/String;)V

    .line 914
    :goto_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$8;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->u(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V

    goto :goto_0

    .line 910
    :cond_3
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/b/b;

    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_ADDRESS_OUT_OF_DELIVERY_AREA:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-direct {v2, v0}, Lcom/grubhub/AppBaseLibrary/android/b/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    .line 911
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$8;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/b/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/b/b;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$8;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    invoke-virtual {v4, v5}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v4, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/d;)V

    goto :goto_1

    .line 917
    :cond_4
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/b/b;

    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_UNKNOWN:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-direct {v2, v0}, Lcom/grubhub/AppBaseLibrary/android/b/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    .line 918
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$8;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/b/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/b/b;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$8;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    invoke-virtual {v4, v5}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v4, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/d;)V

    .line 919
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$8;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;->u(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment;)V

    goto/16 :goto_0
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 889
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuItemFragment$8;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel;)V

    return-void
.end method
