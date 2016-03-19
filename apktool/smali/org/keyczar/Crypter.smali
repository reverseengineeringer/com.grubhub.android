.class public Lorg/keyczar/Crypter;
.super Lorg/keyczar/Encrypter;
.source "SourceFile"


# static fields
.field private static final DECRYPT_CHUNK_SIZE:I = 0x400

.field private static final LOG:Lorg/a/a/c;


# instance fields
.field private final CRYPT_CACHE:Lorg/keyczar/StreamCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/keyczar/StreamCache",
            "<",
            "Lorg/keyczar/interfaces/DecryptingStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lorg/keyczar/Crypter;

    invoke-static {v0}, Lorg/a/a/c;->a(Ljava/lang/Class;)Lorg/a/a/c;

    move-result-object v0

    sput-object v0, Lorg/keyczar/Crypter;->LOG:Lorg/a/a/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lorg/keyczar/Encrypter;-><init>(Ljava/lang/String;)V

    .line 44
    new-instance v0, Lorg/keyczar/StreamCache;

    invoke-direct {v0}, Lorg/keyczar/StreamCache;-><init>()V

    iput-object v0, p0, Lorg/keyczar/Crypter;->CRYPT_CACHE:Lorg/keyczar/StreamCache;

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/keyczar/interfaces/KeyczarReader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/keyczar/Encrypter;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V

    .line 44
    new-instance v0, Lorg/keyczar/StreamCache;

    invoke-direct {v0}, Lorg/keyczar/StreamCache;-><init>()V

    iput-object v0, p0, Lorg/keyczar/Crypter;->CRYPT_CACHE:Lorg/keyczar/StreamCache;

    .line 57
    return-void
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 183
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lorg/keyczar/util/Base64Coder;->decodeWebSafe(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/keyczar/Crypter;->decrypt([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public decrypt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x400

    .line 103
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 104
    sget-object v0, Lorg/keyczar/Crypter;->LOG:Lorg/a/a/c;

    const-string v2, "Crypter.Decrypting"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/a/a/c;->a(Ljava/lang/Object;)V

    .line 105
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 106
    new-instance v0, Lorg/keyczar/exceptions/ShortCiphertextException;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/ShortCiphertextException;-><init>(I)V

    throw v0

    .line 108
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 109
    if-eqz v0, :cond_1

    .line 110
    new-instance v1, Lorg/keyczar/exceptions/BadVersionException;

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/BadVersionException;-><init>(B)V

    throw v1

    .line 113
    :cond_1
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 114
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 115
    invoke-virtual {p0, v0}, Lorg/keyczar/Crypter;->getKey([B)Lorg/keyczar/KeyczarKey;

    move-result-object v2

    .line 116
    if-nez v2, :cond_2

    .line 117
    new-instance v1, Lorg/keyczar/exceptions/KeyNotFoundException;

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/KeyNotFoundException;-><init>([B)V

    throw v1

    .line 121
    :cond_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 123
    iget-object v0, p0, Lorg/keyczar/Crypter;->CRYPT_CACHE:Lorg/keyczar/StreamCache;

    invoke-virtual {v0, v2}, Lorg/keyczar/StreamCache;->get(Lorg/keyczar/KeyczarKey;)Lorg/keyczar/interfaces/Stream;

    move-result-object v0

    check-cast v0, Lorg/keyczar/interfaces/DecryptingStream;

    .line 124
    if-nez v0, :cond_3

    .line 125
    invoke-virtual {v2}, Lorg/keyczar/KeyczarKey;->getStream()Lorg/keyczar/interfaces/Stream;

    move-result-object v0

    check-cast v0, Lorg/keyczar/interfaces/DecryptingStream;

    .line 128
    :cond_3
    invoke-interface {v0}, Lorg/keyczar/interfaces/DecryptingStream;->getVerifyingStream()Lorg/keyczar/interfaces/VerifyingStream;

    move-result-object v3

    .line 129
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-interface {v3}, Lorg/keyczar/interfaces/VerifyingStream;->digestSize()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 130
    new-instance v0, Lorg/keyczar/exceptions/ShortCiphertextException;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/ShortCiphertextException;-><init>(I)V

    throw v0

    .line 134
    :cond_4
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-interface {v3}, Lorg/keyczar/interfaces/VerifyingStream;->digestSize()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 135
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 138
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 139
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-interface {v3}, Lorg/keyczar/interfaces/VerifyingStream;->digestSize()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 142
    invoke-interface {v0, v1}, Lorg/keyczar/interfaces/DecryptingStream;->initDecrypt(Ljava/nio/ByteBuffer;)V

    .line 145
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 146
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 147
    invoke-interface {v3}, Lorg/keyczar/interfaces/VerifyingStream;->initVerify()V

    .line 148
    invoke-interface {v3, v5}, Lorg/keyczar/interfaces/VerifyingStream;->updateVerify(Ljava/nio/ByteBuffer;)V

    .line 150
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 153
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-le v5, v7, :cond_5

    .line 154
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 155
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 156
    invoke-interface {v0, v5, p2}, Lorg/keyczar/interfaces/DecryptingStream;->updateDecrypt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 157
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 158
    invoke-interface {v3, v5}, Lorg/keyczar/interfaces/VerifyingStream;->updateVerify(Ljava/nio/ByteBuffer;)V

    .line 159
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/lit16 v5, v5, 0x400

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 161
    :cond_5
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 162
    invoke-interface {v3, v1}, Lorg/keyczar/interfaces/VerifyingStream;->updateVerify(Ljava/nio/ByteBuffer;)V

    .line 163
    invoke-interface {v3, v4}, Lorg/keyczar/interfaces/VerifyingStream;->verify(Ljava/nio/ByteBuffer;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 164
    new-instance v0, Lorg/keyczar/exceptions/InvalidSignatureException;

    invoke-direct {v0}, Lorg/keyczar/exceptions/InvalidSignatureException;-><init>()V

    throw v0

    .line 166
    :cond_6
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 167
    invoke-interface {v0, v1, p2}, Lorg/keyczar/interfaces/DecryptingStream;->doFinalDecrypt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 168
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 169
    iget-object v1, p0, Lorg/keyczar/Crypter;->CRYPT_CACHE:Lorg/keyczar/StreamCache;

    invoke-virtual {v1, v2, v0}, Lorg/keyczar/StreamCache;->put(Lorg/keyczar/KeyczarKey;Lorg/keyczar/interfaces/Stream;)V

    .line 170
    return-void
.end method

.method public decrypt([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 83
    array-length v0, p1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 84
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/keyczar/Crypter;->decrypt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 85
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 86
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 87
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 88
    return-object v1
.end method

.method isAcceptablePurpose(Lorg/keyczar/enums/KeyPurpose;)Z
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lorg/keyczar/enums/KeyPurpose;->DECRYPT_AND_ENCRYPT:Lorg/keyczar/enums/KeyPurpose;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
