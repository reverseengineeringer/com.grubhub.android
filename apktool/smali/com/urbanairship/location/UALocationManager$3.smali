.class Lcom/urbanairship/location/UALocationManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/location/UALocationManager;->init()V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/location/UALocationManager;


# direct methods
.method constructor <init>(Lcom/urbanairship/location/UALocationManager;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/urbanairship/location/UALocationManager$3;->this$0:Lcom/urbanairship/location/UALocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 146
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 147
    const-string v1, "com.urbanairship.analytics.APP_FOREGROUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v1, "com.urbanairship.analytics.APP_BACKGROUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/urbanairship/location/UALocationManager$3;->this$0:Lcom/urbanairship/location/UALocationManager;

    # getter for: Lcom/urbanairship/location/UALocationManager;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/urbanairship/location/UALocationManager;->access$300(Lcom/urbanairship/location/UALocationManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v1

    .line 151
    new-instance v2, Lcom/urbanairship/location/UALocationManager$3$1;

    invoke-direct {v2, p0}, Lcom/urbanairship/location/UALocationManager$3$1;-><init>(Lcom/urbanairship/location/UALocationManager$3;)V

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/o;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 158
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager$3;->this$0:Lcom/urbanairship/location/UALocationManager;

    # invokes: Lcom/urbanairship/location/UALocationManager;->updateServiceConnection()V
    invoke-static {v0}, Lcom/urbanairship/location/UALocationManager;->access$200(Lcom/urbanairship/location/UALocationManager;)V

    .line 159
    return-void
.end method
