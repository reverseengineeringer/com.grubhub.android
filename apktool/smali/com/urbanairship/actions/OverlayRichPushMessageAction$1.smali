.class Lcom/urbanairship/actions/OverlayRichPushMessageAction$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/actions/OverlayRichPushMessageAction;->perform(Lcom/urbanairship/actions/ActionArguments;)Lcom/urbanairship/actions/ActionResult;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/actions/OverlayRichPushMessageAction;

.field final synthetic val$message:Lcom/urbanairship/richpush/RichPushMessage;


# direct methods
.method constructor <init>(Lcom/urbanairship/actions/OverlayRichPushMessageAction;Lcom/urbanairship/richpush/RichPushMessage;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/urbanairship/actions/OverlayRichPushMessageAction$1;->this$0:Lcom/urbanairship/actions/OverlayRichPushMessageAction;

    iput-object p2, p0, Lcom/urbanairship/actions/OverlayRichPushMessageAction$1;->val$message:Lcom/urbanairship/richpush/RichPushMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 118
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.urbanairship.actions.SHOW_LANDING_PAGE_INTENT_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "message"

    iget-object v2, p0, Lcom/urbanairship/actions/OverlayRichPushMessageAction$1;->val$message:Lcom/urbanairship/richpush/RichPushMessage;

    invoke-virtual {v2}, Lcom/urbanairship/richpush/RichPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 124
    :try_start_0
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    const-string v0, "Unable to view the inbox message in a landing page. The landing page activity is either missing in the manifest or does not include the message scheme in its intent filter."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
