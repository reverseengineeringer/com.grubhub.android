.class Lorg/keyczar/HmacKey$HmacStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/keyczar/interfaces/SigningStream;
.implements Lorg/keyczar/interfaces/VerifyingStream;


# instance fields
.field private final hmac:Ljavax/crypto/Mac;

.field final synthetic this$0:Lorg/keyczar/HmacKey;


# direct methods
.method public constructor <init>(Lorg/keyczar/HmacKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 115
    iput-object p1, p0, Lorg/keyczar/HmacKey$HmacStream;->this$0:Lorg/keyczar/HmacKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    :try_start_0
    const-string v0, "HMACSHA1"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    iput-object v0, p0, Lorg/keyczar/HmacKey$HmacStream;->hmac:Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    new-instance v1, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public digestSize()I
    .locals 1

    .prologue
    .line 125
    const/16 v0, 0x14

    return v0
.end method

.method public initSign()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 131
    :try_start_0
    iget-object v0, p0, Lorg/keyczar/HmacKey$HmacStream;->hmac:Ljavax/crypto/Mac;

    iget-object v1, p0, Lorg/keyczar/HmacKey$HmacStream;->this$0:Lorg/keyczar/HmacKey;

    # getter for: Lorg/keyczar/HmacKey;->hmacKey:Ljavax/crypto/SecretKey;
    invoke-static {v1}, Lorg/keyczar/HmacKey;->access$000(Lorg/keyczar/HmacKey;)Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    new-instance v1, Lorg/keyczar/exceptions/KeyczarException;

    invoke-direct {v1, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public initVerify()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p0}, Lorg/keyczar/HmacKey$HmacStream;->initSign()V

    .line 140
    return-void
.end method

.method public sign(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/keyczar/HmacKey$HmacStream;->hmac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 145
    return-void
.end method

.method public updateSign(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/keyczar/HmacKey$HmacStream;->hmac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update(Ljava/nio/ByteBuffer;)V

    .line 150
    return-void
.end method

.method public updateVerify(Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lorg/keyczar/HmacKey$HmacStream;->updateSign(Ljava/nio/ByteBuffer;)V

    .line 155
    return-void
.end method

.method public verify(Ljava/nio/ByteBuffer;)Z
    .locals 2

    .prologue
    .line 159
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 160
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 162
    iget-object v1, p0, Lorg/keyczar/HmacKey$HmacStream;->hmac:Ljavax/crypto/Mac;

    invoke-virtual {v1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v1

    invoke-static {v1, v0}, Lorg/keyczar/util/Util;->safeArrayEquals([B[B)Z

    move-result v0

    return v0
.end method
