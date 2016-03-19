.class Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

.field final synthetic f:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V
    .locals 0

    .prologue
    .line 554
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$6;->f:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$6;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$6;->c:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$6;->d:Z

    iput-object p6, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$6;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)V
    .locals 7

    .prologue
    .line 557
    if-eqz p1, :cond_0

    .line 558
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->c(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)V

    .line 560
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$6;->f:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$6;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$6;->b:Ljava/lang/String;

    const-string v3, ""

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$6;->c:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$6;->d:Z

    iget-object v6, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$6;->e:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    invoke-static/range {v0 .. v6}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;)V

    .line 562
    :cond_0
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 554
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderStatusFragment$6;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;)V

    return-void
.end method
