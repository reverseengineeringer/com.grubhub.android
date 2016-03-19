.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1349
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$13;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$13;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 5

    .prologue
    .line 1352
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->c()Lcom/grubhub/AppBaseLibrary/android/b/a;

    move-result-object v0

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_ADDRESS_LOOKUP_ZERO_RESULTS:Lcom/grubhub/AppBaseLibrary/android/b/a;

    if-ne v0, v1, :cond_0

    .line 1353
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$13;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Z)Z

    .line 1354
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$13;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$13;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$13;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->c(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/grubhub/AppBaseLibrary/android/order/g;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/order/g;Z)V

    .line 1358
    :goto_0
    return-void

    .line 1356
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$13;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
