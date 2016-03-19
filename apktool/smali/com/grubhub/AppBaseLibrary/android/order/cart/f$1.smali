.class Lcom/grubhub/AppBaseLibrary/android/order/cart/f$1;
.super Lcom/grubhub/AppBaseLibrary/android/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/cart/f;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/cart/f;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/f;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;)V
    .locals 0

    .prologue
    .line 1909
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/f$1;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/f;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/f$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;

    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;)V
    .locals 5

    .prologue
    .line 1931
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "modify your order"

    const-string v3, "delete item_CTA"

    const-string v4, "dismiss"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 1936
    return-void
.end method

.method public a(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 1912
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/f$1;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/f;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/f;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/f$1;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/f;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/order/cart/f;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->v(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getCartId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/f$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 1913
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "modify your order"

    const-string v3, "delete item_CTA"

    const-string v4, "successful"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 1918
    return-void
.end method

.method public b(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 1922
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "modify your order"

    const-string v3, "delete item_CTA"

    const-string v4, "dismiss"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 1927
    return-void
.end method
