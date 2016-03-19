.class public Lcom/amazon/insights/delivery/ERSRequestBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final CONTENT_ENCODING_KEY:Ljava/lang/String; = "Content-Encoding"

.field static final DEFAULT_ENDPOINT:Ljava/lang/String; = "https://applab-sdk.amazon.com/1.0"

.field static final ENDPOINT_PATH:Ljava/lang/String; = "%s/applications/%s/events"

.field static final KEY_ENDPOINT:Ljava/lang/String; = "eventRecorderEndpoint"

.field static final UNIQUE_ID_HEADER_KEY:Ljava/lang/String; = "x-amzn-UniqueId"

.field private static final logger:Lcom/amazon/insights/core/log/Logger;


# instance fields
.field private final applicationKey:Ljava/lang/String;

.field private final configuration:Lcom/amazon/insights/core/configuration/Configuration;

.field private final httpClient:Lcom/amazon/insights/core/http/HttpClient;

.field private final uniqueId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/amazon/insights/delivery/ERSRequestBuilder;

    invoke-static {v0}, Lcom/amazon/insights/core/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/amazon/insights/core/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/amazon/insights/delivery/ERSRequestBuilder;->logger:Lcom/amazon/insights/core/log/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/insights/core/http/HttpClient;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/insights/core/configuration/Configuration;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/amazon/insights/delivery/ERSRequestBuilder;->httpClient:Lcom/amazon/insights/core/http/HttpClient;

    .line 45
    iput-object p2, p0, Lcom/amazon/insights/delivery/ERSRequestBuilder;->uniqueId:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/amazon/insights/delivery/ERSRequestBuilder;->applicationKey:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/amazon/insights/delivery/ERSRequestBuilder;->configuration:Lcom/amazon/insights/core/configuration/Configuration;

    .line 48
    return-void
.end method

.method private getEndpointUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/amazon/insights/delivery/ERSRequestBuilder;->configuration:Lcom/amazon/insights/core/configuration/Configuration;

    const-string v1, "eventRecorderEndpoint"

    const-string v2, "https://applab-sdk.amazon.com/1.0"

    invoke-interface {v0, v1, v2}, Lcom/amazon/insights/core/configuration/Configuration;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/amazon/insights/core/InsightsContext;)Lcom/amazon/insights/delivery/ERSRequestBuilder;
    .locals 5

    .prologue
    .line 34
    new-instance v0, Lcom/amazon/insights/delivery/ERSRequestBuilder;

    invoke-interface {p0}, Lcom/amazon/insights/core/InsightsContext;->getHttpClient()Lcom/amazon/insights/core/http/HttpClient;

    move-result-object v1

    invoke-interface {p0}, Lcom/amazon/insights/core/InsightsContext;->getUniqueId()Lcom/amazon/insights/core/idresolver/Id;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/insights/core/idresolver/Id;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/amazon/insights/core/InsightsContext;->getCredentials()Lcom/amazon/insights/InsightsCredentials;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/insights/InsightsCredentials;->getApplicationKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lcom/amazon/insights/core/InsightsContext;->getConfiguration()Lcom/amazon/insights/core/configuration/Configuration;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/insights/delivery/ERSRequestBuilder;-><init>(Lcom/amazon/insights/core/http/HttpClient;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/insights/core/configuration/Configuration;)V

    return-object v0
.end method


