.class Lcom/urbanairship/ChannelCapture$ClipboardHoneyComb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/urbanairship/ChannelCapture$Clipboard;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private final clipboardManager:Landroid/content/ClipboardManager;

.field final synthetic this$0:Lcom/urbanairship/ChannelCapture;


# direct methods
.method constructor <init>(Lcom/urbanairship/ChannelCapture;)V
    .locals 2

    .prologue
    .line 334
    iput-object p1, p0, Lcom/urbanairship/ChannelCapture$ClipboardHoneyComb;->this$0:Lcom/urbanairship/ChannelCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    # getter for: Lcom/urbanairship/ChannelCapture;->context:Landroid/content/Context;
    invoke-static {p1}, Lcom/urbanairship/ChannelCapture;->access$200(Lcom/urbanairship/ChannelCapture;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Lcom/urbanairship/ChannelCapture$ClipboardHoneyComb;->clipboardManager:Landroid/content/ClipboardManager;

    .line 336
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 358
    iget-object v0, p0, Lcom/urbanairship/ChannelCapture$ClipboardHoneyComb;->clipboardManager:Landroid/content/ClipboardManager;

    const-string v1, ""

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 359
    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 340
    iget-object v0, p0, Lcom/urbanairship/ChannelCapture$ClipboardHoneyComb;->clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    .line 342
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 344
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 345
    invoke-virtual {v1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    .line 346
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 347
    if-eqz v2, :cond_0

    .line 348
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    :goto_1
    return-object v0

    .line 344
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 353
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
