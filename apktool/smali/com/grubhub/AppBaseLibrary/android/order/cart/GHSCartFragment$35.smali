.class Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$35;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->b(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;)V
    .locals 0

    .prologue
    .line 1334
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$35;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$35;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/b/i;

    .line 1338
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$35;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 1339
    instance-of v1, v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    if-eqz v1, :cond_0

    .line 1340
    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSBaseActivity;->a(Z)V

    .line 1342
    :cond_0
    return-void
.end method
