.class Lcom/urbanairship/actions/LandingPageActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/actions/LandingPageActivity;->loadLandingPage(J)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/actions/LandingPageActivity;


# direct methods
.method constructor <init>(Lcom/urbanairship/actions/LandingPageActivity;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/urbanairship/actions/LandingPageActivity$3;->this$0:Lcom/urbanairship/actions/LandingPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 359
    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity$3;->this$0:Lcom/urbanairship/actions/LandingPageActivity;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/urbanairship/actions/LandingPageActivity;->loadLandingPage(J)V

    .line 360
    return-void
.end method
