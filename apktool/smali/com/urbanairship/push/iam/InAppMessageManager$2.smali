.class Lcom/urbanairship/push/iam/InAppMessageManager$2;
.super Lcom/urbanairship/push/iam/InAppMessageFragmentFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/push/iam/InAppMessageManager;-><init>(Lcom/urbanairship/PreferenceDataStore;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/push/iam/InAppMessageManager;


# direct methods
.method constructor <init>(Lcom/urbanairship/push/iam/InAppMessageManager;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessageManager$2;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    invoke-direct {p0}, Lcom/urbanairship/push/iam/InAppMessageFragmentFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createFragment(Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/push/iam/InAppMessageFragment;
    .locals 1

    .prologue
    .line 156
    new-instance v0, Lcom/urbanairship/push/iam/InAppMessageFragment;

    invoke-direct {v0}, Lcom/urbanairship/push/iam/InAppMessageFragment;-><init>()V

    return-object v0
.end method
