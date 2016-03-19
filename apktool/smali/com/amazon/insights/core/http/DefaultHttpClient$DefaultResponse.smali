.class public Lcom/amazon/insights/core/http/DefaultHttpClient$DefaultResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/insights/core/http/HttpClient$Response;


# instance fields
.field protected code:I

.field protected headersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected message:Ljava/lang/String;

.field protected originatingRequest:Lcom/amazon/insights/core/http/HttpClient$Request;

.field protected requestSize:J

.field protected response:Ljava/lang/String;

.field protected responseSize:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-wide v0, p0, Lcom/amazon/insights/core/http/DefaultHttpClient$DefaultResponse;->requestSize:J

    .line 175
    iput-wide v0, p0, Lcom/amazon/insights/core/http/DefaultHttpClient$DefaultResponse;->responseSize:J

    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/insights/core/http/DefaultHttpClient$DefaultResponse;->headersMap:Ljava/util/Map;

    .line 184
    return-void
.end method

.method static createResponse()Lcom/amazon/insights/core/http/HttpClient$Response;
    .locals 1

    .prologue
    .line 179
    new-instance v0, Lcom/amazon/insights/core/http/DefaultHttpClient$DefaultResponse;

    invoke-direct {v0}, Lcom/amazon/insights/core/http/DefaultHttpClient$DefaultResponse;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/insights/core/http/HttpClient$Response;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/amazon/insights/core/http/DefaultHttpClient$DefaultResponse;->headersMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    return-object p0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/amazon/insights/core/http/DefaultHttpClient$DefaultResponse;->code:I

    return v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 248
    const/4 v2, 0x0

    .line 249
    invoke-static {p1}, Lcom/amazon/insights/core/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/amazon/insights/core/http/DefaultHttpClient$DefaultResponse;->headersMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 251
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 257
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lcom/amazon/insights/core/http/DefaultHttpClient$DefaultResponse;->headersMap:Ljava/util/Map;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/amazon/insights/core/http/DefaultHttpClient$DefaultResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginatingRequest()Lcom/amazon/insights/core/http/HttpClient$Request;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/amazon/insights/core/http/DefaultHttpClient$DefaultResponse;->originatingRequest:Lcom/amazon/insights/core/http/HttpClient$Request;

    return-object v0
.end method

.method public getRequestSize()J
    .locals 2

    .prologue
    .line 226
    iget-wide v0, p0, Lcom/amazon/insights/core/http/DefaultHttpClient$DefaultResponse;->requestSize:J

    return-wide v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/amazon/insights/core/http/DefaultHttpClient$DefaultResponse;->response:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseSize()J
    .locals 2

    .prologue
    .line 237
    iget-wide v0, p0, Lcom/amazon/insights/core/http/DefaultHttpClient$DefaultResponse;->responseSize:J

    return-wide v0
.end method

.method public setCode(I)Lcom/amazon/insights/core/http/HttpClient$Response;
    .locals 0

    .prologue
    .line 193
    iput p1, p0, Lcom/amazon/insights/core/http/DefaultHttpClient$DefaultResponse;->code:I

    .line 194
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/amazon/insights/core/http/HttpClient$Response;
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/amazon/insights/core/http/DefaultHttpClient$DefaultResponse;->message:Ljava/lang/String;

    .line 199
    return-object p0
.end method

.method public setOriginatingRequest(Lcom/amazon/insights/core/http/HttpClient$Request;)Lcom/amazon/insights/core/http/HttpClient$Response;
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/amazon/insights/core/http/DefaultHttpClient$DefaultResponse;->originatingRequest:Lcom/amazon/insights/core/http/HttpClient$Request;

    .line 210
    return-object p0
.end method

.method public setRequestSize(J)Lcom/amazon/insights/core/http/HttpClient$Response;
    .locals 1

    .prologue
    .line 220
    iput-wide p1, p0, Lcom/amazon/insights/core/http/DefaultHttpClient$DefaultResponse;->requestSize:J

    .line 221
    return-object p0
.end method

.method public setResponse(Ljava/lang/String;)Lcom/amazon/insights/core/http/HttpClient$Response;
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/amazon/insights/core/http/DefaultHttpClient$DefaultResponse;->response:Ljava/lang/String;

    .line 204
    return-object p0
.end method

.method public setResponseSize(J)Lcom/amazon/insights/core/http/HttpClient$Response;
    .locals 1

    .prologue
    .line 231
    iput-wide p1, p0, Lcom/amazon/insights/core/http/DefaultHttpClient$DefaultResponse;->responseSize:J

    .line 232
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 274
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\n\t\"code\" : \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/amazon/insights/core/http/DefaultHttpClient$DefaultResponse;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t\"message\" : \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/insights/core/http/DefaultHttpClient$DefaultResponse;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t\"response\" : \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/insights/core/http/DefaultHttpClient$DefaultResponse;->response:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t\"headers\" : {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 279
    iget-object v0, p0, Lcom/amazon/insights/core/http/DefaultHttpClient$DefaultResponse;->headersMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t\t\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\" : \""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 282
    :cond_0
    const-string v0, "\t}\n}\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 283
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
