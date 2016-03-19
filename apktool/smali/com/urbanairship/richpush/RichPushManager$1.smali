.class Lcom/urbanairship/richpush/RichPushManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/richpush/RichPushManager;->init()V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/richpush/RichPushManager;


# direct methods
.method constructor <init>(Lcom/urbanairship/richpush/RichPushManager;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/urbanairship/richpush/RichPushManager$1;->this$0:Lcom/urbanairship/richpush/RichPushManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager$1;->this$0:Lcom/urbanairship/richpush/RichPushManager;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushManager;->refreshMessages()V

    .line 104
    return-void
.end method
