.class public Lorg/keyczar/SessionCrypter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/keyczar/annotations/Experimental;
.end annotation


# instance fields
.field private final sessionMaterial:[B

.field private final symmetricCrypter:Lorg/keyczar/Crypter;


# direct methods
.method public constructor <init>(Lorg/keyczar/Crypter;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p1, p2}, Lorg/keyczar/Crypter;->decrypt([B)[B

    move-result-object v0

    .line 81
    invoke-static {v0}, Lorg/keyczar/AesKey;->fromPackedKey([B)Lorg/keyczar/AesKey;

    move-result-object v0

    .line 82
    new-instance v1, Lorg/keyczar/ImportedKeyReader;

    invoke-direct {v1, v0}, Lorg/keyczar/ImportedKeyReader;-><init>(Lorg/keyczar/AesKey;)V

    .line 83
    new-instance v0, Lorg/keyczar/Crypter;

    invoke-direct {v0, v1}, Lorg/keyczar/Crypter;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V

    iput-object v0, p0, Lorg/keyczar/SessionCrypter;->symmetricCrypter:Lorg/keyczar/Crypter;

    .line 84
    iput-object p2, p0, Lorg/keyczar/SessionCrypter;->sessionMaterial:[B

    .line 85
    return-void
.end method

.method public constructor <init>(Lorg/keyczar/Encrypter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Lorg/keyczar/DefaultKeyType;->AES:Lorg/keyczar/DefaultKeyType;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/keyczar/DefaultKeyType;->applyDefaultParameters(Lorg/keyczar/keyparams/KeyParameters;)Lorg/keyczar/keyparams/KeyParameters;

    move-result-object v0

    check-cast v0, Lorg/keyczar/keyparams/AesKeyParameters;

    invoke-static {v0}, Lorg/keyczar/AesKey;->generate(Lorg/keyczar/keyparams/AesKeyParameters;)Lorg/keyczar/AesKey;

    move-result-object v0

    .line 64
    new-instance v1, Lorg/keyczar/ImportedKeyReader;

    invoke-direct {v1, v0}, Lorg/keyczar/ImportedKeyReader;-><init>(Lorg/keyczar/AesKey;)V

    .line 65
    new-instance v2, Lorg/keyczar/Crypter;

    invoke-direct {v2, v1}, Lorg/keyczar/Crypter;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V

    iput-object v2, p0, Lorg/keyczar/SessionCrypter;->symmetricCrypter:Lorg/keyczar/Crypter;

    .line 66
    invoke-virtual {v0}, Lorg/keyczar/AesKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/keyczar/Encrypter;->encrypt([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/keyczar/SessionCrypter;->sessionMaterial:[B

    .line 67
    return-void
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lorg/keyczar/SessionCrypter;->symmetricCrypter:Lorg/keyczar/Crypter;

    invoke-virtual {v0, p1}, Lorg/keyczar/Crypter;->decrypt([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encrypt([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lorg/keyczar/SessionCrypter;->symmetricCrypter:Lorg/keyczar/Crypter;

    invoke-virtual {v0, p1}, Lorg/keyczar/Crypter;->encrypt([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSessionMaterial()[B
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/keyczar/SessionCrypter;->sessionMaterial:[B

    return-object v0
.end method
