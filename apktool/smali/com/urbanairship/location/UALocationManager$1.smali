.class Lcom/urbanairship/location/UALocationManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/location/UALocationManager;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/location/UALocationManager;


# direct methods
.method constructor <init>(Lcom/urbanairship/location/UALocationManager;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/urbanairship/location/UALocationManager$1;->this$0:Lcom/urbanairship/location/UALocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 90
    const-string v0, "Location service connected."

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager$1;->this$0:Lcom/urbanairship/location/UALocationManager;

    # invokes: Lcom/urbanairship/location/UALocationManager;->onServiceConnected(Landroid/os/IBinder;)V
    invoke-static {v0, p2}, Lcom/urbanairship/location/UALocationManager;->access$000(Lcom/urbanairship/location/UALocationManager;Landroid/os/IBinder;)V

    .line 92
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .prologue
    .line 96
    const-string v0, "Location service disconnected."

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager$1;->this$0:Lcom/urbanairship/location/UALocationManager;

    # invokes: Lcom/urbanairship/location/UALocationManager;->onServiceDisconnected()V
    invoke-static {v0}, Lcom/urbanairship/location/UALocationManager;->access$100(Lcom/urbanairship/location/UALocationManager;)V

    .line 98
    return-void
.end method
