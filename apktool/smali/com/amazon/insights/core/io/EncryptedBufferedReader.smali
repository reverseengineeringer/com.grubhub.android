.class public Lcom/amazon/insights/core/io/EncryptedBufferedReader;
.super Ljava/io/BufferedReader;
.source "SourceFile"


# static fields
.field private static final BUFFER_SIZE:I = 0x400


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field private final reader:Ljava/io/BufferedReader;


# direct methods
.method public constructor <init>(Ljava/io/BufferedReader;Ljavax/crypto/SecretKey;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 31
    iput-object p1, p0, Lcom/amazon/insights/core/io/EncryptedBufferedReader;->reader:Ljava/io/BufferedReader;

    .line 33
    :try_start_0
    invoke-interface {p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/insights/core/io/EncryptedBufferedReader;->cipher:Ljavax/crypto/Cipher;

    .line 34
    iget-object v0, p0, Lcom/amazon/insights/core/io/EncryptedBufferedReader;->cipher:Ljavax/crypto/Cipher;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2

    .line 45
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    iput-object v2, p0, Lcom/amazon/insights/core/io/EncryptedBufferedReader;->cipher:Ljavax/crypto/Cipher;

    .line 37
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 38
    :catch_1
    move-exception v0

    .line 39
    iput-object v2, p0, Lcom/amazon/insights/core/io/EncryptedBufferedReader;->cipher:Ljavax/crypto/Cipher;

    .line 40
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 41
    :catch_2
    move-exception v0

    .line 42
    iput-object v2, p0, Lcom/amazon/insights/core/io/EncryptedBufferedReader;->cipher:Ljavax/crypto/Cipher;

    .line 43
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/amazon/insights/core/io/EncryptedBufferedReader;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 106
    return-void
.end method

.method public mark(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This writer does not support the mark(int) method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This writer does not support the read() method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read(Ljava/nio/CharBuffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This writer does not support the read(CharBuffer) method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([C)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This writer does not support the read(char[]) method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([CII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This writer does not support the read(char[],int,int) method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/insights/core/io/DecryptionException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 49
    iget-object v1, p0, Lcom/amazon/insights/core/io/EncryptedBufferedReader;->cipher:Ljavax/crypto/Cipher;

    if-nez v1, :cond_0

    .line 50
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not build a Cipher to decrpyt the underlying writer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amazon/insights/core/io/EncryptedBufferedReader;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/amazon/insights/core/io/DecryptionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 58
    if-nez v1, :cond_4

    .line 88
    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 91
    :cond_1
    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 94
    :cond_2
    if-eqz v0, :cond_3

    .line 95
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 99
    :cond_3
    :goto_0
    return-object v0

    .line 62
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/amazon/insights/core/io/EncryptedBufferedReader;->cipher:Ljavax/crypto/Cipher;

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 64
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/amazon/insights/core/io/DecryptionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65
    :try_start_2
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Lcom/amazon/insights/core/io/DecryptionException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 68
    const/16 v1, 0x400

    :try_start_3
    new-array v4, v1, [B
    :try_end_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Lcom/amazon/insights/core/io/DecryptionException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 70
    :try_start_4
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_4} :catch_10
    .catch Ljavax/crypto/BadPaddingException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Lcom/amazon/insights/core/io/DecryptionException; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 71
    :goto_1
    :try_start_5
    invoke-virtual {v1, v4}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_8

    .line 72
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Lcom/amazon/insights/core/io/DecryptionException; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    :goto_2
    :try_start_6
    new-instance v4, Lcom/amazon/insights/core/io/DecryptionException;

    invoke-direct {v4, v0}, Lcom/amazon/insights/core/io/DecryptionException;-><init>(Ljava/lang/Exception;)V

    throw v4
    :try_end_6
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Lcom/amazon/insights/core/io/DecryptionException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 79
    :catch_1
    move-exception v0

    .line 80
    :goto_3
    :try_start_7
    new-instance v4, Lcom/amazon/insights/core/io/DecryptionException;

    invoke-direct {v4, v0}, Lcom/amazon/insights/core/io/DecryptionException;-><init>(Ljava/lang/Exception;)V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 88
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_5

    .line 89
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 91
    :cond_5
    if-eqz v3, :cond_6

    .line 92
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    .line 94
    :cond_6
    if-eqz v2, :cond_7

    .line 95
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 99
    :cond_7
    throw v0

    .line 78
    :cond_8
    :try_start_8
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v0, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_8
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Lcom/amazon/insights/core/io/DecryptionException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 88
    if-eqz v1, :cond_9

    .line 89
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 91
    :cond_9
    if-eqz v3, :cond_a

    .line 92
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    .line 94
    :cond_a
    if-eqz v2, :cond_3

    .line 95
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_0

    .line 81
    :catch_2
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 82
    :goto_5
    :try_start_9
    new-instance v4, Lcom/amazon/insights/core/io/DecryptionException;

    invoke-direct {v4, v0}, Lcom/amazon/insights/core/io/DecryptionException;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 83
    :catch_3
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 84
    :goto_6
    throw v0

    .line 85
    :catch_4
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 86
    :goto_7
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 88
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_4

    :catchall_3
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    .line 85
    :catch_5
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_7

    :catch_6
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_7

    :catch_7
    move-exception v0

    goto :goto_7

    .line 83
    :catch_8
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_6

    :catch_9
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_6

    :catch_a
    move-exception v0

    goto :goto_6

    .line 81
    :catch_b
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_5

    :catch_c
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_5

    :catch_d
    move-exception v0

    goto :goto_5

    .line 79
    :catch_e
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_3

    :catch_f
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto/16 :goto_3

    :catch_10
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_3

    .line 74
    :catch_11
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_2
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/amazon/insights/core/io/EncryptedBufferedReader;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->ready()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/amazon/insights/core/io/EncryptedBufferedReader;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->reset()V

    .line 136
    return-void
.end method

.method public skip(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This writer does not support the skip(long) method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
