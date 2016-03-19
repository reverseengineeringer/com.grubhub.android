.class Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->a()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryLookupDataModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryLookupDataModel;)V
    .locals 1

    .prologue
    .line 187
    if-eqz p1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;)V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->c(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;)V

    goto :goto_0
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 184
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryLookupDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$3;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIDeliveryLookupDataModel;)V

    return-void
.end method
