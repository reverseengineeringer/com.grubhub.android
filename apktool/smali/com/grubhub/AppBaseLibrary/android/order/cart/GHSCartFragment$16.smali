.class Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(Ljava/lang/String;I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V
    .locals 0

    .prologue
    .line 1035
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$16;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V
    .locals 2

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$16;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->n(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Lcom/grubhub/AppBaseLibrary/android/order/cart/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$16;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->n(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Lcom/grubhub/AppBaseLibrary/android/order/cart/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/e;->notifyDataSetChanged()V

    .line 1042
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$16;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 1043
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_1

    .line 1044
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Z)V

    .line 1046
    :cond_1
    return-void
.end method
