.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderReviewCheckDTO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final order_date:Ljava/lang/String;

.field public final order_id:Ljava/lang/String;

.field public final order_state:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSOrderReviewCheckDataModel;)V
    .locals 4

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iget-object v0, p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSOrderReviewCheckDataModel;->orderId:Ljava/lang/String;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderReviewCheckDTO;->order_id:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSOrderReviewCheckDataModel;->state:Ljava/lang/String;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderReviewCheckDTO;->order_state:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 31
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSOrderReviewCheckDataModel;->timePlaced:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV2/V2OrderReviewCheckDTO;->order_date:Ljava/lang/String;

    .line 32
    return-void
.end method
