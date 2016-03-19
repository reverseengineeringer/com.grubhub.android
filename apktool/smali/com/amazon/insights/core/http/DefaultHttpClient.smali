.class public Lcom/amazon/insights/core/http/DefaultHttpClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/insights/core/http/HttpClient;


# static fields
.field public static final DATE_HEADER:Ljava/lang/String; = "Date"

.field public static final IO_EXCEPTION_RESPONSE_CODE:I = -0x3e8

.field public static final REQUESTATTEMPTS_HEADER:Ljava/lang/String; = "x-amzn-RequestAttempts"

.field public static final REQUESTTIME_HEADER:Ljava/lang/String; = "x-amzn-RequestTime"

.field public static final SERVERINFO_HEADER:Ljava/lang/String; = "x-amzn-ServerInfo"

.field private static final TAG:Ljava/lang/String; = "DefaultHttpClient"

.field private static final TIME_FORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ssZ"

.field private static final logger:Lcom/amazon/insights/core/log/Logger;


# instance fields
.field private df:Ljava/text/DateFormat;

.field private interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazon/insights/core/http/HttpClient$Interceptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/amazon/insights/core/http/HttpClient;

    invoke-static {v0}, Lcom/amazon/insights/core/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/amazon/insights/core/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/amazon/insights/core/http/DefaultHttpClient;->logger:Lcom/amazon/insights/core/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazon/insights/core/http/DefaultHttpClient;->interceptors:Ljava/util/List;

    .line 292
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-static {v0}, Lcom/amazon/insights/core/util/DateUtil;->createLocaleIndependentDateFormatter(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/insights/core/http/DefaultHttpClient;->df:Ljava/text/DateFormat;

    .line 293
    return-void
.end method

.method private executeHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;I)Lcom/amazon/insights/core/http/HttpClient$Response;
    .locals 12

    .prologue
    .line 433
    invoke-static {}, Lcom/amazon/insights/core/http/DefaultHttpClient$DefaultResponse;->createResponse()Lcom/amazon/insights/core/http/HttpClient$Response;

    move-result-object v4

    .line 434
    invoke-static {}, Lcom/amazon/insights/core/http/HttpUtil;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v3

    .line 435
    const/4 v1, 0x0

    .line 436
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 439
    if-ltz p2, :cond_1

    add-int/lit8 v0, p2, 0x1

    .line 440
    :goto_0
    const/4 v2, 0x1

    .line 441
    :goto_1
    if-gt v2, v0, :cond_5

    .line 443
    :try_start_0
    invoke-interface {v3, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 454
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 455
    const-string v1, "x-amzn-RequestTime"

    sub-long v6, v8, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v1, v3}, Lcom/amazon/insights/core/http/HttpClient$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/insights/core/http/HttpClient$Response;

    .line 456
    const-string v1, "x-amzn-RequestAttempts"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Lcom/amazon/insights/core/http/HttpClient$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/insights/core/http/HttpClient$Response;

    .line 458
    if-eqz v0, :cond_4

    .line 459
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-interface {v4, v1}, Lcom/amazon/insights/core/http/HttpClient$Response;->setCode(I)Lcom/amazon/insights/core/http/HttpClient$Response;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/insights/core/http/HttpClient$Response;->setMessage(Ljava/lang/String;)Lcom/amazon/insights/core/http/HttpClient$Response;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/amazon/insights/core/http/DefaultHttpClient;->calculateRequestSize(Lorg/apache/http/client/methods/HttpUriRequest;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/amazon/insights/core/http/HttpClient$Response;->setRequestSize(J)Lcom/amazon/insights/core/http/HttpClient$Response;

    .line 462
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 463
    const/4 v3, 0x0

    .line 464
    if-eqz v5, :cond_0

    .line 465
    const/4 v2, 0x0

    .line 467
    :try_start_1
    const-string v1, "Content-Encoding"

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 468
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v6, "gzip"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 469
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v1

    .line 473
    :goto_3
    invoke-static {v2}, Lcom/amazon/insights/core/util/StringUtil;->convertStreamToUTF8String(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 476
    invoke-virtual {p0, v0}, Lcom/amazon/insights/core/http/DefaultHttpClient;->calculateResponseSize(Lorg/apache/http/HttpResponse;)J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v8, v1

    add-long/2addr v6, v8

    invoke-interface {v4, v6, v7}, Lcom/amazon/insights/core/http/HttpClient$Response;->setResponseSize(J)Lcom/amazon/insights/core/http/HttpClient$Response;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 487
    if-eqz v2, :cond_0

    .line 489
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    .line 496
    :cond_0
    :goto_4
    if-eqz v3, :cond_4

    .line 497
    invoke-interface {v4, v3}, Lcom/amazon/insights/core/http/HttpClient$Response;->setResponse(Ljava/lang/String;)Lcom/amazon/insights/core/http/HttpClient$Response;

    .line 498
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    .line 499
    if-eqz v1, :cond_4

    array-length v0, v1

    if-lez v0, :cond_4

    .line 500
    const/4 v0, 0x0

    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 501
    aget-object v2, v1, v0

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Lcom/amazon/insights/core/http/HttpClient$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/insights/core/http/HttpClient$Response;

    .line 500
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 439
    :cond_1
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 445
    :catch_0
    move-exception v0

    .line 446
    const/16 v3, 0x190

    invoke-interface {v4, v3}, Lcom/amazon/insights/core/http/HttpClient$Response;->setCode(I)Lcom/amazon/insights/core/http/HttpClient$Response;

    move-result-object v3

    const-string v5, "Issue making request to service, %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/amazon/insights/core/http/HttpClient$Response;->setMessage(Ljava/lang/String;)Lcom/amazon/insights/core/http/HttpClient$Response;

    move-object v0, v1

    .line 447
    goto/16 :goto_2

    .line 448
    :catch_1
    move-exception v5

    .line 449
    add-int/lit8 v2, v2, 0x1

    .line 450
    const/16 v8, -0x3e8

    invoke-interface {v4, v8}, Lcom/amazon/insights/core/http/HttpClient$Response;->setCode(I)Lcom/amazon/insights/core/http/HttpClient$Response;

    move-result-object v8

    const-string v9, "Unable to communicate with service, %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v5}, Lcom/amazon/insights/core/http/HttpClient$Response;->setMessage(Ljava/lang/String;)Lcom/amazon/insights/core/http/HttpClient$Response;

    goto/16 :goto_1

    .line 471
    :cond_2
    :try_start_3
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    goto :goto_3

    .line 477
    :catch_2
    move-exception v1

    .line 478
    const/4 v3, 0x0

    .line 479
    const/16 v5, 0x1f4

    :try_start_4
    invoke-interface {v4, v5}, Lcom/amazon/insights/core/http/HttpClient$Response;->setCode(I)Lcom/amazon/insights/core/http/HttpClient$Response;

    move-result-object v5

    const-string v6, "Issue recieving response from service, %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Lcom/amazon/insights/core/http/HttpClient$Response;->setMessage(Ljava/lang/String;)Lcom/amazon/insights/core/http/HttpClient$Response;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 487
    if-eqz v2, :cond_0

    .line 489
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_4

    .line 490
    :catch_3
    move-exception v1

    goto/16 :goto_4

    .line 480
    :catch_4
    move-exception v1

    .line 481
    const/16 v5, 0x1f4

    :try_start_6
    invoke-interface {v4, v5}, Lcom/amazon/insights/core/http/HttpClient$Response;->setCode(I)Lcom/amazon/insights/core/http/HttpClient$Response;

    move-result-object v5

    const-string v6, "Issue with response from service, %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Lcom/amazon/insights/core/http/HttpClient$Response;->setMessage(Ljava/lang/String;)Lcom/amazon/insights/core/http/HttpClient$Response;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 487
    if-eqz v2, :cond_0

    .line 489
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_4

    .line 490
    :catch_5
    move-exception v1

    goto/16 :goto_4

    .line 482
    :catch_6
    move-exception v1

    .line 483
    const/4 v3, 0x0

    .line 484
    :try_start_8
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 485
    const/16 v5, 0x1f4

    invoke-interface {v4, v5}, Lcom/amazon/insights/core/http/HttpClient$Response;->setCode(I)Lcom/amazon/insights/core/http/HttpClient$Response;

    move-result-object v5

    const-string v6, "Issue with response from service, %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Lcom/amazon/insights/core/http/HttpClient$Response;->setMessage(Ljava/lang/String;)Lcom/amazon/insights/core/http/HttpClient$Response;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 487
    if-eqz v2, :cond_0

    .line 489
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto/16 :goto_4

    .line 490
    :catch_7
    move-exception v1

    goto/16 :goto_4

    .line 487
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    .line 489
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 492
    :cond_3
    :goto_6
    throw v0

    .line 490
    :catch_8
    move-exception v1

    goto/16 :goto_4

    :catch_9
    move-exception v1

    goto :goto_6

    .line 506
    :cond_4
    return-object v4

    :cond_5
    move-object v0, v1

    goto/16 :goto_2
.end method

.method private getCurrentDateTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/amazon/insights/core/http/DefaultHttpClient;->df:Ljava/text/DateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addInterceptor(Lcom/amazon/insights/core/http/HttpClient$Interceptor;)V
    .locals 1

    .prologue
    .line 307
    if-eqz p1, :cond_0

    .line 308
    iget-object v0, p0, Lcom/amazon/insights/core/http/DefaultHttpClient;->interceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_0
    return-void
.end method

.method buildHttpRequest(Lcom/amazon/insights/core/http/HttpClient$Request;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 5

    .prologue
    .line 348
    const-string v0, "buildRequest"

    .line 349
    const/4 v1, 0x0

    .line 350
    sget-object v0, Lcom/amazon/insights/core/http/DefaultHttpClient$1;->$SwitchMap$com$amazon$insights$core$http$HttpClient$HttpMethod:[I

    invoke-interface {p1}, Lcom/amazon/insights/core/http/HttpClient$Request;->getMethod()Lcom/amazon/insights/core/http/HttpClient$HttpMethod;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/insights/core/http/HttpClient$HttpMethod;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    move-object v2, v1

    .line 380
    :goto_0
    if-eqz v2, :cond_3

    .line 381
    invoke-interface {p1}, Lcom/amazon/insights/core/http/HttpClient$Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 382
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 353
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 354
    invoke-interface {p1}, Lcom/amazon/insights/core/http/HttpClient$Request;->getParams()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 355
    const-string v0, "?"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    invoke-interface {p1}, Lcom/amazon/insights/core/http/HttpClient$Request;->getParams()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 357
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_0

    .line 359
    const-string v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 362
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 366
    :cond_1
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/amazon/insights/core/http/HttpClient$Request;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    .line 368
    goto/16 :goto_0

    .line 370
    :pswitch_1
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-interface {p1}, Lcom/amazon/insights/core/http/HttpClient$Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 372
    invoke-interface {p1}, Lcom/amazon/insights/core/http/HttpClient$Request;->getPostBodyBytes()[B

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/amazon/insights/core/http/HttpClient$Request;->getPostBodyBytes()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_2

    .line 373
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-interface {p1}, Lcom/amazon/insights/core/http/HttpClient$Request;->getPostBodyBytes()[B

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    move-object v0, v1

    .line 374
    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_2
    move-object v2, v1

    goto/16 :goto_0

    .line 385
    :cond_3
    return-object v2

    .line 350
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method calculateRequestSize(Lorg/apache/http/client/methods/HttpUriRequest;)J
    .locals 11

    .prologue
    const-wide/16 v2, 0x0

    .line 393
    .line 395
    if-eqz p1, :cond_2

    .line 396
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    add-long v4, v2, v0

    .line 398
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v8

    array-length v9, v8

    const/4 v0, 0x0

    move v10, v0

    move-wide v0, v4

    move v4, v10

    :goto_0
    if-ge v4, v9, :cond_0

    aget-object v5, v8, v4

    .line 399
    invoke-interface {v5}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v0, v6

    .line 400
    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v0, v6

    .line 401
    const-wide/16 v6, 0x2

    add-long/2addr v6, v0

    .line 398
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move-wide v0, v6

    goto :goto_0

    .line 404
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    const-string v5, "post"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 405
    check-cast p1, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentLength()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    add-long/2addr v0, v2

    :cond_1
    :goto_1
    move-wide v2, v0

    .line 411
    :goto_2
    return-wide v2

    .line 408
    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

.method calculateResponseSize(Lorg/apache/http/HttpResponse;)J
    .locals 11

    .prologue
    const-wide/16 v2, 0x0

    .line 415
    .line 417
    if-eqz p1, :cond_0

    .line 418
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    add-long v4, v2, v0

    .line 420
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v8

    array-length v9, v8

    const/4 v0, 0x0

    move v10, v0

    move-wide v0, v4

    move v4, v10

    :goto_0
    if-ge v4, v9, :cond_1

    aget-object v5, v8, v4

    .line 421
    invoke-interface {v5}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v0, v6

    .line 422
    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    int-to-long v6, v5

    add-long/2addr v0, v6

    .line 423
    const-wide/16 v6, 0x2

    add-long/2addr v6, v0

    .line 420
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move-wide v0, v6

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :cond_1
    move-wide v2, v0

    .line 429
    :goto_1
    return-wide v2

    .line 426
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public execute(Lcom/amazon/insights/core/http/HttpClient$Request;Ljava/lang/Integer;)Lcom/amazon/insights/core/http/HttpClient$Response;
    .locals 3

    .prologue
    .line 322
    if-nez p2, :cond_0

    .line 324
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 329
    :cond_0
    const-string v0, "Date"

    invoke-direct {p0}, Lcom/amazon/insights/core/http/DefaultHttpClient;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazon/insights/core/http/HttpClient$Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/insights/core/http/HttpClient$Request;

    .line 331
    iget-object v0, p0, Lcom/amazon/insights/core/http/DefaultHttpClient;->interceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/insights/core/http/HttpClient$Interceptor;

    .line 332
    invoke-interface {v0, p1}, Lcom/amazon/insights/core/http/HttpClient$Interceptor;->before(Lcom/amazon/insights/core/http/HttpClient$Request;)V

    goto :goto_0

    .line 334
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazon/insights/core/http/DefaultHttpClient;->buildHttpRequest(Lcom/amazon/insights/core/http/HttpClient$Request;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 335
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/insights/core/http/DefaultHttpClient;->executeHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;I)Lcom/amazon/insights/core/http/HttpClient$Response;

    move-result-object v1

    .line 336
    if-eqz v1, :cond_2

    .line 337
    invoke-interface {v1, p1}, Lcom/amazon/insights/core/http/HttpClient$Response;->setOriginatingRequest(Lcom/amazon/insights/core/http/HttpClient$Request;)Lcom/amazon/insights/core/http/HttpClient$Response;

    .line 339
    :cond_2
    iget-object v0, p0, Lcom/amazon/insights/core/http/DefaultHttpClient;->interceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/insights/core/http/HttpClient$Interceptor;

    .line 340
    invoke-interface {v0, v1}, Lcom/amazon/insights/core/http/HttpClient$Interceptor;->after(Lcom/amazon/insights/core/http/HttpClient$Response;)V

    goto :goto_1

    .line 342
    :cond_3
    return-object v1
.end method

.method public newRequest()Lcom/amazon/insights/core/http/HttpClient$Request;
    .locals 1

    .prologue
    .line 297
    new-instance v0, Lcom/amazon/insights/core/http/DefaultHttpClient$DefaultRequest;

    invoke-direct {v0}, Lcom/amazon/insights/core/http/DefaultHttpClient$DefaultRequest;-><init>()V

    return-object v0
.end method
