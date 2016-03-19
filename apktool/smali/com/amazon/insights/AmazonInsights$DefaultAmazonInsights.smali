.class final Lcom/amazon/insights/AmazonInsights$DefaultAmazonInsights;
.super Lcom/amazon/insights/AmazonInsights;
.source "SourceFile"


# instance fields
.field private final abClient:Lcom/amazon/insights/ABTestClient;

.field private final context:Lcom/amazon/insights/core/InsightsContext;

.field private final crashReporter:Lcom/amazon/insights/core/crash/CrashReporter;

.field private final eventClient:Lcom/amazon/insights/event/InternalEventClient;

.field private final sessionClient:Lcom/amazon/insights/session/InternalSessionClient;


# direct methods
.method constructor <init>(Lcom/amazon/insights/core/InsightsContext;Lcom/amazon/insights/InsightsOptions;Lcom/amazon/insights/InsightsCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/insights/core/InsightsContext;",
            "Lcom/amazon/insights/InsightsOptions;",
            "Lcom/amazon/insights/InsightsCallback",
            "<",
            "Lcom/amazon/insights/AmazonInsights;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/insights/impl/InitializationException;
        }
    .end annotation

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/amazon/insights/AmazonInsights;-><init>()V

    .line 365
    const-string v0, "The InsightsContext provided must not be null"

    invoke-static {p1, v0}, Lcom/amazon/insights/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    :try_start_0
    invoke-static {}, Lcom/amazon/insights/core/log/Logger;->tryInitialize()V

    .line 369
    new-instance v0, Lcom/amazon/insights/core/crash/CrashReporter;

    const-class v1, Lcom/amazon/insights/AmazonInsights;

    invoke-direct {v0, v1}, Lcom/amazon/insights/core/crash/CrashReporter;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/amazon/insights/AmazonInsights$DefaultAmazonInsights;->crashReporter:Lcom/amazon/insights/core/crash/CrashReporter;

    .line 370
    invoke-static {p1}, Lcom/amazon/insights/core/crash/ers/ERSClient;->newInstance(Lcom/amazon/insights/core/InsightsContext;)Lcom/amazon/insights/core/crash/ers/ERSClient;

    move-result-object v0

    .line 371
    iget-object v1, p0, Lcom/amazon/insights/AmazonInsights$DefaultAmazonInsights;->crashReporter:Lcom/amazon/insights/core/crash/CrashReporter;

    new-instance v2, Lcom/amazon/insights/core/crash/ers/ERSCrashAppender;

    invoke-direct {v2, p1, v0}, Lcom/amazon/insights/core/crash/ers/ERSCrashAppender;-><init>(Lcom/amazon/insights/core/InsightsContext;Lcom/amazon/insights/core/crash/ers/ERSClient;)V

    invoke-virtual {v1, v2}, Lcom/amazon/insights/core/crash/CrashReporter;->attachAppender(Lcom/amazon/insights/core/crash/CrashAppender;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :try_start_1
    # getter for: Lcom/amazon/insights/AmazonInsights;->encodingValidator:Lcom/amazon/insights/validate/EncodingValidator;
    invoke-static {}, Lcom/amazon/insights/AmazonInsights;->access$100()Lcom/amazon/insights/validate/EncodingValidator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/insights/validate/EncodingValidator;->validate()V

    .line 379
    # getter for: Lcom/amazon/insights/AmazonInsights;->sha256Validator:Lcom/amazon/insights/validate/SHA256Validator;
    invoke-static {}, Lcom/amazon/insights/AmazonInsights;->access$200()Lcom/amazon/insights/validate/SHA256Validator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/insights/validate/SHA256Validator;->validate()V

    .line 380
    # getter for: Lcom/amazon/insights/AmazonInsights;->aesEncryptionValidator:Lcom/amazon/insights/validate/EncryptionValidator;
    invoke-static {}, Lcom/amazon/insights/AmazonInsights;->access$300()Lcom/amazon/insights/validate/EncryptionValidator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/insights/validate/EncryptionValidator;->validate()V

    .line 381
    # getter for: Lcom/amazon/insights/AmazonInsights;->fileManagerValidator:Lcom/amazon/insights/validate/FileManagerValidator;
    invoke-static {}, Lcom/amazon/insights/AmazonInsights;->access$400()Lcom/amazon/insights/validate/FileManagerValidator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/insights/validate/FileManagerValidator;->validate(Lcom/amazon/insights/core/InsightsContext;)V

    .line 383
    iput-object p1, p0, Lcom/amazon/insights/AmazonInsights$DefaultAmazonInsights;->context:Lcom/amazon/insights/core/InsightsContext;

    .line 385
    if-eqz p2, :cond_1

    .line 386
    invoke-interface {p2}, Lcom/amazon/insights/InsightsOptions;->getAllowEventCollection()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/amazon/insights/event/DefaultEventClient;->newInstance(Lcom/amazon/insights/core/InsightsContext;Z)Lcom/amazon/insights/event/DefaultEventClient;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/insights/AmazonInsights$DefaultAmazonInsights;->eventClient:Lcom/amazon/insights/event/InternalEventClient;

    .line 391
    :goto_0
    iget-object v0, p0, Lcom/amazon/insights/AmazonInsights$DefaultAmazonInsights;->eventClient:Lcom/amazon/insights/event/InternalEventClient;

    invoke-static {p1, v0}, Lcom/amazon/insights/session/client/DefaultSessionClient;->newInstance(Lcom/amazon/insights/core/InsightsContext;Lcom/amazon/insights/event/InternalEventClient;)Lcom/amazon/insights/session/client/DefaultSessionClient;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/insights/AmazonInsights$DefaultAmazonInsights;->sessionClient:Lcom/amazon/insights/session/InternalSessionClient;

    .line 392
    invoke-interface {p1}, Lcom/amazon/insights/core/InsightsContext;->getHttpClient()Lcom/amazon/insights/core/http/HttpClient;

    move-result-object v0

    new-instance v1, Lcom/amazon/insights/core/http/RequestTimingInterceptor;

    invoke-interface {p1}, Lcom/amazon/insights/core/InsightsContext;->getSystem()Lcom/amazon/insights/core/system/System;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/insights/core/system/System;->getConnectivity()Lcom/amazon/insights/core/system/Connectivity;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/insights/AmazonInsights$DefaultAmazonInsights;->eventClient:Lcom/amazon/insights/event/InternalEventClient;

    invoke-direct {v1, v2, v3}, Lcom/amazon/insights/core/http/RequestTimingInterceptor;-><init>(Lcom/amazon/insights/core/system/Connectivity;Lcom/amazon/insights/event/InternalEventClient;)V

    invoke-interface {v0, v1}, Lcom/amazon/insights/core/http/HttpClient;->addInterceptor(Lcom/amazon/insights/core/http/HttpClient$Interceptor;)V

    .line 393
    iget-object v0, p0, Lcom/amazon/insights/AmazonInsights$DefaultAmazonInsights;->eventClient:Lcom/amazon/insights/event/InternalEventClient;

    invoke-static {p1, v0}, Lcom/amazon/insights/abtest/DefaultABTestClient;->newInstance(Lcom/amazon/insights/core/InsightsContext;Lcom/amazon/insights/event/InternalEventClient;)Lcom/amazon/insights/abtest/DefaultABTestClient;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/insights/AmazonInsights$DefaultAmazonInsights;->abClient:Lcom/amazon/insights/ABTestClient;

    .line 395
    if-eqz p3, :cond_0

    .line 396
    invoke-virtual {p3, p0}, Lcom/amazon/insights/InsightsCallback;->onComplete(Ljava/lang/Object;)V

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/amazon/insights/AmazonInsights$DefaultAmazonInsights;->sessionClient:Lcom/amazon/insights/session/InternalSessionClient;

    invoke-interface {v0}, Lcom/amazon/insights/session/InternalSessionClient;->startSession()V

    .line 400
    invoke-interface {p1}, Lcom/amazon/insights/core/InsightsContext;->synchronize()V

    .line 402
    # getter for: Lcom/amazon/insights/AmazonInsights;->logger:Lcom/amazon/insights/core/log/Logger;
    invoke-static {}, Lcom/amazon/insights/AmazonInsights;->access$000()Lcom/amazon/insights/core/log/Logger;

    move-result-object v0

    const-string v1, "Amazon Insights SDK(%s) initialization successfully completed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "2.1.26.0"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->devi(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 412
    return-void

    .line 372
    :catch_0
    move-exception v0

    .line 373
    # getter for: Lcom/amazon/insights/AmazonInsights;->logger:Lcom/amazon/insights/core/log/Logger;
    invoke-static {}, Lcom/amazon/insights/AmazonInsights;->access$000()Lcom/amazon/insights/core/log/Logger;

    move-result-object v1

    const-string v2, "Cannot initialize Logging System"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/insights/core/log/Logger;->deve(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 374
    new-instance v1, Lcom/amazon/insights/impl/InitializationException;

    const-string v2, "Cannot initialize Logging System"

    invoke-direct {v1, v2, v0}, Lcom/amazon/insights/impl/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 388
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/amazon/insights/AmazonInsights$DefaultAmazonInsights;->newDefaultOptions()Lcom/amazon/insights/InsightsOptions;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/insights/InsightsOptions;->getAllowEventCollection()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/amazon/insights/event/DefaultEventClient;->newInstance(Lcom/amazon/insights/core/InsightsContext;Z)Lcom/amazon/insights/event/DefaultEventClient;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/insights/AmazonInsights$DefaultAmazonInsights;->eventClient:Lcom/amazon/insights/event/InternalEventClient;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 403
    :catch_1
    move-exception v0

    .line 405
    :try_start_3
    iget-object v1, p0, Lcom/amazon/insights/AmazonInsights$DefaultAmazonInsights;->crashReporter:Lcom/amazon/insights/core/crash/CrashReporter;

    const-string v2, "Failed initialization of Insights client"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/insights/core/crash/CrashReporter;->report(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 409
    :goto_1
    # getter for: Lcom/amazon/insights/AmazonInsights;->logger:Lcom/amazon/insights/core/log/Logger;
    invoke-static {}, Lcom/amazon/insights/AmazonInsights;->access$000()Lcom/amazon/insights/core/log/Logger;

    move-result-object v1

    const-string v2, "Cannot initialize Amazon Insights SDK"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/insights/core/log/Logger;->deve(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 410
    new-instance v1, Lcom/amazon/insights/impl/InitializationException;

    const-string v2, "Could not initialize Insights SDK"

    invoke-direct {v1, v2, v0}, Lcom/amazon/insights/impl/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 406
    :catch_2
    move-exception v1

    .line 407
    # getter for: Lcom/amazon/insights/AmazonInsights;->logger:Lcom/amazon/insights/core/log/Logger;
    invoke-static {}, Lcom/amazon/insights/AmazonInsights;->access$000()Lcom/amazon/insights/core/log/Logger;

    move-result-object v2

    const-string v3, "Error occurred while trying to report Initialization Error"

    invoke-virtual {v2, v3, v1}, Lcom/amazon/insights/core/log/Logger;->deve(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public getABTestClient()Lcom/amazon/insights/ABTestClient;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/amazon/insights/AmazonInsights$DefaultAmazonInsights;->abClient:Lcom/amazon/insights/ABTestClient;

    return-object v0
.end method

.method public getEventClient()Lcom/amazon/insights/EventClient;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/amazon/insights/AmazonInsights$DefaultAmazonInsights;->eventClient:Lcom/amazon/insights/event/InternalEventClient;

    return-object v0
.end method

.method public getSessionClient()Lcom/amazon/insights/SessionClient;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/amazon/insights/AmazonInsights$DefaultAmazonInsights;->sessionClient:Lcom/amazon/insights/session/InternalSessionClient;

    return-object v0
.end method

.method public getUserProfile()Lcom/amazon/insights/UserProfile;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/amazon/insights/AmazonInsights$DefaultAmazonInsights;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v0}, Lcom/amazon/insights/core/InsightsContext;->getUserProfile()Lcom/amazon/insights/UserProfile;

    move-result-object v0

    return-object v0
.end method
