.class public Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;

.field private b:Landroid/content/Context;

.field private c:[Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;Landroid/content/Context;[Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;)V
    .locals 1

    .prologue
    .line 290
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/GHSPaymentSelectionFragment;

    .line 291
    const v0, 0x1090009

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 292
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b;->b:Landroid/content/Context;

    .line 293
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b;->c:[Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;

    .line 294
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b;->c:[Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, p3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;->b(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b;->c:[Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, p3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/paymentSelection/b/d;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
