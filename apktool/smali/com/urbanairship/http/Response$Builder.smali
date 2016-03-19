.class public Lcom/urbanairship/http/Response$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private lastModified:J

.field private responseBody:Ljava/lang/String;

.field private responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private responseMessage:Ljava/lang/String;

.field private final status:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/urbanairship/http/Response$Builder;->lastModified:J

    .line 134
    iput p1, p0, Lcom/urbanairship/http/Response$Builder;->status:I

    .line 135
    return-void
.end method


# virtual methods
.method public create()Lcom/urbanairship/http/Response;
    .locals 4

    .prologue
    .line 189
    new-instance v0, Lcom/urbanairship/http/Response;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/urbanairship/http/Response;-><init>(Lcom/urbanairship/http/Response$1;)V

    .line 190
    iget v1, p0, Lcom/urbanairship/http/Response$Builder;->status:I

    # setter for: Lcom/urbanairship/http/Response;->status:I
    invoke-static {v0, v1}, Lcom/urbanairship/http/Response;->access$102(Lcom/urbanairship/http/Response;I)I

    .line 191
    iget-object v1, p0, Lcom/urbanairship/http/Response$Builder;->responseBody:Ljava/lang/String;

    # setter for: Lcom/urbanairship/http/Response;->responseBody:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/urbanairship/http/Response;->access$202(Lcom/urbanairship/http/Response;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    iget-object v1, p0, Lcom/urbanairship/http/Response$Builder;->responseHeaders:Ljava/util/Map;

    # setter for: Lcom/urbanairship/http/Response;->responseHeaders:Ljava/util/Map;
    invoke-static {v0, v1}, Lcom/urbanairship/http/Response;->access$302(Lcom/urbanairship/http/Response;Ljava/util/Map;)Ljava/util/Map;

    .line 193
    iget-object v1, p0, Lcom/urbanairship/http/Response$Builder;->responseMessage:Ljava/lang/String;

    # setter for: Lcom/urbanairship/http/Response;->responseMessage:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/urbanairship/http/Response;->access$402(Lcom/urbanairship/http/Response;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    iget-wide v2, p0, Lcom/urbanairship/http/Response$Builder;->lastModified:J

    # setter for: Lcom/urbanairship/http/Response;->lastModified:J
    invoke-static {v0, v2, v3}, Lcom/urbanairship/http/Response;->access$502(Lcom/urbanairship/http/Response;J)J

    .line 196
    return-object v0
.end method

.method public setLastModified(J)Lcom/urbanairship/http/Response$Builder;
    .locals 1

    .prologue
    .line 178
    iput-wide p1, p0, Lcom/urbanairship/http/Response$Builder;->lastModified:J

    .line 179
    return-object p0
.end method

.method public setResponseBody(Ljava/lang/String;)Lcom/urbanairship/http/Response$Builder;
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/urbanairship/http/Response$Builder;->responseBody:Ljava/lang/String;

    .line 157
    return-object p0
.end method

.method public setResponseHeaders(Ljava/util/Map;)Lcom/urbanairship/http/Response$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/urbanairship/http/Response$Builder;"
        }
    .end annotation

    .prologue
    .line 167
    iput-object p1, p0, Lcom/urbanairship/http/Response$Builder;->responseHeaders:Ljava/util/Map;

    .line 168
    return-object p0
.end method

.method public setResponseMessage(Ljava/lang/String;)Lcom/urbanairship/http/Response$Builder;
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/urbanairship/http/Response$Builder;->responseMessage:Ljava/lang/String;

    .line 146
    return-object p0
.end method
