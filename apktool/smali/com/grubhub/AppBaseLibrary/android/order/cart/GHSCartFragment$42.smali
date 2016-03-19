.class Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(Landroid/view/View;FZ)V
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Z

.field final synthetic c:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;FZ)V
    .locals 0

    .prologue
    .line 745
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$42;->c:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    iput p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$42;->a:F

    iput-boolean p3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$42;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 748
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$42;->c:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Lcom/grubhub/AppBaseLibrary/android/order/cart/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$42;->c:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$42;->a:F

    iget-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$42;->b:Z

    invoke-static {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;FZ)V

    .line 751
    :cond_0
    return-void
.end method
