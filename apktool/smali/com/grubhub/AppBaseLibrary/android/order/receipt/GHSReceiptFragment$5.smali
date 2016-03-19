.class Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->b(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;)V
    .locals 0

    .prologue
    .line 713
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 716
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;

    .line 717
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;

    .line 718
    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;->getExpectedTimeInMillis()J

    move-result-wide v2

    .line 716
    invoke-static {v0, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;->a(Ljava/lang/String;J)Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;

    move-result-object v0

    .line 719
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->getChildFragmentManager()Landroid/support/v4/app/w;

    move-result-object v1

    const-class v2, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;->show(Landroid/support/v4/app/w;Ljava/lang/String;)V

    .line 721
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "future ordering"

    const-string v3, "open order interactions_cta"

    const-string v4, "stop order step 1"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 725
    return-void
.end method
