.class public Lcom/amazon/insights/session/FileSessionStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/insights/session/SessionStore;


# static fields
.field static final ENCRYPTION_ALGORITHM:Ljava/lang/String; = "AES"

.field static final KEY_MAX_STORAGE_SIZE:Ljava/lang/String; = "maxStorageSize"

.field static final MAX_STORAGE_SIZE:J = 0x5820L

.field protected static final SESSION_DIRECTORY:Ljava/lang/String; = "sessions"

.field protected static final SESSION_FILE_NAME:Ljava/lang/String; = "sessionFile"

.field private static final logger:Lcom/amazon/insights/core/log/Logger;


# instance fields
.field private final context:Lcom/amazon/insights/core/InsightsContext;

.field private final lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final readSessionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field private reader:Lcom/amazon/insights/core/io/EncryptedBufferedReader;

.field private secretKey:Ljavax/crypto/SecretKey;

.field private sessionFile:Ljava/io/File;

.field private final writeSessionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/amazon/insights/delivery/FileEventStore;

    invoke-static {v0}, Lcom/amazon/insights/core/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/amazon/insights/core/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/amazon/insights/session/FileSessionStore;->logger:Lcom/amazon/insights/core/log/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/insights/core/InsightsContext;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x20

    const/16 v4, 0x10

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/insights/session/FileSessionStore;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 43
    iget-object v0, p0, Lcom/amazon/insights/session/FileSessionStore;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/insights/session/FileSessionStore;->readSessionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 44
    iget-object v0, p0, Lcom/amazon/insights/session/FileSessionStore;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/insights/session/FileSessionStore;->writeSessionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 45
    iput-object v6, p0, Lcom/amazon/insights/session/FileSessionStore;->reader:Lcom/amazon/insights/core/io/EncryptedBufferedReader;

    .line 50
    iput-object p1, p0, Lcom/amazon/insights/session/FileSessionStore;->context:Lcom/amazon/insights/core/InsightsContext;

    .line 51
    iget-object v0, p0, Lcom/amazon/insights/session/FileSessionStore;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v0}, Lcom/amazon/insights/core/InsightsContext;->getSystem()Lcom/amazon/insights/core/system/System;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/insights/core/system/System;->getFileManager()Lcom/amazon/insights/core/system/FileManager;

    move-result-object v0

    .line 52
    const-string v1, "sessions"

    invoke-interface {v0, v1}, Lcom/amazon/insights/core/system/FileManager;->createDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 54
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "sessionFile"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/amazon/insights/core/system/FileManager;->createFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/insights/session/FileSessionStore;->sessionFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    new-array v2, v5, [B

    .line 61
    :try_start_1
    iget-object v0, p0, Lcom/amazon/insights/session/FileSessionStore;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v0}, Lcom/amazon/insights/core/InsightsContext;->getCredentials()Lcom/amazon/insights/InsightsCredentials;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/insights/InsightsCredentials;->getPrivateKey()Ljava/lang/String;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/amazon/insights/session/FileSessionStore;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v1}, Lcom/amazon/insights/core/InsightsContext;->getUniqueId()Lcom/amazon/insights/core/idresolver/Id;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazon/insights/session/FileSessionStore;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v1}, Lcom/amazon/insights/core/InsightsContext;->getUniqueId()Lcom/amazon/insights/core/idresolver/Id;

    move-result-object v1

    invoke-static {}, Lcom/amazon/insights/core/idresolver/Id;->getEmptyId()Lcom/amazon/insights/core/idresolver/Id;

    move-result-object v3

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/amazon/insights/session/FileSessionStore;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v1}, Lcom/amazon/insights/core/InsightsContext;->getUniqueId()Lcom/amazon/insights/core/idresolver/Id;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/insights/core/idresolver/Id;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 63
    iget-object v0, p0, Lcom/amazon/insights/session/FileSessionStore;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v0}, Lcom/amazon/insights/core/InsightsContext;->getUniqueId()Lcom/amazon/insights/core/idresolver/Id;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/insights/core/idresolver/Id;->getValue()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 66
    :goto_1
    iget-object v0, p0, Lcom/amazon/insights/session/FileSessionStore;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v0}, Lcom/amazon/insights/core/InsightsContext;->getCredentials()Lcom/amazon/insights/InsightsCredentials;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/insights/InsightsCredentials;->getPrivateKey()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_0

    .line 68
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/amazon/insights/session/FileSessionStore;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v4}, Lcom/amazon/insights/core/InsightsContext;->getConfiguration()Lcom/amazon/insights/core/configuration/Configuration;

    move-result-object v4

    const-string v5, "encryptionPrefix"

    invoke-interface {v4, v5, v0}, Lcom/amazon/insights/core/configuration/Configuration;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    const-string v0, "UTF-8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 74
    :try_start_2
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 75
    const-string v4, "UTF-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 80
    :goto_2
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x20

    :try_start_3
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, v2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/insights/session/FileSessionStore;->secretKey:Ljavax/crypto/SecretKey;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    .line 85
    :goto_3
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    sget-object v1, Lcom/amazon/insights/session/FileSessionStore;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v2, "Unable to open session file"

    invoke-virtual {v1, v2}, Lcom/amazon/insights/core/log/Logger;->deve(Ljava/lang/String;)V

    .line 57
    sget-object v1, Lcom/amazon/insights/session/FileSessionStore;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v2, "An error occurred while attempting to create/open the session file"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 82
    :catch_1
    move-exception v0

    .line 83
    iput-object v6, p0, Lcom/amazon/insights/session/FileSessionStore;->secretKey:Ljavax/crypto/SecretKey;

    goto :goto_3

    .line 76
    :catch_2
    move-exception v1

    goto :goto_2

    :cond_1
    move-object v1, v0

    goto :goto_1
