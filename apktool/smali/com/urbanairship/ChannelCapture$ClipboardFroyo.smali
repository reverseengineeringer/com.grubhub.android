.class Lcom/urbanairship/ChannelCapture$ClipboardFroyo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/urbanairship/ChannelCapture$Clipboard;


# instance fields
.field private final clipboardManager:Landroid/text/ClipboardManager;

.field final synthetic this$0:Lcom/urbanairship/ChannelCapture;


# direct methods
.method constructor <init>(Lcom/urbanairship/ChannelCapture;)V
    .locals 2

    .prologue
    .line 369
    iput-object p1, p0, Lcom/urbanairship/ChannelCapture$ClipboardFroyo;->this$0:Lcom/urbanairship/ChannelCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    # getter for: Lcom/urbanairship/ChannelCapture;->context:Landroid/content/Context;
    invoke-static {p1}, Lcom/urbanairship/ChannelCapture;->access$200(Lcom/urbanairship/ChannelCapture;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    iput-object v0, p0, Lcom/urbanairship/ChannelCapture$ClipboardFroyo;->clipboardManager:Landroid/text/ClipboardManager;

    .line 371
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/urbanairship/ChannelCapture$ClipboardFroyo;->clipboardManager:Landroid/text/ClipboardManager;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 381
    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/urbanairship/ChannelCapture$ClipboardFroyo;->clipboardManager:Landroid/text/ClipboardManager;

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
