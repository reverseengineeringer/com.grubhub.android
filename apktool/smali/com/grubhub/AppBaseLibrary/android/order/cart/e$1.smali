.class Lcom/grubhub/AppBaseLibrary/android/order/cart/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/cart/e;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/cart/e;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/e;)V
    .locals 0

    .prologue
    .line 1795
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/e$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1798
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/e$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/e;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/e;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->u(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1803
    :goto_0
    return v1

    .line 1802
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/e$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/e;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/cart/e;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->f(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0
.end method
