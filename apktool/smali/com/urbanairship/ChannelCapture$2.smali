.class Lcom/urbanairship/ChannelCapture$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/ChannelCapture;->init()V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/ChannelCapture;


# direct methods
.method constructor <init>(Lcom/urbanairship/ChannelCapture;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/urbanairship/ChannelCapture$2;->this$0:Lcom/urbanairship/ChannelCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 140
    iget-object v1, p0, Lcom/urbanairship/ChannelCapture$2;->this$0:Lcom/urbanairship/ChannelCapture;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    new-instance v0, Lcom/urbanairship/ChannelCapture$ClipboardHoneyComb;

    iget-object v2, p0, Lcom/urbanairship/ChannelCapture$2;->this$0:Lcom/urbanairship/ChannelCapture;

    invoke-direct {v0, v2}, Lcom/urbanairship/ChannelCapture$ClipboardHoneyComb;-><init>(Lcom/urbanairship/ChannelCapture;)V

    :goto_0
    # setter for: Lcom/urbanairship/ChannelCapture;->clipboard:Lcom/urbanairship/ChannelCapture$Clipboard;
    invoke-static {v1, v0}, Lcom/urbanairship/ChannelCapture;->access$102(Lcom/urbanairship/ChannelCapture;Lcom/urbanairship/ChannelCapture$Clipboard;)Lcom/urbanairship/ChannelCapture$Clipboard;

    .line 142
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 143
    const-string v1, "com.urbanairship.analytics.APP_FOREGROUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/urbanairship/ChannelCapture$2;->this$0:Lcom/urbanairship/ChannelCapture;

    # getter for: Lcom/urbanairship/ChannelCapture;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/urbanairship/ChannelCapture;->access$200(Lcom/urbanairship/ChannelCapture;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v1

    .line 145
    iget-object v2, p0, Lcom/urbanairship/ChannelCapture$2;->this$0:Lcom/urbanairship/ChannelCapture;

    # getter for: Lcom/urbanairship/ChannelCapture;->broadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/urbanairship/ChannelCapture;->access$300(Lcom/urbanairship/ChannelCapture;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/o;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 146
    return-void

    .line 140
    :cond_0
    new-instance v0, Lcom/urbanairship/ChannelCapture$ClipboardFroyo;

    iget-object v2, p0, Lcom/urbanairship/ChannelCapture$2;->this$0:Lcom/urbanairship/ChannelCapture;

    invoke-direct {v0, v2}, Lcom/urbanairship/ChannelCapture$ClipboardFroyo;-><init>(Lcom/urbanairship/ChannelCapture;)V

    goto :goto_0
.end method
