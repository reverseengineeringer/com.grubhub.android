.class Lcom/urbanairship/analytics/ActivityMonitor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/analytics/ActivityMonitor;->activityStopped(Landroid/app/Activity;IJ)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/analytics/ActivityMonitor;


# direct methods
.method constructor <init>(Lcom/urbanairship/analytics/ActivityMonitor;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/urbanairship/analytics/ActivityMonitor$1;->this$0:Lcom/urbanairship/analytics/ActivityMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityMonitor$1;->this$0:Lcom/urbanairship/analytics/ActivityMonitor;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/ActivityMonitor;->updateForegroundState()V

    .line 117
    return-void
.end method
