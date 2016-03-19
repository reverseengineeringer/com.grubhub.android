.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a(Ljava/lang/String;)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1315
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$11;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$11;->a:Ljava/lang/String;

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
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1318
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/order/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1319
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 1321
    :goto_0
    if-eqz v0, :cond_1

    .line 1323
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/a;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)Ljava/lang/String;

    move-result-object v4

    .line 1324
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->z()Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    move-result-object v0

    .line 1325
    if-nez v0, :cond_3

    .line 1326
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;-><init>()V

    move-object v1, v0

    .line 1329
    :goto_1
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-virtual {v1, v0, v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;->setAddress(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Ljava/lang/String;)V

    .line 1330
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSFilterSortCriteria;)V

    .line 1332
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$11;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    invoke-static {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    .line 1333
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$11;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v0, v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Z)Z

    .line 1334
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$11;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$11;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    move-result-object v1

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$11;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->c(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v3

    invoke-static {v0, v1, v4, v3, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;Z)V

    .line 1347
    :goto_2
    return-void

    :cond_0
    move v0, v3

    .line 1319
    goto :goto_0

    .line 1336
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1338
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;->a(Ljava/util/ArrayList;)Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;

    move-result-object v0

    .line 1339
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$11;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->g(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Landroid/support/v4/app/w;

    move-result-object v1

    const-class v2, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;->show(Landroid/support/v4/app/w;Ljava/lang/String;)V

    goto :goto_2

    .line 1344
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$11;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v0, v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Z)Z

    .line 1345
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$11;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$11;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$11;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v4}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->c(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v4

    invoke-static {v0, v1, v3, v4, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;Z)V

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1315
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$11;->a(Ljava/util/ArrayList;)V

    return-void
.end method
