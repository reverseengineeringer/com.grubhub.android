.class public abstract Lorg/keyczar/interop/operations/Operation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final keyPath:Ljava/lang/String;

.field public final testData:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/keyczar/interop/operations/Operation;->keyPath:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lorg/keyczar/interop/operations/Operation;->testData:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public static getOperationByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/keyczar/interop/operations/Operation;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 46
    const-string v0, "unversioned"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Lorg/keyczar/interop/operations/UnversionedSignOperation;

    invoke-direct {v0, p1, p2}, Lorg/keyczar/interop/operations/UnversionedSignOperation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :goto_0
    return-object v0

    .line 48
    :cond_0
    const-string v0, "signedSession"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    new-instance v0, Lorg/keyczar/interop/operations/SignedSessionOperation;

    invoke-direct {v0, p1, p2}, Lorg/keyczar/interop/operations/SignedSessionOperation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_1
    const-string v0, "attached"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    new-instance v0, Lorg/keyczar/interop/operations/AttachedSignOperation;

    invoke-direct {v0, p1, p2}, Lorg/keyczar/interop/operations/AttachedSignOperation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_2
    const-string v0, "sign"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    new-instance v0, Lorg/keyczar/interop/operations/SignOperation;

    invoke-direct {v0, p1, p2}, Lorg/keyczar/interop/operations/SignOperation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_3
    const-string v0, "encrypt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 55
    new-instance v0, Lorg/keyczar/interop/operations/EncryptOperation;

    invoke-direct {v0, p1, p2}, Lorg/keyczar/interop/operations/EncryptOperation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_4
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "Operation does not exist"

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public formatOutput([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 162
    new-instance v1, Lorg/keyczar/interop/operations/Operation$Output;

    invoke-direct {v1, p1}, Lorg/keyczar/interop/operations/Operation$Output;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract generate(Ljava/lang/String;Ljava/util/Map;)[B
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
.end method

.method public getKeyPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/keyczar/interop/operations/Operation;->keyPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/keyczar/interfaces/KeyczarReader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    if-eqz p3, :cond_0

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    :cond_0
    new-instance v1, Lorg/keyczar/KeyczarFileReader;

    invoke-virtual {p0, v0}, Lorg/keyczar/interop/operations/Operation;->getKeyPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/keyczar/KeyczarFileReader;-><init>(Ljava/lang/String;)V

    .line 137
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    new-instance v2, Lorg/keyczar/Crypter;

    invoke-virtual {p0, p2}, Lorg/keyczar/interop/operations/Operation;->getKeyPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/keyczar/Crypter;-><init>(Ljava/lang/String;)V

    .line 139
    new-instance v0, Lorg/keyczar/KeyczarEncryptedReader;

    invoke-direct {v0, v1, v2}, Lorg/keyczar/KeyczarEncryptedReader;-><init>(Lorg/keyczar/interfaces/KeyczarReader;Lorg/keyczar/Crypter;)V

    .line 141
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public readOutput(Ljava/util/Map;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/Base64DecodingException;
        }
    .end annotation

    .prologue
    .line 172
    const-string v0, "output"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/keyczar/util/Base64Coder;->decodeWebSafe(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public abstract test(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
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
.end method
