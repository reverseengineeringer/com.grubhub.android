.class Lcom/urbanairship/ChannelCapture$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/ChannelCapture$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation


# instance fields
.field final synthetic this$1:Lcom/urbanairship/ChannelCapture$1;


# direct methods
.method constructor <init>(Lcom/urbanairship/ChannelCapture$1;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/urbanairship/ChannelCapture$1$1;->this$1:Lcom/urbanairship/ChannelCapture$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/urbanairship/ChannelCapture$1$1;->this$1:Lcom/urbanairship/ChannelCapture$1;

    iget-object v0, v0, Lcom/urbanairship/ChannelCapture$1;->this$0:Lcom/urbanairship/ChannelCapture;

    # invokes: Lcom/urbanairship/ChannelCapture;->checkClipboard()V
    invoke-static {v0}, Lcom/urbanairship/ChannelCapture;->access$000(Lcom/urbanairship/ChannelCapture;)V

    .line 122
    return-void
.end method
