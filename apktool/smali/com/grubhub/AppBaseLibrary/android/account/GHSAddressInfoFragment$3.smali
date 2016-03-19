.class Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->e(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
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
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$3;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 600
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$3;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->k(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel;->getSummary(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel$GHSIRestaurantAvailabilitySummary;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 601
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$3;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->k(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel;->getSummary(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel$GHSIRestaurantAvailabilitySummary;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel$GHSIRestaurantAvailabilitySummary;->offersDeliveryToDinerLocation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 602
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$3;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->l(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)Lcom/grubhub/AppBaseLibrary/android/account/a;

    move-result-object v0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/account/a;->EDIT:Lcom/grubhub/AppBaseLibrary/android/account/a;

    if-ne v0, v1, :cond_0

    .line 603
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$3;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->b(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    .line 616
    :goto_0
    return-void

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$3;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->c(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    goto :goto_0

    .line 608
    :cond_1
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/b/b;

    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_ADDRESS_OUT_OF_DELIVERY_AREA:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-direct {v2, v0}, Lcom/grubhub/AppBaseLibrary/android/b/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    .line 609
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$3;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/b/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/b/b;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$3;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    const v5, 0x7f0803e5

    invoke-virtual {v4, v5}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v4, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/d;)V

    .line 610
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$3;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->j(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V

    goto :goto_0

    .line 613
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$3;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/b/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_UNKNOWN:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-direct {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/b/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->a(Ljava/lang/String;Z)V

    .line 614
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$3;->b:Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;->j(Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment;)V

    goto :goto_0
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 597
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSAddressInfoFragment$3;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel;)V

    return-void
.end method
