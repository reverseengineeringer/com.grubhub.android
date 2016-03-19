.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->d()V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/c;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/c;)V
    .locals 0

    .prologue
    .line 692
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19$4;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19$4;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 697
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19$4;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->l(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 698
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19$4;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->m(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)I

    .line 699
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19$4;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/c;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/c;->a()V

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19$4;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;Z)V

    .line 705
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19$4;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;Z)Z

    .line 707
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19$4;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->j(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/grubhub/AppBaseLibrary/android/order/search/g;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 708
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19$4;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;->j(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment;)Lcom/grubhub/AppBaseLibrary/android/order/search/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/g;->y()V

    .line 712
    :cond_1
    const-string v0, "FAVORITE_ERROR"

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19$4$1;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19$4$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSRestaurantFragment$19$4;)V

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 718
    return-void
.end method
