.class Lcom/grubhub/AppBaseLibrary/android/order/cart/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;I)V
    .locals 0

    .prologue
    .line 1900
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/f;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1901
    iput p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/f;->b:I

    .line 1902
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1907
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/f;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->v(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1908
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/f;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->s(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/f;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;

    .line 1909
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/f;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    const v1, 0x7f0800e9

    const v3, 0x7f0800e8

    const v4, 0x7f0800e7

    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/order/cart/f$1;

    invoke-direct {v6, p0, v5}, Lcom/grubhub/AppBaseLibrary/android/order/cart/f$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/f;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;)V

    move v5, v2

    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;IIIIILcom/grubhub/AppBaseLibrary/android/d;)V

    .line 1943
    :goto_0
    return-void

    .line 1941
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/f;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->l()V

    goto :goto_0
.end method
