.class Lcom/amazon/insights/core/configuration/HttpCachingConfiguration$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->syncConfiguration()V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;


# direct methods
.method constructor <init>(Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration$1;->this$0:Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 294
    const/4 v1, 0x0

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration$1;->this$0:Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;

    # getter for: Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->context:Lcom/amazon/insights/core/InsightsContext;
    invoke-static {v0}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->access$000(Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;)Lcom/amazon/insights/core/InsightsContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/insights/core/InsightsContext;->getSystem()Lcom/amazon/insights/core/system/System;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/insights/core/system/System;->getConnectivity()Lcom/amazon/insights/core/system/Connectivity;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/insights/core/system/Connectivity;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 298
    iget-object v0, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration$1;->this$0:Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;

    invoke-virtual {v0}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->createHttpRequest()Lcom/amazon/insights/core/http/HttpClient$Request;

    move-result-object v3

    .line 301
    if-eqz v3, :cond_4

    .line 306
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 307
    iget-object v0, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration$1;->this$0:Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;

    # getter for: Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->properties:Ljava/util/Map;
    invoke-static {v0}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->access$100(Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;)Ljava/util/Map;

    move-result-object v0

    const-string v4, "configRequestRetries"

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration$1;->this$0:Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;

    # getter for: Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->properties:Ljava/util/Map;
    invoke-static {v0}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->access$100(Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;)Ljava/util/Map;

    move-result-object v0

    const-string v4, "configRequestRetries"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    if-eqz v0, :cond_2

    .line 311
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 318
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration$1;->this$0:Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;

    # invokes: Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->getContext()Lcom/amazon/insights/core/InsightsContext;
    invoke-static {v2}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->access$300(Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;)Lcom/amazon/insights/core/InsightsContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/insights/core/InsightsContext;->getHttpClient()Lcom/amazon/insights/core/http/HttpClient;

    move-result-object v2

    invoke-interface {v2, v3, v0}, Lcom/amazon/insights/core/http/HttpClient;->execute(Lcom/amazon/insights/core/http/HttpClient$Request;Ljava/lang/Integer;)Lcom/amazon/insights/core/http/HttpClient$Response;

    move-result-object v2

    .line 320
    invoke-interface {v2}, Lcom/amazon/insights/core/http/HttpClient$Response;->getCode()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_3

    .line 322
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-interface {v2}, Lcom/amazon/insights/core/http/HttpClient$Response;->getResponse()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 331
    :goto_1
    if-eqz v0, :cond_1

    .line 333
    :try_start_4
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 334
    # getter for: Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->logger:Lcom/amazon/insights/core/log/Logger;
    invoke-static {}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->access$200()Lcom/amazon/insights/core/log/Logger;

    move-result-object v2

    sget-object v3, Lcom/amazon/insights/core/log/Logger$LogLevel;->VERBOSE:Lcom/amazon/insights/core/log/Logger$LogLevel;

    invoke-virtual {v2, v3}, Lcom/amazon/insights/core/log/Logger;->isLoggingEnabled(Lcom/amazon/insights/core/log/Logger$LogLevel;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 335
    # getter for: Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->logger:Lcom/amazon/insights/core/log/Logger;
    invoke-static {}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->access$200()Lcom/amazon/insights/core/log/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppIntelligence config: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/insights/core/log/Logger;->v(Ljava/lang/String;)V

    .line 337
    :cond_0
    iget-object v2, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration$1;->this$0:Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;

    # invokes: Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->getContext()Lcom/amazon/insights/core/InsightsContext;
    invoke-static {v2}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->access$300(Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;)Lcom/amazon/insights/core/InsightsContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/insights/core/InsightsContext;->getSystem()Lcom/amazon/insights/core/system/System;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/insights/core/system/System;->getPreferences()Lcom/amazon/insights/core/system/Preferences;

    move-result-object v2

    .line 338
    const-string v3, "configuration"

    invoke-interface {v2, v3, v1}, Lcom/amazon/insights/core/system/Preferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v1, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration$1;->this$0:Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;

    # invokes: Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->updateMappings(Lorg/json/JSONObject;)V
    invoke-static {v1, v0}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->access$400(Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;Lorg/json/JSONObject;)V

    .line 348
    :cond_1
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 349
    iget-object v2, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration$1;->this$0:Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;

    invoke-virtual {v2, v0, v1}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->setLastSync(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 355
    iget-object v0, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration$1;->this$0:Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;

    # invokes: Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->getIsUpdateInProgress()Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->access$500(Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 357
    :goto_3
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 313
    :try_start_5
    # getter for: Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->logger:Lcom/amazon/insights/core/log/Logger;
    invoke-static {}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->access$200()Lcom/amazon/insights/core/log/Logger;

    move-result-object v4

    const-string v5, "Could not get the http request retry value"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    move-object v0, v2

    goto/16 :goto_0

    .line 323
    :catch_1
    move-exception v0

    .line 324
    # getter for: Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->logger:Lcom/amazon/insights/core/log/Logger;
    invoke-static {}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->access$200()Lcom/amazon/insights/core/log/Logger;

    move-result-object v2

    const-string v3, "error parsing service response"

    invoke-virtual {v2, v3, v0}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 325
    goto :goto_1

    .line 327
    :cond_3
    # getter for: Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->logger:Lcom/amazon/insights/core/log/Logger;
    invoke-static {}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->access$200()Lcom/amazon/insights/core/log/Logger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "service error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Lcom/amazon/insights/core/http/HttpClient$Response;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Lcom/amazon/insights/core/http/HttpClient$Response;->getCode()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;)V

    :cond_4
    move-object v0, v1

    goto/16 :goto_1

    .line 344
    :cond_5
    # getter for: Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->logger:Lcom/amazon/insights/core/log/Logger;
    invoke-static {}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->access$200()Lcom/amazon/insights/core/log/Logger;

    move-result-object v0

    const-string v1, "Device not connected to sync config"

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->v(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 350
    :catch_2
    move-exception v0

    .line 352
    :try_start_6
    # getter for: Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->logger:Lcom/amazon/insights/core/log/Logger;
    invoke-static {}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->access$200()Lcom/amazon/insights/core/log/Logger;

    move-result-object v1

    const-string v2, "There was an error while attempting to sync the configuration"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 355
    iget-object v0, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration$1;->this$0:Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;

    # invokes: Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->getIsUpdateInProgress()Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->access$500(Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_3

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration$1;->this$0:Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;

    # invokes: Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->getIsUpdateInProgress()Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->access$500(Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method
