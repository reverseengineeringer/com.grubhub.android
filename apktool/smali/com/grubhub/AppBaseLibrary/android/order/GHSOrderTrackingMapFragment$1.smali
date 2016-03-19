.class Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->setBackgroundColor(I)V

    .line 175
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;)Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->a()V

    .line 176
    return-void
.end method
