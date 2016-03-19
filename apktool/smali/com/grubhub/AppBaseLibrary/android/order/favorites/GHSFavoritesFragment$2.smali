.class Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;Z)Z

    .line 123
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;)Lcom/grubhub/AppBaseLibrary/android/order/favorites/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->c(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->d(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel$GHSIRestaurantAvailabilitySummary;

    .line 127
    if-eqz v0, :cond_0

    .line 128
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;)Lcom/grubhub/AppBaseLibrary/android/order/favorites/b;

    move-result-object v3

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel$GHSIRestaurantAvailabilitySummary;->getRestaurantId()Ljava/lang/String;

    move-result-object v4

    .line 129
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantAvailabilityDataModel$GHSIRestaurantAvailabilitySummary;->isAvailableForDelivery()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 128
    :goto_0
    invoke-interface {v3, v4, v0}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/b;->a(Ljava/lang/String;Z)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;

    invoke-static {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/favorites/GHSFavoritesFragment;Z)Z

    .line 135
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 129
    goto :goto_0
.end method
