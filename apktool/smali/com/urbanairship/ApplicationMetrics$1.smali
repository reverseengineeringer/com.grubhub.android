.class Lcom/urbanairship/ApplicationMetrics$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/ApplicationMetrics;->registerBroadcastReceivers(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/ApplicationMetrics;


# direct methods
.method constructor <init>(Lcom/urbanairship/ApplicationMetrics;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/urbanairship/ApplicationMetrics$1;->this$0:Lcom/urbanairship/ApplicationMetrics;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/urbanairship/ApplicationMetrics$1;->this$0:Lcom/urbanairship/ApplicationMetrics;

    # getter for: Lcom/urbanairship/ApplicationMetrics;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;
    invoke-static {v0}, Lcom/urbanairship/ApplicationMetrics;->access$000(Lcom/urbanairship/ApplicationMetrics;)Lcom/urbanairship/PreferenceDataStore;

    move-result-object v0

    const-string v1, "com.urbanairship.application.metrics.LAST_OPEN"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;J)V

    .line 60
    return-void
.end method
