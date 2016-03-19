.class public Lorg/keyczar/RsaPrivateKey;
.super Lorg/keyczar/KeyczarKey;
.source "SourceFile"

# interfaces
.implements Lorg/keyczar/KeyczarPrivateKey;


# static fields
.field private static final KEY_GEN_ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final SIG_ALGORITHM:Ljava/lang/String; = "SHA1withRSA"


# instance fields
.field private final crtCoefficient:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private jcePrivateKey:Ljava/security/interfaces/RSAPrivateCrtKey;

.field private final primeExponentP:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final primeExponentQ:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final primeP:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final primeQ:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final privateExponent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final publicKey:Lorg/keyczar/RsaPublicKey;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/keyczar/KeyczarKey;-><init>(I)V

    .line 94
    iput-object v1, p0, Lorg/keyczar/RsaPrivateKey;->publicKey:Lorg/keyczar/RsaPublicKey;

    .line 95
    iput-object v1, p0, Lorg/keyczar/RsaPrivateKey;->privateExponent:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lorg/keyczar/RsaPrivateKey;->primeP:Ljava/lang/String;

    .line 97
    iput-object v1, p0, Lorg/keyczar/RsaPrivateKey;->primeQ:Ljava/lang/String;

    .line 98
    iput-object v1, p0, Lorg/keyczar/RsaPrivateKey;->primeExponentP:Ljava/lang/String;

    .line 99
    iput-object v1, p0, Lorg/keyczar/RsaPrivateKey;->primeExponentQ:Ljava/lang/String;

    .line 100
    iput-object v1, p0, Lorg/keyczar/RsaPrivateKey;->crtCoefficient:Ljava/lang/String;

    .line 101
    iput-object v1, p0, Lorg/keyczar/RsaPrivateKey;->jcePrivateKey:Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/RSAPrivateCrtKey;Lorg/keyczar/enums/RsaPadding;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/keyczar/KeyczarKey;-><init>(I)V

    .line 82
    new-instance v0, Lorg/keyczar/RsaPublicKey;

    invoke-direct {v0, p1, p2}, Lorg/keyczar/RsaPublicKey;-><init>(Ljava/security/interfaces/RSAPrivateCrtKey;Lorg/keyczar/enums/RsaPadding;)V

    iput-object v0, p0, Lorg/keyczar/RsaPrivateKey;->publicKey:Lorg/keyczar/RsaPublicKey;

    .line 83
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lorg/keyczar/util/Util;->encodeBigInteger(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/keyczar/RsaPrivateKey;->privateExponent:Ljava/lang/String;

    .line 84
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lorg/keyczar/util/Util;->encodeBigInteger(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/keyczar/RsaPrivateKey;->primeP:Ljava/lang/String;

    .line 85
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lorg/keyczar/util/Util;->encodeBigInteger(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/keyczar/RsaPrivateKey;->primeQ:Ljava/lang/String;

    .line 86
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lorg/keyczar/util/Util;->encodeBigInteger(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/keyczar/RsaPrivateKey;->primeExponentP:Ljava/lang/String;

    .line 87
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lorg/keyczar/util/Util;->encodeBigInteger(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/keyczar/RsaPrivateKey;->primeExponentQ:Ljava/lang/String;

    .line 88
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lorg/keyczar/util/Util;->encodeBigInteger(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/keyczar/RsaPrivateKey;->crtCoefficient:Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lorg/keyczar/RsaPrivateKey;->jcePrivateKey:Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lorg/keyczar/RsaPrivateKey;)Lorg/keyczar/RsaPublicKey;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/keyczar/RsaPrivateKey;->publicKey:Lorg/keyczar/RsaPublicKey;

    return-object v0
.end method

.method static synthetic access$100(Lorg/keyczar/RsaPrivateKey;)Ljava/security/interfaces/RSAPrivateCrtKey;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/keyczar/RsaPrivateKey;->jcePrivateKey:Ljava/security/interfaces/RSAPrivateCrtKey;

    return-object v0
.end method

.method static generate(Lorg/keyczar/keyparams/RsaKeyParameters;)Lorg/keyczar/RsaPrivateKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 70
    const-string v0, "RSA"

    invoke-interface {p0}, Lorg/keyczar/keyparams/RsaKeyParameters;->getKeySize()I

    move-result v1

    invoke-static {v0, v1}, Lorg/keyczar/util/Util;->generateKeyPair(Ljava/lang/String;I)Ljava/security/KeyPair;

    move-result-object v0

    .line 71
    new-instance v2, Lorg/keyczar/RsaPrivateKey;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    invoke-interface {p0}, Lorg/keyczar/keyparams/RsaKeyParameters;->getRsaPadding()Lorg/keyczar/enums/RsaPadding;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/keyczar/enums/RsaPadding;->OAEP:Lorg/keyczar/enums/RsaPadding;

    :goto_0
    invoke-direct {v2, v0, v1}, Lorg/keyczar/RsaPrivateKey;-><init>(Ljava/security/interfaces/RSAPrivateCrtKey;Lorg/keyczar/enums/RsaPadding;)V

    return-object v2

    :cond_0
    invoke-interface {p0}, Lorg/keyczar/keyparams/RsaKeyParameters;->getRsaPadding()Lorg/keyczar/enums/RsaPadding;

    move-result-object v1

    goto :goto_0
.end method

.method private initFromJson()Lorg/keyczar/RsaPrivateKey;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lorg/keyczar/RsaPrivateKey;->publicKey:Lorg/keyczar/RsaPublicKey;

    invoke-virtual {v0}, Lorg/keyczar/RsaPublicKey;->initFromJson()Lorg/keyczar/RsaPublicKey;

    .line 130
    :try_start_0
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v9

    .line 131
    new-instance v0, Ljava/security/spec/RSAPrivateCrtKeySpec;

    iget-object v1, p0, Lorg/keyczar/RsaPrivateKey;->publicKey:Lorg/keyczar/RsaPublicKey;

    iget-object v1, v1, Lorg/keyczar/RsaPublicKey;->modulus:Ljava/lang/String;

    invoke-static {v1}, Lorg/keyczar/util/Util;->decodeBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/keyczar/RsaPrivateKey;->publicKey:Lorg/keyczar/RsaPublicKey;

    iget-object v2, v2, Lorg/keyczar/RsaPublicKey;->publicExponent:Ljava/lang/String;

    invoke-static {v2}, Lorg/keyczar/util/Util;->decodeBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/keyczar/RsaPrivateKey;->privateExponent:Ljava/lang/String;

    invoke-static {v3}, Lorg/keyczar/util/Util;->decodeBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lorg/keyczar/RsaPrivateKey;->primeP:Ljava/lang/String;

    invoke-static {v4}, Lorg/keyczar/util/Util;->decodeBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lorg/keyczar/RsaPrivateKey;->primeQ:Ljava/lang/String;

    invoke-static {v5}, Lorg/keyczar/util/Util;->decodeBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v5

    iget-object v6, p0, Lorg/keyczar/RsaPrivateKey;->primeExponentP:Ljava/lang/String;

    invoke-static {v6}, Lorg/keyczar/util/Util;->decodeBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v6

    iget-object v7, p0, Lorg/keyczar/RsaPrivateKey;->primeExponentQ:Ljava/lang/String;

    invoke-static {v7}, Lorg/keyczar/util/Util;->decodeBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v7

    iget-object v8, p0, Lorg/keyczar/RsaPrivateKey;->crtCoefficient:Ljava/lang/String;

    invoke-static {v8}, Lorg/keyczar/util/Util;->decodeBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 136
    invoke-virtual {v9, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    iput-object v0, p0, Lorg/keyczar/RsaPrivateKey;->jcePrivateKey:Ljava/security/interfaces/RSAPrivateCrtKey;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    return-object p0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    new-instance v1, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static read(Ljava/lang/String;)Lorg/keyczar/RsaPrivateKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-static {}, Lorg/keyczar/util/Util;->gson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lorg/keyczar/RsaPrivateKey;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/RsaPrivateKey;

    .line 77
    invoke-direct {v0}, Lorg/keyczar/RsaPrivateKey;->initFromJson()Lorg/keyczar/RsaPrivateKey;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic getJceKey()Ljava/security/Key;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lorg/keyczar/RsaPrivateKey;->getJceKey()Ljava/security/interfaces/RSAPrivateCrtKey;

    move-result-object v0

    return-object v0
.end method

.method protected getJceKey()Ljava/security/interfaces/RSAPrivateCrtKey;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/keyczar/RsaPrivateKey;->jcePrivateKey:Ljava/security/interfaces/RSAPrivateCrtKey;

    return-object v0
.end method

.method public getPublic()Lorg/keyczar/KeyczarPublicKey;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/keyczar/RsaPrivateKey;->publicKey:Lorg/keyczar/RsaPublicKey;

    return-object v0
.end method

.method protected getStream()Lorg/keyczar/interfaces/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Lorg/keyczar/RsaPrivateKey$RsaPrivateStream;

    invoke-direct {v0, p0}, Lorg/keyczar/RsaPrivateKey$RsaPrivateStream;-><init>(Lorg/keyczar/RsaPrivateKey;)V

    return-object v0
.end method

.method public getType()Lorg/keyczar/interfaces/KeyType;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lorg/keyczar/DefaultKeyType;->RSA_PRIV:Lorg/keyczar/DefaultKeyType;

    return-object v0
.end method

.method protected hash()[B
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/keyczar/RsaPrivateKey;->publicKey:Lorg/keyczar/RsaPublicKey;

    invoke-virtual {v0}, Lorg/keyczar/RsaPublicKey;->hash()[B

    move-result-object v0

    return-object v0
.end method
