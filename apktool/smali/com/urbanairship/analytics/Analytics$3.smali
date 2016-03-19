.class final Lcom/urbanairship/analytics/Analytics$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/urbanairship/UAirship$OnReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/analytics/Analytics;->activityStopped(Landroid/app/Activity;)V
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$timeMS:J


# direct methods
.method constructor <init>(Landroid/app/Activity;J)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/urbanairship/analytics/Analytics$3;->val$activity:Landroid/app/Activity;

    iput-wide p2, p0, Lcom/urbanairship/analytics/Analytics$3;->val$timeMS:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAirshipReady(Lcom/urbanairship/UAirship;)V
    .locals 6

    .prologue
    .line 168
    invoke-virtual {p1}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/analytics/Analytics$3;->val$activity:Landroid/app/Activity;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/urbanairship/analytics/Analytics$3;->val$timeMS:J

    # invokes: Lcom/urbanairship/analytics/Analytics;->reportActivityStopped(Landroid/app/Activity;IJ)V
    invoke-static {v0, v1, v2, v4, v5}, Lcom/urbanairship/analytics/Analytics;->access$200(Lcom/urbanairship/analytics/Analytics;Landroid/app/Activity;IJ)V

    .line 169
    return-void
.end method
