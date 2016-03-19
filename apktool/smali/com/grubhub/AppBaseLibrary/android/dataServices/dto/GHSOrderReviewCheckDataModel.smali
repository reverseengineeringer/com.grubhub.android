.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSOrderReviewCheckDataModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final orderId:Ljava/lang/String;

.field public final state:Ljava/lang/String;

.field public final timePlaced:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSOrderReviewCheckDataModel;->orderId:Ljava/lang/String;

    .line 24
    iput-wide p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSOrderReviewCheckDataModel;->timePlaced:J

    .line 25
    iput-object p4, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/GHSOrderReviewCheckDataModel;->state:Ljava/lang/String;

    .line 26
    return-void
.end method
