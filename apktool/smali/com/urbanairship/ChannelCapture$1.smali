.class Lcom/urbanairship/ChannelCapture$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/ChannelCapture;-><init>(Landroid/content/Context;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/push/PushManager;Landroid/support/v4/app/cj;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/ChannelCapture;


# direct methods
.method constructor <init>(Lcom/urbanairship/ChannelCapture;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/urbanairship/ChannelCapture$1;->this$0:Lcom/urbanairship/ChannelCapture;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/urbanairship/ChannelCapture$1;->this$0:Lcom/urbanairship/ChannelCapture;

    iget-object v0, v0, Lcom/urbanairship/ChannelCapture;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/urbanairship/ChannelCapture$1$1;

    invoke-direct {v1, p0}, Lcom/urbanairship/ChannelCapture$1$1;-><init>(Lcom/urbanairship/ChannelCapture$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 124
    return-void
.end method
