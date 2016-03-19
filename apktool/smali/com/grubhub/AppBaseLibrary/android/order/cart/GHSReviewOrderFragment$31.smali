.class Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)V
    .locals 0

    .prologue
    .line 1401
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$31;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V
    .locals 1

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$31;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;

    invoke-static {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    .line 1405
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$31;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;->t(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment;)V

    .line 1406
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1401
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSReviewOrderFragment$31;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;)V

    return-void
.end method
