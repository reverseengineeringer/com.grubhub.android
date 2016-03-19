.class Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/j/b;

    .line 310
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSAccountInfoCheckoutFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Z)V

    .line 311
    return-void
.end method
