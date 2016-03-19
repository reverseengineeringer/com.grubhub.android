.class public Lcom/amazon/insights/delivery/FileEventStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/insights/delivery/EventStore;


# static fields
.field static final ENCRYPTION_ALGORITHM:Ljava/lang/String; = "AES"

.field static final ERROR_LENGTH_THRESHOLD_PERCENTAGE:D = 1.1

.field static final EVENTS_DIRECTORY:Ljava/lang/String; = "events"

.field static final EVENT_FILE_NAME:Ljava/lang/String; = "eventsFile"

.field static final KEY_MAX_STORAGE_SIZE:Ljava/lang/String; = "maxStorageSize"

.field static final MAX_STORAGE_SIZE:J = 0x500000L

.field private static final logger:Lcom/amazon/insights/core/log/Logger;


# instance fields
.field private final accessLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final context:Lcom/amazon/insights/core/InsightsContext;

.field private eventsFile:Ljava/io/File;

.field private secretKey:Ljavax/crypto/SecretKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/amazon/insights/delivery/FileEventStore;

    invoke-static {v0}, Lcom/amazon/insights/core/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/amazon/insights/core/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/amazon/insights/delivery/FileEventStore;->logger:Lcom/amazon/insights/core/log/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/insights/core/InsightsContext;)V
    .locals 6

    .prologue
    const/16 v2, 0x20

    const/16 v4, 0x10

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/insights/delivery/FileEventStore;->accessLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 54
    iput-object p1, p0, Lcom/amazon/insights/delivery/FileEventStore;->context:Lcom/amazon/insights/core/InsightsContext;

    .line 55
    invoke-direct {p0}, Lcom/amazon/insights/delivery/FileEventStore;->tryCreateEventsFile()Z

    .line 56
    new-array v2, v2, [B

    .line 58
    :try_start_0
    invoke-interface {p1}, Lcom/amazon/insights/core/InsightsContext;->getCredentials()Lcom/amazon/insights/InsightsCredentials;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/insights/InsightsCredentials;->getPrivateKey()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-interface {p1}, Lcom/amazon/insights/core/InsightsContext;->getUniqueId()Lcom/amazon/insights/core/idresolver/Id;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/amazon/insights/core/InsightsContext;->getUniqueId()Lcom/amazon/insights/core/idresolver/Id;

    move-result-object v1

    invoke-static {}, Lcom/amazon/insights/core/idresolver/Id;->getEmptyId()Lcom/amazon/insights/core/idresolver/Id;

    move-result-object v3

    if-eq v1, v3, :cond_1

    invoke-interface {p1}, Lcom/amazon/insights/core/InsightsContext;->getUniqueId()Lcom/amazon/insights/core/idresolver/Id;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/insights/core/idresolver/Id;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 60
    invoke-interface {p1}, Lcom/amazon/insights/core/InsightsContext;->getUniqueId()Lcom/amazon/insights/core/idresolver/Id;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/insights/core/idresolver/Id;->getValue()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 63
    :goto_0
    invoke-interface {p1}, Lcom/amazon/insights/core/InsightsContext;->getCredentials()Lcom/amazon/insights/InsightsCredentials;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/insights/InsightsCredentials;->getPrivateKey()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_0

    .line 65
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/amazon/insights/core/InsightsContext;->getConfiguration()Lcom/amazon/insights/core/configuration/Configuration;

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

    .line 69
    const-string v0, "UTF-8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 71
    :try_start_1
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 72
    const-string v4, "UTF-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 77
    :goto_1
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x20

    :try_start_2
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, v2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/insights/delivery/FileEventStore;->secretKey:Ljavax/crypto/SecretKey;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 82
    :goto_2
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/insights/delivery/FileEventStore;->secretKey:Ljavax/crypto/SecretKey;

    goto :goto_2

    .line 73
    :catch_1
    move-exception v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/amazon/insights/delivery/FileEventStore;)Ljava/io/File;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/amazon/insights/delivery/FileEventStore;->eventsFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/insights/delivery/FileEventStore;)Lcom/amazon/insights/core/InsightsContext;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/amazon/insights/delivery/FileEventStore;->context:Lcom/amazon/insights/core/InsightsContext;

    return-object v0
