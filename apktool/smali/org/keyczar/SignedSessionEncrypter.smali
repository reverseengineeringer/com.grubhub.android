.class public Lorg/keyczar/SignedSessionEncrypter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/keyczar/annotations/Experimental;
.end annotation


# static fields
.field private static final NONCE_SIZE:I = 0x10


# instance fields
.field private final encrypter:Lorg/keyczar/Encrypter;

.field private final session:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/keyczar/SessionMaterial;",
            ">;"
        }
    .end annotation
.end field

.field private final signer:Lorg/keyczar/Signer;


# direct methods
.method public constructor <init>(Lorg/keyczar/Encrypter;Lorg/keyczar/Signer;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/keyczar/SignedSessionEncrypter;->session:Ljava/util/concurrent/atomic/AtomicReference;

    .line 56
    iput-object p1, p0, Lorg/keyczar/SignedSessionEncrypter;->encrypter:Lorg/keyczar/Encrypter;

    .line 57
    iput-object p2, p0, Lorg/keyczar/SignedSessionEncrypter;->signer:Lorg/keyczar/Signer;

    .line 58
    return-void
.end method

.method private buildNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 114
    invoke-static {v0}, Lorg/keyczar/util/Util;->rand([B)V

    .line 115
    invoke-static {v0}, Lorg/keyczar/util/Base64Coder;->encodeWebSafe([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildSessionKey(Lorg/keyczar/keyparams/AesKeyParameters;)Lorg/keyczar/AesKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 106
    sget-object v0, Lorg/keyczar/DefaultKeyType;->AES:Lorg/keyczar/DefaultKeyType;

    invoke-interface {p1}, Lorg/keyczar/keyparams/AesKeyParameters;->getKeySize()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/keyczar/DefaultKeyType;->isAcceptableSize(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "Unsupported key size requested for session"

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    invoke-static {p1}, Lorg/keyczar/AesKey;->generate(Lorg/keyczar/keyparams/AesKeyParameters;)Lorg/keyczar/AesKey;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public encrypt([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lorg/keyczar/SignedSessionEncrypter;->session:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "Session not initialized."

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    iget-object v0, p0, Lorg/keyczar/SignedSessionEncrypter;->session:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/SessionMaterial;

    .line 131
    new-instance v1, Lorg/keyczar/ImportedKeyReader;

    invoke-virtual {v0}, Lorg/keyczar/SessionMaterial;->getKey()Lorg/keyczar/AesKey;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/keyczar/ImportedKeyReader;-><init>(Lorg/keyczar/AesKey;)V

    .line 132
    new-instance v2, Lorg/keyczar/Crypter;

    invoke-direct {v2, v1}, Lorg/keyczar/Crypter;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V

    .line 133
    invoke-virtual {v2, p1}, Lorg/keyczar/Crypter;->encrypt([B)[B

    move-result-object v1

    .line 137
    iget-object v2, p0, Lorg/keyczar/SignedSessionEncrypter;->signer:Lorg/keyczar/Signer;

    invoke-virtual {v0}, Lorg/keyczar/SessionMaterial;->getNonce()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/keyczar/util/Base64Coder;->decodeWebSafe(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/keyczar/Signer;->attachedSign([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public newSession()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 67
    sget-object v0, Lorg/keyczar/DefaultKeyType;->AES:Lorg/keyczar/DefaultKeyType;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/keyczar/DefaultKeyType;->applyDefaultParameters(Lorg/keyczar/keyparams/KeyParameters;)Lorg/keyczar/keyparams/KeyParameters;

    move-result-object v0

    check-cast v0, Lorg/keyczar/keyparams/AesKeyParameters;

    invoke-virtual {p0, v0}, Lorg/keyczar/SignedSessionEncrypter;->newSession(Lorg/keyczar/keyparams/AesKeyParameters;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public newSession(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lorg/keyczar/SignedSessionEncrypter$1;

    invoke-direct {v0, p0, p1}, Lorg/keyczar/SignedSessionEncrypter$1;-><init>(Lorg/keyczar/SignedSessionEncrypter;I)V

    .line 93
    new-instance v1, Lorg/keyczar/SessionMaterial;

    invoke-direct {p0, v0}, Lorg/keyczar/SignedSessionEncrypter;->buildSessionKey(Lorg/keyczar/keyparams/AesKeyParameters;)Lorg/keyczar/AesKey;

    move-result-object v0

    invoke-direct {p0}, Lorg/keyczar/SignedSessionEncrypter;->buildNonce()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/keyczar/SessionMaterial;-><init>(Lorg/keyczar/AesKey;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lorg/keyczar/SignedSessionEncrypter;->session:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lorg/keyczar/SignedSessionEncrypter;->encrypter:Lorg/keyczar/Encrypter;

    invoke-virtual {v1}, Lorg/keyczar/SessionMaterial;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/keyczar/Encrypter;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public newSession(Lorg/keyczar/keyparams/AesKeyParameters;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Lorg/keyczar/SessionMaterial;

    invoke-direct {p0, p1}, Lorg/keyczar/SignedSessionEncrypter;->buildSessionKey(Lorg/keyczar/keyparams/AesKeyParameters;)Lorg/keyczar/AesKey;

    move-result-object v1

    invoke-direct {p0}, Lorg/keyczar/SignedSessionEncrypter;->buildNonce()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/keyczar/SessionMaterial;-><init>(Lorg/keyczar/AesKey;Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lorg/keyczar/SignedSessionEncrypter;->session:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 102
    iget-object v1, p0, Lorg/keyczar/SignedSessionEncrypter;->encrypter:Lorg/keyczar/Encrypter;

    invoke-virtual {v0}, Lorg/keyczar/SessionMaterial;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/keyczar/Encrypter;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
