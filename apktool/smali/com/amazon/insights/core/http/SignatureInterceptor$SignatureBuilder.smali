.class final Lcom/amazon/insights/core/http/SignatureInterceptor$SignatureBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SignatureBuilder"


# instance fields
.field private body:[B

.field private fullPath:Ljava/lang/String;

.field private httpVerb:Ljava/lang/String;

.field private isBinaryRequest:Z

.field private privateKey:Ljava/lang/String;

.field private timestamp:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/insights/core/http/SignatureInterceptor$SignatureBuilder;->isBinaryRequest:Z

    return-void
.end method

.method private createHash()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 159
    const-string v1, ""

    .line 161
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/insights/core/http/SignatureInterceptor$SignatureBuilder;->isBinaryRequest:Z

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/insights/core/http/SignatureInterceptor$SignatureBuilder;->body:[B

    invoke-static {v2}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/insights/core/http/SignatureInterceptor$SignatureBuilder;->httpVerb:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/insights/core/http/SignatureInterceptor$SignatureBuilder;->fullPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/insights/core/http/SignatureInterceptor$SignatureBuilder;->timestamp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/insights/core/http/SignatureInterceptor$SignatureBuilder;->privateKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 171
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 172
    return-object v0

    .line 164
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/insights/core/http/SignatureInterceptor$SignatureBuilder;->body:[B

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public createSignature()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/insights/core/http/SignatureBuilderException;
        }
    .end annotation

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 146
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/insights/core/http/SignatureInterceptor$SignatureBuilder;->createHash()[B

    move-result-object v1

    .line 147
    if-eqz v1, :cond_0

    .line 148
    new-instance v0, Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 155
    :cond_0
    return-object v0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    new-instance v1, Lcom/amazon/insights/core/http/SignatureBuilderException;

    const-string v2, "SHA-256 unsupported"

    invoke-direct {v1, v2, v0}, Lcom/amazon/insights/core/http/SignatureBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 152
    :catch_1
    move-exception v0

    .line 153
    new-instance v1, Lcom/amazon/insights/core/http/SignatureBuilderException;

    const-string v2, "UTF-8 encoding unsupported"

    invoke-direct {v1, v2, v0}, Lcom/amazon/insights/core/http/SignatureBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isBinaryRequest(Z)Lcom/amazon/insights/core/http/SignatureInterceptor$SignatureBuilder;
    .locals 0

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/amazon/insights/core/http/SignatureInterceptor$SignatureBuilder;->isBinaryRequest:Z

    .line 128
    return-object p0
.end method

.method public withBody([B)Lcom/amazon/insights/core/http/SignatureInterceptor$SignatureBuilder;
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/amazon/insights/core/http/SignatureInterceptor$SignatureBuilder;->body:[B

    .line 133
    return-object p0
.end method

.method public withFullPath(Ljava/lang/String;)Lcom/amazon/insights/core/http/SignatureInterceptor$SignatureBuilder;
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/amazon/insights/core/http/SignatureInterceptor$SignatureBuilder;->fullPath:Ljava/lang/String;

    .line 118
    return-object p0
.end method

.method public withHttpMethod(Lcom/amazon/insights/core/http/HttpClient$HttpMethod;)Lcom/amazon/insights/core/http/SignatureInterceptor$SignatureBuilder;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p1}, Lcom/amazon/insights/core/http/HttpClient$HttpMethod;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/insights/core/http/SignatureInterceptor$SignatureBuilder;->withHttpVerb(Ljava/lang/String;)Lcom/amazon/insights/core/http/SignatureInterceptor$SignatureBuilder;

    move-result-object v0

    return-object v0
.end method

.method public withHttpVerb(Ljava/lang/String;)Lcom/amazon/insights/core/http/SignatureInterceptor$SignatureBuilder;
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/amazon/insights/core/http/SignatureInterceptor$SignatureBuilder;->httpVerb:Ljava/lang/String;

    .line 113
    return-object p0
.end method

.method public withPrivateKey(Ljava/lang/String;)Lcom/amazon/insights/core/http/SignatureInterceptor$SignatureBuilder;
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/amazon/insights/core/http/SignatureInterceptor$SignatureBuilder;->privateKey:Ljava/lang/String;

    .line 104
    return-object p0
.end method

.method public withTimestamp(Ljava/lang/String;)Lcom/amazon/insights/core/http/SignatureInterceptor$SignatureBuilder;
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/amazon/insights/core/http/SignatureInterceptor$SignatureBuilder;->timestamp:Ljava/lang/String;

    .line 123
    return-object p0
.end method
