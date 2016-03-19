.class public Lorg/keyczar/interop/operations/SignedSessionOperation;
.super Lorg/keyczar/interop/operations/Operation;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lorg/keyczar/interop/operations/SignedSessionOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/keyczar/interop/operations/SignedSessionOperation;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lorg/keyczar/interop/operations/Operation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method public formatOutput([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public generate(Ljava/lang/String;Ljava/util/Map;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 28
    new-instance v2, Lorg/keyczar/Encrypter;

    const-string v0, "cryptedKeySet"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "pubKey"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lorg/keyczar/interop/operations/SignedSessionOperation;->getReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/keyczar/interfaces/KeyczarReader;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/keyczar/Encrypter;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V

    .line 30
    new-instance v3, Lorg/keyczar/Signer;

    const-string v0, "signer"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "cryptedKeySet"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {p0, v0, v1, v4}, Lorg/keyczar/interop/operations/SignedSessionOperation;->getReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/keyczar/interfaces/KeyczarReader;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/keyczar/Signer;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V

    .line 32
    new-instance v0, Lorg/keyczar/SignedSessionEncrypter;

    invoke-direct {v0, v2, v3}, Lorg/keyczar/SignedSessionEncrypter;-><init>(Lorg/keyczar/Encrypter;Lorg/keyczar/Signer;)V

    .line 33
    invoke-virtual {v0}, Lorg/keyczar/SignedSessionEncrypter;->newSession()Ljava/lang/String;

    move-result-object v1

    .line 34
    iget-object v2, p0, Lorg/keyczar/interop/operations/SignedSessionOperation;->testData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/keyczar/SignedSessionEncrypter;->encrypt([B)[B

    move-result-object v0

    .line 36
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 37
    new-instance v3, Lorg/keyczar/interop/operations/SignedSessionOperation$SignedSessionOutput;

    invoke-direct {v3, v0, v1}, Lorg/keyczar/interop/operations/SignedSessionOperation$SignedSessionOutput;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public test(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 46
    invoke-virtual {p0, p1}, Lorg/keyczar/interop/operations/SignedSessionOperation;->readOutput(Ljava/util/Map;)[B

    move-result-object v3

    .line 47
    const-string v0, "sessionMaterial"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    new-instance v4, Lorg/keyczar/Crypter;

    const-string v1, "cryptedKeySet"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "pubKey"

    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, p2, v1, v2}, Lorg/keyczar/interop/operations/SignedSessionOperation;->getReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/keyczar/interfaces/KeyczarReader;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/keyczar/Crypter;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V

    .line 51
    new-instance v5, Lorg/keyczar/Verifier;

    const-string v1, "signer"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "cryptedKeySet"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {p0, v1, v2, v6}, Lorg/keyczar/interop/operations/SignedSessionOperation;->getReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/keyczar/interfaces/KeyczarReader;

    move-result-object v1

    invoke-direct {v5, v1}, Lorg/keyczar/Verifier;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V

    .line 53
    new-instance v1, Lorg/keyczar/SignedSessionDecrypter;

    invoke-direct {v1, v4, v5, v0}, Lorg/keyczar/SignedSessionDecrypter;-><init>(Lorg/keyczar/Crypter;Lorg/keyczar/Verifier;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1, v3}, Lorg/keyczar/SignedSessionDecrypter;->decrypt([B)[B

    move-result-object v0

    .line 56
    sget-boolean v1, Lorg/keyczar/interop/operations/SignedSessionOperation;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iget-object v0, p0, Lorg/keyczar/interop/operations/SignedSessionOperation;->testData:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 58
    :cond_0
    return-void
.end method
