.class Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(Ljava/lang/String;Z)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;)V
    .locals 0

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$20;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$20;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 3

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$20;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->o(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/b/b;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$20$1;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$20$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$20;)V

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1112
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$20;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->n(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Lcom/grubhub/AppBaseLibrary/android/order/cart/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$20;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->n(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Lcom/grubhub/AppBaseLibrary/android/order/cart/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/e;->notifyDataSetChanged()V

    .line 1115
    :cond_0
    return-void
.end method
