.class Lcom/amazon/insights/impl/DisabledAmazonInsights$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/insights/SessionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/insights/impl/DisabledAmazonInsights;->getSessionClient()Lcom/amazon/insights/SessionClient;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/insights/impl/DisabledAmazonInsights;


# direct methods
.method constructor <init>(Lcom/amazon/insights/impl/DisabledAmazonInsights;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/amazon/insights/impl/DisabledAmazonInsights$4;->this$0:Lcom/amazon/insights/impl/DisabledAmazonInsights;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pauseSession()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public resumeSession()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method
