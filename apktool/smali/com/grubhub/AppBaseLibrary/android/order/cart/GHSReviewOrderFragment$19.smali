.class Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

.field final synthetic c:Ljava/lang/Integer;

.field final synthetic d:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 1219
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$19;->d:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$19;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$19;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    iput-object p4, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$19;->c:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)V
    .locals 4

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$19;->d:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$19;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$19;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$19;->c:Ljava/lang/Integer;

    invoke-static {v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Ljava/lang/Integer;)V

    .line 1224
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1219
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$19;->a(Ljava/lang/Void;)V

    return-void
.end method
