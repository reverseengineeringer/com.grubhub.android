.class Lcom/urbanairship/actions/ShareAction$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/actions/ShareAction;->perform(Lcom/urbanairship/actions/ActionArguments;)Lcom/urbanairship/actions/ActionResult;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/actions/ShareAction;

.field final synthetic val$chooserIntent:Landroid/content/Intent;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/urbanairship/actions/ShareAction;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/urbanairship/actions/ShareAction$2;->this$0:Lcom/urbanairship/actions/ShareAction;

    iput-object p2, p0, Lcom/urbanairship/actions/ShareAction$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/urbanairship/actions/ShareAction$2;->val$chooserIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/urbanairship/actions/ShareAction$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/urbanairship/actions/ShareAction$2;->val$chooserIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 128
    return-void
.end method