.end method

.method private tryCloseReader()V
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/amazon/insights/session/FileSessionStore;->reader:Lcom/amazon/insights/core/io/EncryptedBufferedReader;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/amazon/insights/session/FileSessionStore;->readSessionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/amazon/insights/session/FileSessionStore;->reader:Lcom/amazon/insights/core/io/EncryptedBufferedReader;

    invoke-virtual {v0}, Lcom/amazon/insights/core/io/EncryptedBufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 169
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/amazon/insights/session/FileSessionStore;->reader:Lcom/amazon/insights/core/io/EncryptedBufferedReader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :goto_0
    iget-object v0, p0, Lcom/amazon/insights/session/FileSessionStore;->readSessionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 175
    :cond_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    :try_start_2
    sget-object v1, Lcom/amazon/insights/session/FileSessionStore;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v2, "Unable to close reader for session file"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 169
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/amazon/insights/session/FileSessionStore;->reader:Lcom/amazon/insights/core/io/EncryptedBufferedReader;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/insights/session/FileSessionStore;->readSessionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0

    .line 169
    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/amazon/insights/session/FileSessionStore;->reader:Lcom/amazon/insights/core/io/EncryptedBufferedReader;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private tryCloseWriter(Ljava/io/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/insights/session/SessionStoreException;
        }
    .end annotation

    .prologue
    .line 130
    if-eqz p1, :cond_0

    .line 132
    :try_start_0
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    sget-object v1, Lcom/amazon/insights/session/FileSessionStore;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v2, "Unable to close writer for session file"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private tryInitializeWriter()Ljava/io/Writer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/insights/session/SessionStoreException;
        }
    .end annotation

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/amazon/insights/session/FileSessionStore;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v0}, Lcom/amazon/insights/core/InsightsContext;->getSystem()Lcom/amazon/insights/core/system/System;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/insights/core/system/System;->getFileManager()Lcom/amazon/insights/core/system/FileManager;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/insights/session/FileSessionStore;->sessionFile:Ljava/io/File;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/amazon/insights/core/system/FileManager;->newOutputStream(Ljava/io/File;Z)Ljava/io/OutputStream;

    move-result-object v0

    .line 118
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 119
    new-instance v0, Lcom/amazon/insights/core/io/EncryptedWriter;

    iget-object v3, p0, Lcom/amazon/insights/session/FileSessionStore;->secretKey:Ljavax/crypto/SecretKey;

    invoke-direct {v0, v2, v3}, Lcom/amazon/insights/core/io/EncryptedWriter;-><init>(Ljava/io/Writer;Ljavax/crypto/SecretKey;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 126
    :goto_0
    return-object v0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    sget-object v1, Lcom/amazon/insights/session/FileSessionStore;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v2, "Session file not found to persist session to"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    new-instance v1, Lcom/amazon/insights/delivery/EventStoreException;

    const-string v2, "Unable to open session file writer"

    invoke-direct {v1, v2, v0}, Lcom/amazon/insights/delivery/EventStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 123
    :catch_1
    move-exception v0

    .line 124
    sget-object v2, Lcom/amazon/insights/session/FileSessionStore;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v3, "Unexpected exception"

    invoke-virtual {v2, v3, v0}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private tryOpenReader()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 140
    iget-object v1, p0, Lcom/amazon/insights/session/FileSessionStore;->reader:Lcom/amazon/insights/core/io/EncryptedBufferedReader;

    if-eqz v1, :cond_0

    .line 157
    :goto_0
    return v0

    .line 144
    :cond_0
    const/4 v2, 0x0

    .line 146
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/amazon/insights/session/FileSessionStore;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v3}, Lcom/amazon/insights/core/InsightsContext;->getSystem()Lcom/amazon/insights/core/system/System;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/insights/core/system/System;->getFileManager()Lcom/amazon/insights/core/system/FileManager;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/insights/session/FileSessionStore;->sessionFile:Ljava/io/File;

    invoke-interface {v3, v4}, Lcom/amazon/insights/core/system/FileManager;->newInputStream(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_1
    if-eqz v1, :cond_1

    .line 153
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 154
    new-instance v1, Lcom/amazon/insights/core/io/EncryptedBufferedReader;

    iget-object v3, p0, Lcom/amazon/insights/session/FileSessionStore;->secretKey:Ljavax/crypto/SecretKey;

    invoke-direct {v1, v2, v3}, Lcom/amazon/insights/core/io/EncryptedBufferedReader;-><init>(Ljava/io/BufferedReader;Ljavax/crypto/SecretKey;)V

    iput-object v1, p0, Lcom/amazon/insights/session/FileSessionStore;->reader:Lcom/amazon/insights/core/io/EncryptedBufferedReader;

    goto :goto_0

    .line 148
    :catch_0
    move-exception v1

    .line 149
    sget-object v3, Lcom/amazon/insights/session/FileSessionStore;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v4, "Could not open the session file"

    invoke-virtual {v3, v4, v1}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    goto :goto_1

    .line 157
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getSession()Lcom/amazon/insights/session/Session;
    .locals 4

    .prologue
    .line 179
    const/4 v0, 0x0

    .line 180
    iget-object v1, p0, Lcom/amazon/insights/session/FileSessionStore;->readSessionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 183
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/insights/session/FileSessionStore;->tryOpenReader()Z

    .line 184
    iget-object v1, p0, Lcom/amazon/insights/session/FileSessionStore;->reader:Lcom/amazon/insights/core/io/EncryptedBufferedReader;

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/amazon/insights/session/FileSessionStore;->reader:Lcom/amazon/insights/core/io/EncryptedBufferedReader;

    invoke-virtual {v1}, Lcom/amazon/insights/core/io/EncryptedBufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 190
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/amazon/insights/session/FileSessionStore;->tryCloseReader()V

    .line 192
    iget-object v1, p0, Lcom/amazon/insights/session/FileSessionStore;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v1}, Lcom/amazon/insights/core/InsightsContext;->getSystem()Lcom/amazon/insights/core/system/System;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/insights/core/system/System;->getFileManager()Lcom/amazon/insights/core/system/FileManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 194
    :try_start_2
    iget-object v2, p0, Lcom/amazon/insights/session/FileSessionStore;->sessionFile:Ljava/io/File;

    invoke-interface {v1, v2}, Lcom/amazon/insights/core/system/FileManager;->deleteFile(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/amazon/insights/session/FileSessionStore;->sessionFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 195
    :cond_1
    iget-object v2, p0, Lcom/amazon/insights/session/FileSessionStore;->sessionFile:Ljava/io/File;

    invoke-interface {v1, v2}, Lcom/amazon/insights/core/system/FileManager;->createFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/insights/session/FileSessionStore;->sessionFile:Ljava/io/File;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/amazon/insights/session/FileSessionStore;->readSessionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 205
    invoke-static {v0}, Lcom/amazon/insights/session/Session;->getSessionFromSerializedSession(Ljava/lang/String;)Lcom/amazon/insights/session/Session;

    move-result-object v0

    return-object v0

    .line 197
    :catch_0
    move-exception v1

    .line 198
    :try_start_3
    sget-object v2, Lcom/amazon/insights/session/FileSessionStore;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v3, "Unable to clear session file"

    invoke-virtual {v2, v3, v1}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/insights/session/FileSessionStore;->readSessionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0

    .line 187
    :catch_1
    move-exception v1

    .line 188
    :try_start_4
    sget-object v2, Lcom/amazon/insights/session/FileSessionStore;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v3, "Failed to read the session"

    invoke-virtual {v2, v3, v1}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 190
    :try_start_5
    invoke-direct {p0}, Lcom/amazon/insights/session/FileSessionStore;->tryCloseReader()V

    .line 192
    iget-object v1, p0, Lcom/amazon/insights/session/FileSessionStore;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v1}, Lcom/amazon/insights/core/InsightsContext;->getSystem()Lcom/amazon/insights/core/system/System;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/insights/core/system/System;->getFileManager()Lcom/amazon/insights/core/system/FileManager;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    .line 194
    :try_start_6
    iget-object v2, p0, Lcom/amazon/insights/session/FileSessionStore;->sessionFile:Ljava/io/File;

    invoke-interface {v1, v2}, Lcom/amazon/insights/core/system/FileManager;->deleteFile(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/amazon/insights/session/FileSessionStore;->sessionFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 195
    :cond_3
    iget-object v2, p0, Lcom/amazon/insights/session/FileSessionStore;->sessionFile:Ljava/io/File;

    invoke-interface {v1, v2}, Lcom/amazon/insights/core/system/FileManager;->createFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/insights/session/FileSessionStore;->sessionFile:Ljava/io/File;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 197
    :catch_2
    move-exception v1

    .line 198
    :try_start_7
    sget-object v2, Lcom/amazon/insights/session/FileSessionStore;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v3, "Unable to clear session file"

    invoke-virtual {v2, v3, v1}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 190
    :catchall_1
    move-exception v0

    invoke-direct {p0}, Lcom/amazon/insights/session/FileSessionStore;->tryCloseReader()V

    .line 192
    iget-object v1, p0, Lcom/amazon/insights/session/FileSessionStore;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v1}, Lcom/amazon/insights/core/InsightsContext;->getSystem()Lcom/amazon/insights/core/system/System;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/insights/core/system/System;->getFileManager()Lcom/amazon/insights/core/system/FileManager;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v1

    .line 194
    :try_start_8
    iget-object v2, p0, Lcom/amazon/insights/session/FileSessionStore;->sessionFile:Ljava/io/File;

    invoke-interface {v1, v2}, Lcom/amazon/insights/core/system/FileManager;->deleteFile(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/amazon/insights/session/FileSessionStore;->sessionFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    .line 195
    :cond_4
    iget-object v2, p0, Lcom/amazon/insights/session/FileSessionStore;->sessionFile:Ljava/io/File;

    invoke-interface {v1, v2}, Lcom/amazon/insights/core/system/FileManager;->createFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/insights/session/FileSessionStore;->sessionFile:Ljava/io/File;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 200
    :cond_5
    :goto_1
    :try_start_9
    throw v0

    .line 197
    :catch_3
    move-exception v1

    .line 198
    sget-object v2, Lcom/amazon/insights/session/FileSessionStore;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v3, "Unable to clear session file"

    invoke-virtual {v2, v3, v1}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1
.end method

.method public storeSession(Lcom/amazon/insights/session/Session;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/insights/session/SessionStoreException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p1}, Lcom/amazon/insights/session/Session;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    const/4 v1, 0x0

    .line 91
    iget-object v2, p0, Lcom/amazon/insights/session/FileSessionStore;->writeSessionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 94
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/insights/session/FileSessionStore;->tryInitializeWriter()Ljava/io/Writer;

    move-result-object v1

    .line 95
    if-eqz v1, :cond_0

    .line 96
    iget-object v2, p0, Lcom/amazon/insights/session/FileSessionStore;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v2}, Lcom/amazon/insights/core/InsightsContext;->getConfiguration()Lcom/amazon/insights/core/configuration/Configuration;

    move-result-object v2

    const-string v3, "maxStorageSize"

    const-wide/16 v4, 0x5820

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/amazon/insights/core/configuration/Configuration;->optLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 97
    iget-object v4, p0, Lcom/amazon/insights/session/FileSessionStore;->sessionFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v4, v4, v2

    if-gtz v4, :cond_1

    .line 98
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 107
    :cond_0
    :goto_0
    :try_start_1
    invoke-direct {p0, v1}, Lcom/amazon/insights/session/FileSessionStore;->tryCloseWriter(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    :goto_1
    iget-object v0, p0, Lcom/amazon/insights/session/FileSessionStore;->writeSessionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 112
    return-void

    .line 101
    :cond_1
    :try_start_2
    sget-object v0, Lcom/amazon/insights/session/FileSessionStore;->logger:Lcom/amazon/insights/core/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The session file exceeded its allowed size of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    :try_start_3
    sget-object v2, Lcom/amazon/insights/session/FileSessionStore;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v3, "Failed to persist the session"

    invoke-virtual {v2, v3, v0}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 107
    :try_start_4
    invoke-direct {p0, v1}, Lcom/amazon/insights/session/FileSessionStore;->tryCloseWriter(Ljava/io/Writer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 110
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/insights/session/FileSessionStore;->writeSessionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    .line 107
    :catchall_1
    move-exception v0

    :try_start_5
    invoke-direct {p0, v1}, Lcom/amazon/insights/session/FileSessionStore;->tryCloseWriter(Ljava/io/Writer;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
