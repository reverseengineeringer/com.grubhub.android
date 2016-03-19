.class Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$34;
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
    .line 320
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$34;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 323
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800f1

    const v3, 0x7f0803e5

    const v4, 0x7f0800e1

    new-instance v6, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$34$1;

    invoke-direct {v6, p0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$34$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCartFragment$34;)V

    move v5, v2

    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;IIIIILcom/grubhub/AppBaseLibrary/android/d;)V

    .line 354
    return-void
.end method
