.class Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/model/LatLng;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment$1;->b:Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment$1;->a:Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/c;)V
    .locals 6

    .prologue
    .line 279
    const/high16 v0, 0x41800000    # 16.0f

    .line 280
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment$1;->a:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v1, Lcom/google/android/gms/maps/model/LatLng;->a:D

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment$1;->a:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v1, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-static {v2, v3, v4, v5, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/b;->a(DDF)V

    .line 281
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment$1;->a:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v1, v0}, Lcom/google/android/gms/maps/b;->a(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/a;)V

    .line 282
    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment$1;->b:Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIRestaurantDataModel;->getRestaurantName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment$1;->a:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/e;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/e;->a()V

    .line 284
    return-void
.end method
