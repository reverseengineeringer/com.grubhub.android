.class Lcom/urbanairship/location/UALocationManager$3$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/location/UALocationManager$3;->run()V
.end annotation


# instance fields
.field final synthetic this$1:Lcom/urbanairship/location/UALocationManager$3;


# direct methods
.method constructor <init>(Lcom/urbanairship/location/UALocationManager$3;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/urbanairship/location/UALocationManager$3$1;->this$1:Lcom/urbanairship/location/UALocationManager$3;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager$3$1;->this$1:Lcom/urbanairship/location/UALocationManager$3;

    iget-object v0, v0, Lcom/urbanairship/location/UALocationManager$3;->this$0:Lcom/urbanairship/location/UALocationManager;

    # invokes: Lcom/urbanairship/location/UALocationManager;->updateServiceConnection()V
    invoke-static {v0}, Lcom/urbanairship/location/UALocationManager;->access$200(Lcom/urbanairship/location/UALocationManager;)V

    .line 155
    return-void
.end method
