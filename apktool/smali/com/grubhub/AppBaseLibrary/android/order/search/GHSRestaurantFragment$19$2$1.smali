.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19$2$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19$2;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19$2;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19$2;)V
    .locals 2

    .prologue
    .line 662
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19$2$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19$2;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 664
    const-string v0, "Command"

    const-string v1, "AddFavoriteCommand"

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19$2$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    const-string v0, "RestaurantId"

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19$2$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19$2;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19$2;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->e(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19$2$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    return-void
.end method
