.class Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;

.field final synthetic c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$6;->e:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$6;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;

    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;

    iput-object p4, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$6;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;

    iput-object p5, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$6;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/c;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 378
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$6;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;->getLatitude()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$6;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;->getLongitude()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 379
    new-instance v1, Lcom/google/android/gms/maps/model/d;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/d;-><init>()V

    .line 380
    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/d;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/d;

    .line 381
    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-static {v2, v3, v4, v5, v8}, Lcom/grubhub/AppBaseLibrary/android/utils/e/b;->a(DDF)V

    .line 382
    new-instance v2, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    const v2, 0x7f020141

    invoke-static {v2}, Lcom/google/android/gms/maps/model/b;->a(I)Lcom/google/android/gms/maps/model/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Lcom/google/android/gms/maps/model/a;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/e;

    .line 385
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;->getLatitude()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;->getLongitude()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;->getLatitude()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$6;->b:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;

    invoke-interface {v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;->getLongitude()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 387
    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/d;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/d;

    .line 388
    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-static {v2, v3, v4, v5, v8}, Lcom/grubhub/AppBaseLibrary/android/utils/e/b;->a(DDF)V

    .line 389
    new-instance v2, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    const v2, 0x7f02014e

    invoke-static {v2}, Lcom/google/android/gms/maps/model/b;->a(I)Lcom/google/android/gms/maps/model/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Lcom/google/android/gms/maps/model/a;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/e;

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$6;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$6;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;->getLatitude()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$6;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;->getLongitude()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 394
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$6;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;->getLatitude()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$6;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIGeoInfo;->getLongitude()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 395
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/d;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/d;

    .line 396
    iget-wide v4, v2, Lcom/google/android/gms/maps/model/LatLng;->a:D

    iget-wide v6, v2, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-static {v4, v5, v6, v7, v8}, Lcom/grubhub/AppBaseLibrary/android/utils/e/b;->a(DDF)V

    .line 399
    const v0, 0x7f020120

    .line 400
    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$6;->d:Ljava/lang/String;

    invoke-static {v3}, Lcom/grubhub/AppBaseLibrary/android/order/f;->fromString(Ljava/lang/String;)Lcom/grubhub/AppBaseLibrary/android/order/f;

    move-result-object v3

    .line 401
    if-eqz v3, :cond_1

    sget-object v4, Lcom/grubhub/AppBaseLibrary/android/order/f;->WALKING:Lcom/grubhub/AppBaseLibrary/android/order/f;

    if-eq v3, v4, :cond_1

    .line 402
    sget-object v4, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$7;->b:[I

    invoke-virtual {v3}, Lcom/grubhub/AppBaseLibrary/android/order/f;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    .line 415
    :cond_1
    :goto_0
    new-instance v3, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v3}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v3, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/gms/maps/model/b;->a(I)Lcom/google/android/gms/maps/model/a;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Lcom/google/android/gms/maps/model/a;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/e;

    .line 418
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$6;->e:Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 419
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/d;->a()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v1

    int-to-double v2, v0

    const-wide v4, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v2, v4

    double-to-int v0, v2

    invoke-static {v1, v0}, Lcom/google/android/gms/maps/b;->a(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/a;)V

    .line 420
    return-void

    .line 404
    :pswitch_0
    const v0, 0x7f02011e

    .line 405
    goto :goto_0

    .line 407
    :pswitch_1
    const v0, 0x7f02011d

    .line 408
    goto :goto_0

    .line 410
    :pswitch_2
    const v0, 0x7f02011f

    goto :goto_0

    .line 402
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
