.class Lcom/urbanairship/actions/OpenRichPushInboxAction$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/actions/OpenRichPushInboxAction;->perform(Lcom/urbanairship/actions/ActionArguments;)Lcom/urbanairship/actions/ActionResult;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/actions/OpenRichPushInboxAction;

.field final synthetic val$message:Lcom/urbanairship/richpush/RichPushMessage;


# direct methods
.method constructor <init>(Lcom/urbanairship/actions/OpenRichPushInboxAction;Lcom/urbanairship/richpush/RichPushMessage;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/urbanairship/actions/OpenRichPushInboxAction$1;->this$0:Lcom/urbanairship/actions/OpenRichPushInboxAction;

    iput-object p2, p0, Lcom/urbanairship/actions/OpenRichPushInboxAction$1;->val$message:Lcom/urbanairship/richpush/RichPushMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/urbanairship/actions/OpenRichPushInboxAction$1;->val$message:Lcom/urbanairship/richpush/RichPushMessage;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/urbanairship/actions/OpenRichPushInboxAction$1;->this$0:Lcom/urbanairship/actions/OpenRichPushInboxAction;

    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/urbanairship/actions/OpenRichPushInboxAction$1;->val$message:Lcom/urbanairship/richpush/RichPushMessage;

    # invokes: Lcom/urbanairship/actions/OpenRichPushInboxAction;->startInboxMessageActivity(Landroid/content/Context;Lcom/urbanairship/richpush/RichPushMessage;)V
    invoke-static {v0, v1, v2}, Lcom/urbanairship/actions/OpenRichPushInboxAction;->access$000(Lcom/urbanairship/actions/OpenRichPushInboxAction;Landroid/content/Context;Lcom/urbanairship/richpush/RichPushMessage;)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/actions/OpenRichPushInboxAction$1;->this$0:Lcom/urbanairship/actions/OpenRichPushInboxAction;

    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/urbanairship/actions/OpenRichPushInboxAction;->startInboxActivity(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/urbanairship/actions/OpenRichPushInboxAction;->access$100(Lcom/urbanairship/actions/OpenRichPushInboxAction;Landroid/content/Context;)V

    goto :goto_0
.end method
