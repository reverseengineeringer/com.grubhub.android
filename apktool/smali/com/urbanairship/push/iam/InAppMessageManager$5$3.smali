.class Lcom/urbanairship/push/iam/InAppMessageManager$5$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/urbanairship/UAirship$OnReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/push/iam/InAppMessageManager$5;->onActivityResumed(Landroid/app/Activity;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/push/iam/InAppMessageManager$5;

.field final synthetic val$weakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/urbanairship/push/iam/InAppMessageManager$5;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .prologue
    .line 696
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessageManager$5$3;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager$5;

    iput-object p2, p0, Lcom/urbanairship/push/iam/InAppMessageManager$5$3;->val$weakReference:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAirshipReady(Lcom/urbanairship/UAirship;)V
    .locals 2

    .prologue
    .line 699
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager$5$3;->val$weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 700
    if-eqz v0, :cond_0

    .line 701
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getInAppMessageManager()Lcom/urbanairship/push/iam/InAppMessageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/push/iam/InAppMessageManager;->onActivityResumed(Landroid/app/Activity;)V

    .line 703
    :cond_0
    return-void
.end method