# virtual methods
.method public createHttpRequest(Lorg/json/JSONArray;)Lcom/amazon/insights/core/http/HttpClient$Request;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 51
    iget-object v1, p0, Lcom/amazon/insights/delivery/ERSRequestBuilder;->httpClient:Lcom/amazon/insights/core/http/HttpClient;

    invoke-interface {v1}, Lcom/amazon/insights/core/http/HttpClient;->newRequest()Lcom/amazon/insights/core/http/HttpClient$Request;

    move-result-object v1

    const-string v2, "%s/applications/%s/events"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/amazon/insights/delivery/ERSRequestBuilder;->getEndpointUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/amazon/insights/delivery/ERSRequestBuilder;->applicationKey:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/insights/core/http/HttpClient$Request;->setUrl(Ljava/lang/String;)Lcom/amazon/insights/core/http/HttpClient$Request;

    move-result-object v1

    const-string v2, "x-amzn-UniqueId"

    iget-object v3, p0, Lcom/amazon/insights/delivery/ERSRequestBuilder;->uniqueId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/amazon/insights/core/http/HttpClient$Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/insights/core/http/HttpClient$Request;

    move-result-object v1

    sget-object v2, Lcom/amazon/insights/core/http/HttpClient$HttpMethod;->POST:Lcom/amazon/insights/core/http/HttpClient$HttpMethod;

    invoke-interface {v1, v2}, Lcom/amazon/insights/core/http/HttpClient$Request;->setMethod(Lcom/amazon/insights/core/http/HttpClient$HttpMethod;)Lcom/amazon/insights/core/http/HttpClient$Request;

    move-result-object v1

    .line 56
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 57
    if-nez v2, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-object v0

    .line 68
    :cond_1
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :try_start_1
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    :try_start_2
    const-string v5, "UTF-8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 71
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 74
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v5

    .line 82
    :goto_1
    if-eqz v4, :cond_2

    .line 83
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 85
    :cond_2
    if-eqz v3, :cond_3

    .line 86
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_2
    move-object v2, v5

    .line 95
    :goto_3
    if-eqz v2, :cond_0

    .line 99
    invoke-interface {v1, v2}, Lcom/amazon/insights/core/http/HttpClient$Request;->setPostBody([B)Lcom/amazon/insights/core/http/HttpClient$Request;

    .line 100
    const-string v0, "Content-Encoding"

    const-string v2, "gzip"

    invoke-interface {v1, v0, v2}, Lcom/amazon/insights/core/http/HttpClient$Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/insights/core/http/HttpClient$Request;

    move-object v0, v1

    .line 102
    goto :goto_0

    .line 75
    :catch_0
    move-exception v2

    .line 76
    :try_start_5
    sget-object v5, Lcom/amazon/insights/delivery/ERSRequestBuilder;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v6, "Error creating compressed String for ERS Request"

    invoke-virtual {v5, v6, v2}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v5, v0

    goto :goto_1

    .line 88
    :catch_1
    move-exception v2

    .line 89
    sget-object v3, Lcom/amazon/insights/delivery/ERSRequestBuilder;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v4, "Errror closing compression streams"

    invoke-virtual {v3, v4, v2}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 78
    :catch_2
    move-exception v2

    move-object v3, v0

    move-object v4, v0

    .line 79
    :goto_4
    :try_start_6
    sget-object v5, Lcom/amazon/insights/delivery/ERSRequestBuilder;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v6, "Error attempting to compress request contents"

    invoke-virtual {v5, v6, v2}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 82
    if-eqz v4, :cond_4

    .line 83
    :try_start_7
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 85
    :cond_4
    if-eqz v3, :cond_5

    .line 86
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_5
    :goto_5
    move-object v2, v0

    .line 93
    goto :goto_3

    .line 88
    :catch_3
    move-exception v2

    .line 89
    sget-object v3, Lcom/amazon/insights/delivery/ERSRequestBuilder;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v4, "Errror closing compression streams"

    invoke-virtual {v3, v4, v2}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 81
    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v4, v0

    move-object v0, v1

    .line 82
    :goto_6
    if-eqz v4, :cond_6

    .line 83
    :try_start_8
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 85
    :cond_6
    if-eqz v3, :cond_7

    .line 86
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 92
    :cond_7
    :goto_7
    throw v0

    .line 88
    :catch_4
    move-exception v1

    .line 89
    sget-object v2, Lcom/amazon/insights/delivery/ERSRequestBuilder;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v3, "Errror closing compression streams"

    invoke-virtual {v2, v3, v1}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 81
    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    .line 78
    :catch_5
    move-exception v2

    move-object v3, v0

    goto :goto_4

    :catch_6
    move-exception v2

    goto :goto_4
.end method
