.class Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$26;
.super Lcom/grubhub/AppBaseLibrary/android/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V
    .locals 0

    .prologue
    .line 1203
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$26;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$26;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$26;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$26;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->p(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/g;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/a;)V

    .line 1207
    return-void
.end method