.end method

.method static synthetic access$200()Lcom/amazon/insights/core/log/Logger;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/amazon/insights/delivery/FileEventStore;->logger:Lcom/amazon/insights/core/log/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/insights/delivery/FileEventStore;)Ljavax/crypto/SecretKey;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/amazon/insights/delivery/FileEventStore;->secretKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazon/insights/delivery/FileEventStore;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/amazon/insights/delivery/FileEventStore;->accessLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$500(Lcom/amazon/insights/delivery/FileEventStore;I)Ljava/io/File;
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/amazon/insights/delivery/FileEventStore;->deleteReadEvents(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private deleteReadEvents(I)Ljava/io/File;
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 168
    iget-object v0, p0, Lcom/amazon/insights/delivery/FileEventStore;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v0}, Lcom/amazon/insights/core/InsightsContext;->getSystem()Lcom/amazon/insights/core/system/System;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/insights/core/system/System;->getFileManager()Lcom/amazon/insights/core/system/FileManager;

    move-result-object v6

    .line 169
    const-string v0, "events"

    invoke-interface {v6, v0}, Lcom/amazon/insights/core/system/FileManager;->createDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 171
    iget-object v0, p0, Lcom/amazon/insights/delivery/FileEventStore;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v0}, Lcom/amazon/insights/core/InsightsContext;->getConfiguration()Lcom/amazon/insights/core/configuration/Configuration;

    move-result-object v0

    const-string v1, "maxStorageSize"

    const-wide/32 v8, 0x500000

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/amazon/insights/core/configuration/Configuration;->optLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 172
    long-to-double v0, v0

    const-wide v8, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v0, v8

    double-to-long v0, v0

    .line 173
    iget-object v3, p0, Lcom/amazon/insights/delivery/FileEventStore;->eventsFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v0, v8, v0

    if-ltz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/amazon/insights/delivery/FileEventStore;->eventsFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    sget-object v0, Lcom/amazon/insights/delivery/FileEventStore;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v1, "Failed to delete events file that exceeds the max storage size"

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;)V

    .line 178
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "eventsFile"

    invoke-direct {v0, v7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Lcom/amazon/insights/core/system/FileManager;->createFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/insights/delivery/FileEventStore;->eventsFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    iget-object v0, p0, Lcom/amazon/insights/delivery/FileEventStore;->eventsFile:Ljava/io/File;

    .line 257
    :goto_1
    return-object v0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    sget-object v1, Lcom/amazon/insights/delivery/FileEventStore;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v2, "An error occurred while attempting to create the eventsFile"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 187
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/File;

    const-string v1, "eventsFile.tmp"

    invoke-direct {v0, v7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 189
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_2

    .line 190
    sget-object v1, Lcom/amazon/insights/delivery/FileEventStore;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v3, "Failed to delete previous temp file"

    invoke-virtual {v1, v3}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;)V

    .line 193
    :cond_2
    invoke-interface {v6, v0}, Lcom/amazon/insights/core/system/FileManager;->createFile(Ljava/io/File;)Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v8

    .line 200
    if-eqz v8, :cond_6

    iget-object v0, p0, Lcom/amazon/insights/delivery/FileEventStore;->eventsFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 204
    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    iget-object v1, p0, Lcom/amazon/insights/delivery/FileEventStore;->eventsFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    :try_start_3
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v0, Ljava/io/FileWriter;

    const/4 v9, 0x1

    invoke-direct {v0, v8, v9}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v0, v4

    .line 209
    :cond_3
    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 210
    add-int/lit8 v0, v0, 0x1

    .line 211
    if-le v0, p1, :cond_3

    .line 212
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    .line 216
    :catch_1
    move-exception v0

    move-object v2, v3

    .line 218
    :goto_3
    :try_start_5
    sget-object v3, Lcom/amazon/insights/delivery/FileEventStore;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v4, "The events file count not be found"

    invoke-virtual {v3, v4, v0}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 223
    if-eqz v1, :cond_4

    .line 224
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 226
    :cond_4
    if-eqz v2, :cond_5

    .line 228
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 250
    :cond_5
    :goto_4
    new-instance v0, Ljava/io/File;

    const-string v1, "eventsFile.tmp"

    invoke-direct {v0, v7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 252
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_6

    .line 253
    sget-object v0, Lcom/amazon/insights/delivery/FileEventStore;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v1, "Failed to delete temp file"

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;)V

    .line 257
    :cond_6
    iget-object v0, p0, Lcom/amazon/insights/delivery/FileEventStore;->eventsFile:Ljava/io/File;

    goto/16 :goto_1

    .line 194
    :catch_2
    move-exception v0

    .line 195
    sget-object v1, Lcom/amazon/insights/delivery/FileEventStore;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v2, "An error occurred while attempting to create/open the temporary events file"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    iget-object v0, p0, Lcom/amazon/insights/delivery/FileEventStore;->eventsFile:Ljava/io/File;

    goto/16 :goto_1

    .line 223
    :cond_7
    if-eqz v1, :cond_8

    .line 224
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 226
    :cond_8
    if-eqz v3, :cond_9

    .line 228
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 235
    :cond_9
    :goto_5
    iget-object v0, p0, Lcom/amazon/insights/delivery/FileEventStore;->eventsFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 236
    iget-object v0, p0, Lcom/amazon/insights/delivery/FileEventStore;->eventsFile:Ljava/io/File;

    invoke-virtual {v8, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 237
    sget-object v0, Lcom/amazon/insights/delivery/FileEventStore;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v1, "Failed to rename temp file to events file"

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;)V

    .line 240
    :cond_a
    :try_start_8
    new-instance v0, Ljava/io/File;

    const-string v1, "eventsFile"

    invoke-direct {v0, v7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Lcom/amazon/insights/core/system/FileManager;->createFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/insights/delivery/FileEventStore;->eventsFile:Ljava/io/File;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_4

    .line 241
    :catch_3
    move-exception v0

    .line 242
    sget-object v1, Lcom/amazon/insights/delivery/FileEventStore;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v2, "An error occurred while attempting to create the eventsFile"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 245
    :cond_b
    sget-object v0, Lcom/amazon/insights/delivery/FileEventStore;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v1, "Failed to delete previous events file"

    invoke-virtual {v0, v1}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;)V

    goto :goto_4

    .line 219
    :catch_4
    move-exception v0

    move-object v3, v2

    .line 220
    :goto_6
    :try_start_9
    sget-object v1, Lcom/amazon/insights/delivery/FileEventStore;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v5, "An error occurred while attempting to delete the read events"

    invoke-virtual {v1, v5, v0}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 223
    if-eqz v2, :cond_c

    .line 224
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 226
    :cond_c
    if-eqz v3, :cond_5

    .line 228
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_4

    .line 229
    :catch_5
    move-exception v0

    goto :goto_4

    .line 223
    :catchall_0
    move-exception v0

    move-object v3, v2

    move v1, v4

    :goto_7
    if-eqz v2, :cond_d

    .line 224
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 226
    :cond_d
    if-eqz v3, :cond_e

    .line 228
    :try_start_b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 234
    :cond_e
    :goto_8
    if-nez v1, :cond_10

    .line 235
    iget-object v1, p0, Lcom/amazon/insights/delivery/FileEventStore;->eventsFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 236
    iget-object v1, p0, Lcom/amazon/insights/delivery/FileEventStore;->eventsFile:Ljava/io/File;

    invoke-virtual {v8, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 237
    sget-object v1, Lcom/amazon/insights/delivery/FileEventStore;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v2, "Failed to rename temp file to events file"

    invoke-virtual {v1, v2}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;)V

    .line 240
    :cond_f
    :try_start_c
    new-instance v1, Ljava/io/File;

    const-string v2, "eventsFile"

    invoke-direct {v1, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v6, v1}, Lcom/amazon/insights/core/system/FileManager;->createFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/insights/delivery/FileEventStore;->eventsFile:Ljava/io/File;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 245
    :cond_10
    :goto_9
    throw v0

    .line 241
    :catch_6
    move-exception v1

    .line 242
    sget-object v2, Lcom/amazon/insights/delivery/FileEventStore;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v3, "An error occurred while attempting to create the eventsFile"

    invoke-virtual {v2, v3, v1}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 245
    :cond_11
    sget-object v1, Lcom/amazon/insights/delivery/FileEventStore;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v2, "Failed to delete previous events file"

    invoke-virtual {v1, v2}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;)V

    goto :goto_9

    .line 229
    :catch_7
    move-exception v0

    goto/16 :goto_5

    :catch_8
    move-exception v0

    goto/16 :goto_4

    :catch_9
    move-exception v2

    goto :goto_8

    .line 223
    :catchall_1
    move-exception v0

    move v1, v4

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v2, v1

    move v1, v4

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    move v1, v5

    goto :goto_7

    .line 219
    :catch_a
    move-exception v0

    goto :goto_6

    :catch_b
    move-exception v0

    move-object v2, v1

    goto :goto_6

    .line 216
    :catch_c
    move-exception v0

    move-object v1, v2

    goto/16 :goto_3

    :catch_d
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_3
.end method

