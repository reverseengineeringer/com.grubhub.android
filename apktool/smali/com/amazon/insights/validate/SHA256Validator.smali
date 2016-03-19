.class public Lcom/amazon/insights/validate/SHA256Validator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public validate()V
    .locals 3

    .prologue
    .line 16
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 17
    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEF"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/amazon/insights/impl/InitializationException;

    const-string v1, "SHA-256 algorithm cannot hash bytes"

    invoke-direct {v0, v1}, Lcom/amazon/insights/impl/InitializationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 21
    :catch_0
    move-exception v0

    .line 22
    new-instance v1, Lcom/amazon/insights/impl/InitializationException;

    const-string v2, "No valid SHA-256 implementation found"

    invoke-direct {v1, v2, v0}, Lcom/amazon/insights/impl/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 23
    :catch_1
    move-exception v0

    .line 24
    new-instance v1, Lcom/amazon/insights/impl/InitializationException;

    const-string v2, "UTF-8 encoding is not supported"

    invoke-direct {v1, v2, v0}, Lcom/amazon/insights/impl/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 26
    :cond_0
    return-void
.end method
