.class public Lorg/keyczar/X509CertificateReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/keyczar/interfaces/KeyczarReader;


# instance fields
.field private final certificateStream:Ljava/io/InputStream;

.field private key:Lorg/keyczar/KeyczarPublicKey;

.field private meta:Lorg/keyczar/KeyMetadata;

.field private final padding:Lorg/keyczar/enums/RsaPadding;

.field private final purpose:Lorg/keyczar/enums/KeyPurpose;


# direct methods
.method public constructor <init>(Lorg/keyczar/enums/KeyPurpose;Ljava/io/InputStream;Lorg/keyczar/enums/RsaPadding;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/keyczar/X509CertificateReader;->meta:Lorg/keyczar/KeyMetadata;

    .line 54
    if-nez p1, :cond_0

    .line 55
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "X509Certificate purpose must not be null"

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    if-nez p2, :cond_1

    .line 58
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "X509Certificate stream must not be null"

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    iput-object p1, p0, Lorg/keyczar/X509CertificateReader;->purpose:Lorg/keyczar/enums/KeyPurpose;

    .line 61
    iput-object p2, p0, Lorg/keyczar/X509CertificateReader;->certificateStream:Ljava/io/InputStream;

    .line 62
    iput-object p3, p0, Lorg/keyczar/X509CertificateReader;->padding:Lorg/keyczar/enums/RsaPadding;

    .line 63
    return-void
.end method

.method private constructMetadata()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 95
    iget-object v0, p0, Lorg/keyczar/X509CertificateReader;->purpose:Lorg/keyczar/enums/KeyPurpose;

    sget-object v1, Lorg/keyczar/enums/KeyPurpose;->ENCRYPT:Lorg/keyczar/enums/KeyPurpose;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/keyczar/X509CertificateReader;->key:Lorg/keyczar/KeyczarPublicKey;

    invoke-virtual {v0}, Lorg/keyczar/KeyczarPublicKey;->getType()Lorg/keyczar/interfaces/KeyType;

    move-result-object v0

    sget-object v1, Lorg/keyczar/DefaultKeyType;->DSA_PUB:Lorg/keyczar/DefaultKeyType;

    if-ne v0, v1, :cond_0

    .line 96
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "Keyczartool.InvalidUseOfDsaKey"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    new-instance v0, Lorg/keyczar/KeyMetadata;

    const-string v1, "imported from certificate"

    iget-object v2, p0, Lorg/keyczar/X509CertificateReader;->purpose:Lorg/keyczar/enums/KeyPurpose;

    iget-object v3, p0, Lorg/keyczar/X509CertificateReader;->key:Lorg/keyczar/KeyczarPublicKey;

    invoke-virtual {v3}, Lorg/keyczar/KeyczarPublicKey;->getType()Lorg/keyczar/interfaces/KeyType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/keyczar/KeyMetadata;-><init>(Ljava/lang/String;Lorg/keyczar/enums/KeyPurpose;Lorg/keyczar/interfaces/KeyType;)V

    iput-object v0, p0, Lorg/keyczar/X509CertificateReader;->meta:Lorg/keyczar/KeyMetadata;

    .line 99
    iget-object v0, p0, Lorg/keyczar/X509CertificateReader;->meta:Lorg/keyczar/KeyMetadata;

    new-instance v1, Lorg/keyczar/KeyVersion;

    sget-object v2, Lorg/keyczar/enums/KeyStatus;->PRIMARY:Lorg/keyczar/enums/KeyStatus;

    invoke-direct {v1, v4, v2, v4}, Lorg/keyczar/KeyVersion;-><init>(ILorg/keyczar/enums/KeyStatus;Z)V

    invoke-virtual {v0, v1}, Lorg/keyczar/KeyMetadata;->addVersion(Lorg/keyczar/KeyVersion;)Z

    .line 100
    return-void
.end method

.method private ensureCertificateRead()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lorg/keyczar/X509CertificateReader;->key:Lorg/keyczar/KeyczarPublicKey;

    if-nez v0, :cond_0

    .line 86
    :try_start_0
    invoke-direct {p0}, Lorg/keyczar/X509CertificateReader;->parseCertificate()V

    .line 87
    invoke-direct {p0}, Lorg/keyczar/X509CertificateReader;->constructMetadata()V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    new-instance v1, Lorg/keyczar/exceptions/KeyczarException;

    const-string v2, "KeyczarTool.InvalidCertificate"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private parseCertificate()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 103
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/keyczar/X509CertificateReader;->certificateStream:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 107
    instance-of v1, v0, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v1, :cond_0

    .line 108
    new-instance v1, Lorg/keyczar/RsaPublicKey;

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    iget-object v2, p0, Lorg/keyczar/X509CertificateReader;->padding:Lorg/keyczar/enums/RsaPadding;

    invoke-direct {v1, v0, v2}, Lorg/keyczar/RsaPublicKey;-><init>(Ljava/security/interfaces/RSAPublicKey;Lorg/keyczar/enums/RsaPadding;)V

    iput-object v1, p0, Lorg/keyczar/X509CertificateReader;->key:Lorg/keyczar/KeyczarPublicKey;

    .line 118
    :goto_0
    return-void

    .line 109
    :cond_0
    instance-of v1, v0, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v1, :cond_2

    .line 110
    iget-object v1, p0, Lorg/keyczar/X509CertificateReader;->padding:Lorg/keyczar/enums/RsaPadding;

    if-eqz v1, :cond_1

    .line 111
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "InvalidPadding"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/keyczar/X509CertificateReader;->padding:Lorg/keyczar/enums/RsaPadding;

    invoke-virtual {v4}, Lorg/keyczar/enums/RsaPadding;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_1
    new-instance v1, Lorg/keyczar/DsaPublicKey;

    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    invoke-direct {v1, v0}, Lorg/keyczar/DsaPublicKey;-><init>(Ljava/security/interfaces/DSAPublicKey;)V

    iput-object v1, p0, Lorg/keyczar/X509CertificateReader;->key:Lorg/keyczar/KeyczarPublicKey;

    goto :goto_0

    .line 115
    :cond_2
    new-instance v1, Lorg/keyczar/exceptions/KeyczarException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized key type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in certificate"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/keyczar/X509CertificateReader;->ensureCertificateRead()V

    .line 74
    iget-object v0, p0, Lorg/keyczar/X509CertificateReader;->key:Lorg/keyczar/KeyczarPublicKey;

    invoke-virtual {v0}, Lorg/keyczar/KeyczarPublicKey;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/keyczar/X509CertificateReader;->ensureCertificateRead()V

    .line 68
    iget-object v0, p0, Lorg/keyczar/X509CertificateReader;->key:Lorg/keyczar/KeyczarPublicKey;

    invoke-virtual {v0}, Lorg/keyczar/KeyczarPublicKey;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/keyczar/X509CertificateReader;->ensureCertificateRead()V

    .line 80
    iget-object v0, p0, Lorg/keyczar/X509CertificateReader;->meta:Lorg/keyczar/KeyMetadata;

    invoke-virtual {v0}, Lorg/keyczar/KeyMetadata;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
