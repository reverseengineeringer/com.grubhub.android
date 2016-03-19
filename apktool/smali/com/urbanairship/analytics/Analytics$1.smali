.class Lcom/urbanairship/analytics/Analytics$1;
.super Lcom/urbanairship/analytics/ActivityMonitor$Listener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/analytics/Analytics;-><init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/analytics/ActivityMonitor;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/analytics/Analytics;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/urbanairship/analytics/Analytics;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/urbanairship/analytics/Analytics$1;->this$0:Lcom/urbanairship/analytics/Analytics;

    iput-object p2, p0, Lcom/urbanairship/analytics/Analytics$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/urbanairship/analytics/ActivityMonitor$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackground(J)V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$1;->this$0:Lcom/urbanairship/analytics/Analytics;

    const/4 v1, 0x1

    # setter for: Lcom/urbanairship/analytics/Analytics;->inBackground:Z
    invoke-static {v0, v1}, Lcom/urbanairship/analytics/Analytics;->access$002(Lcom/urbanairship/analytics/Analytics;Z)Z

    .line 128
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$1;->this$0:Lcom/urbanairship/analytics/Analytics;

    new-instance v1, Lcom/urbanairship/analytics/AppBackgroundEvent;

    invoke-direct {v1, p1, p2}, Lcom/urbanairship/analytics/AppBackgroundEvent;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    .line 131
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.urbanairship.analytics.APP_BACKGROUND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/o;->a(Landroid/content/Intent;)Z

    .line 134
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$1;->this$0:Lcom/urbanairship/analytics/Analytics;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/Analytics;->setConversionSendId(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public onForeground(J)V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$1;->this$0:Lcom/urbanairship/analytics/Analytics;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/Analytics;->startNewSession()V

    .line 116
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$1;->this$0:Lcom/urbanairship/analytics/Analytics;

    const/4 v1, 0x0

    # setter for: Lcom/urbanairship/analytics/Analytics;->inBackground:Z
    invoke-static {v0, v1}, Lcom/urbanairship/analytics/Analytics;->access$002(Lcom/urbanairship/analytics/Analytics;Z)Z

    .line 119
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.urbanairship.analytics.APP_FOREGROUND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/o;->a(Landroid/content/Intent;)Z

    .line 122
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$1;->this$0:Lcom/urbanairship/analytics/Analytics;

    new-instance v1, Lcom/urbanairship/analytics/AppForegroundEvent;

    invoke-direct {v1, p1, p2}, Lcom/urbanairship/analytics/AppForegroundEvent;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    .line 123
    return-void
.end method
