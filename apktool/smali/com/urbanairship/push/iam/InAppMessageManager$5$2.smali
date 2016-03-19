.class Lcom/urbanairship/push/iam/InAppMessageManager$5$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/push/iam/InAppMessageManager$5;->onActivityStopped(Landroid/app/Activity;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/push/iam/InAppMessageManager$5;


# direct methods
.method constructor <init>(Lcom/urbanairship/push/iam/InAppMessageManager$5;)V
    .locals 0

    .prologue
    .line 681
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessageManager$5$2;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 684
    # getter for: Lcom/urbanairship/push/iam/InAppMessageManager;->activityCount:I
    invoke-static {}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$900()I

    move-result v0

    if-nez v0, :cond_0

    .line 685
    const/4 v0, 0x0

    # setter for: Lcom/urbanairship/push/iam/InAppMessageManager;->isForeground:Z
    invoke-static {v0}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$1002(Z)Z

    .line 687
    :cond_0
    return-void
.end method