.method public static newInstance(Lcom/amazon/insights/core/InsightsContext;)Lcom/amazon/insights/delivery/FileEventStore;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/amazon/insights/delivery/FileEventStore;

    invoke-direct {v0, p0}, Lcom/amazon/insights/delivery/FileEventStore;-><init>(Lcom/amazon/insights/core/InsightsContext;)V

    return-object v0
.end method

.method private tryCloseWriter(Ljava/io/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/insights/delivery/EventStoreException;
        }
    .end annotation

    .prologue
    .line 157
    if-eqz p1, :cond_0

    .line 159
    :try_start_0
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    sget-object v1, Lcom/amazon/insights/delivery/FileEventStore;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v2, "Unable to close writer for events file"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private tryCreateEventsFile()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 112
    iget-object v1, p0, Lcom/amazon/insights/delivery/FileEventStore;->eventsFile:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/insights/delivery/FileEventStore;->eventsFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    :goto_0
    return v0

    .line 116
    :cond_0
    monitor-enter p0

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/amazon/insights/delivery/FileEventStore;->eventsFile:Ljava/io/File;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazon/insights/delivery/FileEventStore;->eventsFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    monitor-exit p0

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 122
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/amazon/insights/delivery/FileEventStore;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v1}, Lcom/amazon/insights/core/InsightsContext;->getSystem()Lcom/amazon/insights/core/system/System;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/insights/core/system/System;->getFileManager()Lcom/amazon/insights/core/system/FileManager;

    move-result-object v1

    .line 123
    const-string v2, "events"

    invoke-interface {v1, v2}, Lcom/amazon/insights/core/system/FileManager;->createDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 124
    new-instance v3, Ljava/io/File;

    const-string v4, "eventsFile"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lcom/amazon/insights/core/system/FileManager;->createFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/insights/delivery/FileEventStore;->eventsFile:Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    sget-object v1, Lcom/amazon/insights/delivery/FileEventStore;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v2, "Unable to open events file"

    invoke-virtual {v1, v2}, Lcom/amazon/insights/core/log/Logger;->deve(Ljava/lang/String;)V

    .line 128
    sget-object v1, Lcom/amazon/insights/delivery/FileEventStore;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v2, "An error occurred while attempting to create/open the events file"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    const/4 v0, 0x0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private tryInitializeWriter()Ljava/io/Writer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/insights/delivery/EventStoreException;
        }
    .end annotation

    .prologue
    .line 135
    .line 137
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/insights/delivery/FileEventStore;->tryCreateEventsFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/amazon/insights/delivery/FileEventStore;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v0}, Lcom/amazon/insights/core/InsightsContext;->getSystem()Lcom/amazon/insights/core/system/System;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/insights/core/system/System;->getFileManager()Lcom/amazon/insights/core/system/FileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/insights/delivery/FileEventStore;->eventsFile:Ljava/io/File;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/amazon/insights/core/system/FileManager;->newOutputStream(Ljava/io/File;Z)Ljava/io/OutputStream;

    move-result-object v0

    .line 139
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 140
    new-instance v0, Lcom/amazon/insights/core/io/EncryptedWriter;

    iget-object v2, p0, Lcom/amazon/insights/delivery/FileEventStore;->secretKey:Ljavax/crypto/SecretKey;

    invoke-direct {v0, v1, v2}, Lcom/amazon/insights/core/io/EncryptedWriter;-><init>(Ljava/io/Writer;Ljavax/crypto/SecretKey;)V

    .line 153
    return-object v0

    .line 142
    :cond_0
    new-instance v0, Lcom/amazon/insights/delivery/EventStoreException;

    const-string v1, "Unable to create eventsFile"

    invoke-direct {v0, v1}, Lcom/amazon/insights/delivery/EventStoreException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/amazon/insights/delivery/EventStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 144
    :catch_0
    move-exception v0

    .line 145
    throw v0

    .line 146
    :catch_1
    move-exception v0

    .line 147
    sget-object v1, Lcom/amazon/insights/delivery/FileEventStore;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v2, "Events file not found to persist event to"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    new-instance v1, Lcom/amazon/insights/delivery/EventStoreException;

    const-string v2, "Unable to open events file writer"

    invoke-direct {v1, v2, v0}, Lcom/amazon/insights/delivery/EventStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 149
    :catch_2
    move-exception v0

    .line 150
    sget-object v1, Lcom/amazon/insights/delivery/FileEventStore;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v2, "Unexpected exception"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    new-instance v1, Lcom/amazon/insights/delivery/EventStoreException;

    const-string v2, "Unexpected error while creating eventsFile writer"

    invoke-direct {v1, v2, v0}, Lcom/amazon/insights/delivery/EventStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public iterator()Lcom/amazon/insights/delivery/EventStore$EventIterator;
    .locals 1

    .prologue
    .line 262
    new-instance v0, Lcom/amazon/insights/delivery/FileEventStore$1;

    invoke-direct {v0, p0}, Lcom/amazon/insights/delivery/FileEventStore$1;-><init>(Lcom/amazon/insights/delivery/FileEventStore;)V

    return-object v0
