.class public Lorg/keyczar/interop/operations/SignOperation;
.super Lorg/keyczar/interop/operations/Operation;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lorg/keyczar/interop/operations/SignOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/keyczar/interop/operations/SignOperation;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lorg/keyczar/interop/operations/Operation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public generate(Ljava/lang/String;Ljava/util/Map;)[B
    .locals 3
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
    .line 21
    new-instance v1, Lorg/keyczar/Signer;

    const-string v0, "cryptedKeySet"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p0, p1, v0, v2}, Lorg/keyczar/interop/operations/SignOperation;->getReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/keyczar/interfaces/KeyczarReader;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/keyczar/Signer;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V

    .line 23
    const-string v0, "encoding"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "encoded"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lorg/keyczar/interop/operations/SignOperation;->testData:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/keyczar/Signer;->sign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 28
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v0, "encoding"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "unencoded"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lorg/keyczar/interop/operations/SignOperation;->testData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/keyczar/Signer;->sign([B)[B

    move-result-object v0

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "Expects encoded or unencoded in parameters"

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public test(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
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
    .line 38
    const-string v0, "class"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "signer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    new-instance v2, Lorg/keyczar/Signer;

    const-string v0, "cryptedKeySet"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "pubKey"

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p2, v0, v1}, Lorg/keyczar/interop/operations/SignOperation;->getReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/keyczar/interfaces/KeyczarReader;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/keyczar/Signer;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V

    .line 41
    const-string v0, "encoding"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "encoded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    sget-boolean v0, Lorg/keyczar/interop/operations/SignOperation;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/keyczar/interop/operations/SignOperation;->testData:Ljava/lang/String;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/keyczar/interop/operations/SignOperation;->readOutput(Ljava/util/Map;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v0, v1}, Lorg/keyczar/Signer;->verify(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 43
    :cond_0
    const-string v0, "encoding"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "unencoded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    sget-boolean v0, Lorg/keyczar/interop/operations/SignOperation;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/keyczar/interop/operations/SignOperation;->testData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/keyczar/interop/operations/SignOperation;->readOutput(Ljava/util/Map;)[B

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/keyczar/Signer;->verify([B[B)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 46
    :cond_1
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "Expects encoded or unencoded in parameters"

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_2
    const-string v0, "class"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "verifier"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 49
    new-instance v2, Lorg/keyczar/Verifier;

    const-string v0, "cryptedKeySet"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "pubKey"

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p2, v0, v1}, Lorg/keyczar/interop/operations/SignOperation;->getReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/keyczar/interfaces/KeyczarReader;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/keyczar/Verifier;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V

    .line 51
    const-string v0, "encoding"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "encoded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52
    sget-boolean v0, Lorg/keyczar/interop/operations/SignOperation;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/keyczar/interop/operations/SignOperation;->testData:Ljava/lang/String;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/keyczar/interop/operations/SignOperation;->readOutput(Ljava/util/Map;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v0, v1}, Lorg/keyczar/Verifier;->verify(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 53
    :cond_3
    const-string v0, "encoding"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "unencoded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 54
    sget-boolean v0, Lorg/keyczar/interop/operations/SignOperation;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/keyczar/interop/operations/SignOperation;->testData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/keyczar/interop/operations/SignOperation;->readOutput(Ljava/util/Map;)[B

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/keyczar/Verifier;->verify([B[B)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 56
    :cond_4
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "Expects encoded or unencoded in parameters"

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_5
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "Expects signer or verifier in parameters"

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_6
    return-void
.end method
