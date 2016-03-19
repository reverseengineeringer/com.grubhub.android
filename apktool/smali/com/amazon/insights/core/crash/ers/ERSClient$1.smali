.class Lcom/amazon/insights/core/crash/ers/ERSClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/insights/core/crash/ers/ERSClient;->submitEvents(Ljava/util/List;)Lcom/amazon/insights/InsightsHandler;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/insights/core/crash/ers/ERSClient;

.field final synthetic val$eventsArray:Lorg/json/JSONArray;

.field final synthetic val$handler:Lcom/amazon/insights/core/DefaultInsightsHandler;


# direct methods
.method constructor <init>(Lcom/amazon/insights/core/crash/ers/ERSClient;Lorg/json/JSONArray;Lcom/amazon/insights/core/DefaultInsightsHandler;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/amazon/insights/core/crash/ers/ERSClient$1;->this$0:Lcom/amazon/insights/core/crash/ers/ERSClient;

    iput-object p2, p0, Lcom/amazon/insights/core/crash/ers/ERSClient$1;->val$eventsArray:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/amazon/insights/core/crash/ers/ERSClient$1;->val$handler:Lcom/amazon/insights/core/DefaultInsightsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/amazon/insights/core/crash/ers/ERSClient$1;->this$0:Lcom/amazon/insights/core/crash/ers/ERSClient;

    # getter for: Lcom/amazon/insights/core/crash/ers/ERSClient;->ersRequestBuilder:Lcom/amazon/insights/delivery/ERSRequestBuilder;
    invoke-static {v0}, Lcom/amazon/insights/core/crash/ers/ERSClient;->access$000(Lcom/amazon/insights/core/crash/ers/ERSClient;)Lcom/amazon/insights/delivery/ERSRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/insights/core/crash/ers/ERSClient$1;->val$eventsArray:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/amazon/insights/delivery/ERSRequestBuilder;->createHttpRequest(Lorg/json/JSONArray;)Lcom/amazon/insights/core/http/HttpClient$Request;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/amazon/insights/core/crash/ers/ERSClient$1;->this$0:Lcom/amazon/insights/core/crash/ers/ERSClient;

    # getter for: Lcom/amazon/insights/core/crash/ers/ERSClient;->httpClient:Lcom/amazon/insights/core/http/HttpClient;
    invoke-static {v1}, Lcom/amazon/insights/core/crash/ers/ERSClient;->access$100(Lcom/amazon/insights/core/crash/ers/ERSClient;)Lcom/amazon/insights/core/http/HttpClient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/amazon/insights/core/http/HttpClient;->execute(Lcom/amazon/insights/core/http/HttpClient$Request;Ljava/lang/Integer;)Lcom/amazon/insights/core/http/HttpClient$Response;

    move-result-object v0

    .line 71
    invoke-interface {v0}, Lcom/amazon/insights/core/http/HttpClient$Response;->getCode()I

    move-result v1

    div-int/lit8 v1, v1, 0x64

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 72
    # getter for: Lcom/amazon/insights/core/crash/ers/ERSClient;->logger:Lcom/amazon/insights/core/log/Logger;
    invoke-static {}, Lcom/amazon/insights/core/crash/ers/ERSClient;->access$200()Lcom/amazon/insights/core/log/Logger;

    move-result-object v1

    const-string v2, "Success from EventService: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0}, Lcom/amazon/insights/core/http/HttpClient$Response;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/insights/core/log/Logger;->d(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/amazon/insights/core/crash/ers/ERSClient$1;->val$handler:Lcom/amazon/insights/core/DefaultInsightsHandler;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/DefaultInsightsHandler;->onComplete(Ljava/lang/Object;)V

    .line 88
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/amazon/insights/core/crash/ers/ERSClient$1;->val$handler:Lcom/amazon/insights/core/DefaultInsightsHandler;

    new-instance v2, Lcom/amazon/insights/core/crash/ers/ERSClient$1$1;

    invoke-direct {v2, p0, v0}, Lcom/amazon/insights/core/crash/ers/ERSClient$1$1;-><init>(Lcom/amazon/insights/core/crash/ers/ERSClient$1;Lcom/amazon/insights/core/http/HttpClient$Response;)V

    invoke-virtual {v1, v2}, Lcom/amazon/insights/core/DefaultInsightsHandler;->onError(Lcom/amazon/insights/error/InsightsError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    # getter for: Lcom/amazon/insights/core/crash/ers/ERSClient;->logger:Lcom/amazon/insights/core/log/Logger;
    invoke-static {}, Lcom/amazon/insights/core/crash/ers/ERSClient;->access$200()Lcom/amazon/insights/core/log/Logger;

    move-result-object v1

    const-string v2, "Unable to send ers request"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    iget-object v1, p0, Lcom/amazon/insights/core/crash/ers/ERSClient$1;->val$handler:Lcom/amazon/insights/core/DefaultInsightsHandler;

    new-instance v2, Lcom/amazon/insights/error/UnexpectedError;

    const-string v3, "Failed to submit events to EventService"

    invoke-direct {v2, v3, v0}, Lcom/amazon/insights/error/UnexpectedError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Lcom/amazon/insights/core/DefaultInsightsHandler;->onError(Lcom/amazon/insights/error/InsightsError;)V

    goto :goto_0
.end method
