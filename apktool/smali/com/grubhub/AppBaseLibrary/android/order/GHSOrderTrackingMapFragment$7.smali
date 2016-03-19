.class synthetic Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment;
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 402
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/order/f;->values()[Lcom/grubhub/AppBaseLibrary/android/order/f;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$7;->b:[I

    :try_start_0
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$7;->b:[I

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/f;->CAR:Lcom/grubhub/AppBaseLibrary/android/order/f;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/order/f;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$7;->b:[I

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/f;->BIKE:Lcom/grubhub/AppBaseLibrary/android/order/f;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/order/f;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$7;->b:[I

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/f;->SCOOTER:Lcom/grubhub/AppBaseLibrary/android/order/f;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/order/f;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    .line 233
    :goto_2
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/order/d;->values()[Lcom/grubhub/AppBaseLibrary/android/order/d;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$7;->a:[I

    :try_start_3
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$7;->a:[I

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/d;->COMMITTED:Lcom/grubhub/AppBaseLibrary/android/order/d;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/order/d;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$7;->a:[I

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/d;->ASSIGNED:Lcom/grubhub/AppBaseLibrary/android/order/d;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/order/d;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$7;->a:[I

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/d;->IN_TRANSIT:Lcom/grubhub/AppBaseLibrary/android/order/d;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/order/d;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$7;->a:[I

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/d;->DELIVERED:Lcom/grubhub/AppBaseLibrary/android/order/d;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/order/d;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$7;->a:[I

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/d;->CANCELED:Lcom/grubhub/AppBaseLibrary/android/order/d;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/order/d;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/order/GHSOrderTrackingMapFragment$7;->a:[I

    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/order/d;->REJECTED:Lcom/grubhub/AppBaseLibrary/android/order/d;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/order/d;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    return-void

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_3

    .line 402
    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_1

    :catch_8
    move-exception v0

    goto :goto_0
.end method
