.class Lcom/urbanairship/analytics/Analytics$4$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/urbanairship/UAirship$OnReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/analytics/Analytics$4;->onActivityStopped(Landroid/app/Activity;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/analytics/Analytics$4;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$timeStamp:J


# direct methods
.method constructor <init>(Lcom/urbanairship/analytics/Analytics$4;Landroid/app/Activity;J)V
    .locals 1

    .prologue
    .line 359
    iput-object p1, p0, Lcom/urbanairship/analytics/Analytics$4$2;->this$0:Lcom/urbanairship/analytics/Analytics$4;

    iput-object p2, p0, Lcom/urbanairship/analytics/Analytics$4$2;->val$activity:Landroid/app/Activity;

    iput-wide p3, p0, Lcom/urbanairship/analytics/Analytics$4$2;->val$timeStamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAirshipReady(Lcom/urbanairship/UAirship;)V
    .locals 6

    .prologue
    .line 362
    invoke-virtual {p1}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/analytics/Analytics$4$2;->val$activity:Landroid/app/Activity;

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/urbanairship/analytics/Analytics$4$2;->val$timeStamp:J

    # invokes: Lcom/urbanairship/analytics/Analytics;->reportActivityStopped(Landroid/app/Activity;IJ)V
    invoke-static {v0, v1, v2, v4, v5}, Lcom/urbanairship/analytics/Analytics;->access$200(Lcom/urbanairship/analytics/Analytics;Landroid/app/Activity;IJ)V

    .line 363
    return-void
.end method
