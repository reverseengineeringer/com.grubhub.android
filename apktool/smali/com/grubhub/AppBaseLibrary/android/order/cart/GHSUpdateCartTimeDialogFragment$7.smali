.class Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;->a(Ljava/lang/String;Landroid/widget/ViewFlipper;Lcom/grubhub/AppBaseLibrary/android/order/cart/r;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ViewFlipper;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;Landroid/widget/ViewFlipper;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment$7;->b:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment$7;->a:Landroid/widget/ViewFlipper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSUpdateCartTimeDialogFragment$7;->a:Landroid/widget/ViewFlipper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 383
    return-void
.end method