.end method

.method public put(Ljava/lang/String;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/insights/delivery/EventStoreException;
        }
    .end annotation

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 87
    const/4 v2, 0x0

    .line 88
    iget-object v1, p0, Lcom/amazon/insights/delivery/FileEventStore;->accessLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 90
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/insights/delivery/FileEventStore;->tryInitializeWriter()Ljava/io/Writer;

    move-result-object v2

    .line 91
    if-eqz v2, :cond_0

    .line 92
    iget-object v1, p0, Lcom/amazon/insights/delivery/FileEventStore;->context:Lcom/amazon/insights/core/InsightsContext;

    invoke-interface {v1}, Lcom/amazon/insights/core/InsightsContext;->getConfiguration()Lcom/amazon/insights/core/configuration/Configuration;

    move-result-object v1

    const-string v3, "maxStorageSize"

    const-wide/32 v4, 0x500000

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/amazon/insights/core/configuration/Configuration;->optLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 93
    iget-object v1, p0, Lcom/amazon/insights/delivery/FileEventStore;->eventsFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v8, v1

    add-long/2addr v6, v8

    cmp-long v1, v6, v4

    if-gtz v1, :cond_1

    .line 94
    invoke-virtual {v2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    const/4 v0, 0x1

    .line 104
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/amazon/insights/delivery/FileEventStore;->accessLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 105
    invoke-direct {p0, v2}, Lcom/amazon/insights/delivery/FileEventStore;->tryCloseWriter(Ljava/io/Writer;)V

    .line 108
    :goto_1
    return v0

    .line 98
    :cond_1
    :try_start_1
    sget-object v1, Lcom/amazon/insights/delivery/FileEventStore;->logger:Lcom/amazon/insights/core/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The events file exceeded its allowed size of "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v1

    .line 102
    :try_start_2
    sget-object v3, Lcom/amazon/insights/delivery/FileEventStore;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v4, "Failed to persist the event"

    invoke-virtual {v3, v4, v1}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    iget-object v1, p0, Lcom/amazon/insights/delivery/FileEventStore;->accessLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 105
    invoke-direct {p0, v2}, Lcom/amazon/insights/delivery/FileEventStore;->tryCloseWriter(Ljava/io/Writer;)V

    goto :goto_1

    .line 104
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/insights/delivery/FileEventStore;->accessLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 105
    invoke-direct {p0, v2}, Lcom/amazon/insights/delivery/FileEventStore;->tryCloseWriter(Ljava/io/Writer;)V

    throw v0
.end method
