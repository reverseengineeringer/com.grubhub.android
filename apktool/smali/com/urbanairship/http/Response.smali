.class public Lcom/urbanairship/http/Response;
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

.field private status:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Lcom/urbanairship/http/Response$1;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/urbanairship/http/Response;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/urbanairship/http/Response;I)I
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/urbanairship/http/Response;->status:I

    return p1
.end method

.method static synthetic access$202(Lcom/urbanairship/http/Response;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/urbanairship/http/Response;->responseBody:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/urbanairship/http/Response;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/urbanairship/http/Response;->responseHeaders:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$402(Lcom/urbanairship/http/Response;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/urbanairship/http/Response;->responseMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/urbanairship/http/Response;J)J
    .locals 1

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/urbanairship/http/Response;->lastModified:J

    return-wide p1
.end method


# virtual methods
.method public getLastModifiedTime()J
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/urbanairship/http/Response;->lastModified:J

    return-wide v0
.end method

.method public getResponseBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/urbanairship/http/Response;->responseBody:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/urbanairship/http/Response;->responseHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/urbanairship/http/Response;->status:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    const-string v1, "Response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v1, "ResponseBody: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v1, p0, Lcom/urbanairship/http/Response;->responseBody:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/urbanairship/http/Response;->responseBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_0
    const-string v1, " ResponseHeaders: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v1, p0, Lcom/urbanairship/http/Response;->responseHeaders:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/urbanairship/http/Response;->responseHeaders:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    :cond_1
    const-string v1, " ResponseMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v1, p0, Lcom/urbanairship/http/Response;->responseMessage:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 73
    iget-object v1, p0, Lcom/urbanairship/http/Response;->responseMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_2
    const-string v1, " Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/urbanairship/http/Response;->status:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
