.class Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 147
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Lcom/grubhub/AppBaseLibrary/android/order/cart/h;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/h;->e(Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "modify your order"

    const-string v3, "add more items_CTA"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 154
    return-void
.end method
