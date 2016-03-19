.class public abstract Lorg/keyczar/Keyczar;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"

.field public static final FORMAT_BYTES:[B

.field public static final FORMAT_VERSION:B = 0x0t

.field public static final HEADER_SIZE:I = 0x5

.field public static final KEY_HASH_SIZE:I = 0x4

.field private static final LOG:Lorg/a/a/c;


# instance fields
.field final hashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/keyczar/Keyczar$KeyHash;",
            "Lorg/keyczar/KeyczarKey;",
            ">;"
        }
    .end annotation
.end field

.field final kmd:Lorg/keyczar/KeyMetadata;

.field primaryVersion:Lorg/keyczar/KeyVersion;

.field final versionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/keyczar/KeyVersion;",
            "Lorg/keyczar/KeyczarKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    const-class v0, Lorg/keyczar/Keyczar;

    invoke-static {v0}, Lorg/a/a/c;->a(Ljava/lang/Class;)Lorg/a/a/c;

    move-result-object v0

    sput-object v0, Lorg/keyczar/Keyczar;->LOG:Lorg/a/a/c;

    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [B

    aput-byte v1, v0, v1

    sput-object v0, Lorg/keyczar/Keyczar;->FORMAT_BYTES:[B

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
    .line 115
    new-instance v0, Lorg/keyczar/KeyczarFileReader;

    invoke-direct {v0, p1}, Lorg/keyczar/KeyczarFileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/keyczar/Keyczar;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Lorg/keyczar/interfaces/KeyczarReader;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/keyczar/Keyczar;->versionMap:Ljava/util/HashMap;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/keyczar/Keyczar;->hashMap:Ljava/util/HashMap;

    .line 81
    invoke-interface {p1}, Lorg/keyczar/interfaces/KeyczarReader;->getMetadata()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/keyczar/KeyMetadata;->read(Ljava/lang/String;)Lorg/keyczar/KeyMetadata;

    move-result-object v0

    iput-object v0, p0, Lorg/keyczar/Keyczar;->kmd:Lorg/keyczar/KeyMetadata;

    .line 82
    iget-object v0, p0, Lorg/keyczar/Keyczar;->kmd:Lorg/keyczar/KeyMetadata;

    invoke-virtual {v0}, Lorg/keyczar/KeyMetadata;->getPurpose()Lorg/keyczar/enums/KeyPurpose;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/keyczar/Keyczar;->isAcceptablePurpose(Lorg/keyczar/enums/KeyPurpose;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "Keyczar.UnacceptablePurpose"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/keyczar/Keyczar;->kmd:Lorg/keyczar/KeyMetadata;

    invoke-virtual {v3}, Lorg/keyczar/KeyMetadata;->getPurpose()Lorg/keyczar/enums/KeyPurpose;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/keyczar/Keyczar;->kmd:Lorg/keyczar/KeyMetadata;

    invoke-virtual {v0}, Lorg/keyczar/KeyMetadata;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lorg/keyczar/interfaces/EncryptedReader;

    if-nez v0, :cond_1

    .line 88
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "Keyczar.NeedEncryptedReader"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1
    iget-object v0, p0, Lorg/keyczar/Keyczar;->kmd:Lorg/keyczar/KeyMetadata;

    invoke-virtual {v0}, Lorg/keyczar/KeyMetadata;->getVersions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/KeyVersion;

    .line 92
    invoke-virtual {v0}, Lorg/keyczar/KeyVersion;->getStatus()Lorg/keyczar/enums/KeyStatus;

    move-result-object v2

    sget-object v3, Lorg/keyczar/enums/KeyStatus;->PRIMARY:Lorg/keyczar/enums/KeyStatus;

    if-ne v2, v3, :cond_3

    .line 93
    iget-object v2, p0, Lorg/keyczar/Keyczar;->primaryVersion:Lorg/keyczar/KeyVersion;

    if-eqz v2, :cond_2

    .line 94
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "Keyczar.SinglePrimary"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_2
    iput-object v0, p0, Lorg/keyczar/Keyczar;->primaryVersion:Lorg/keyczar/KeyVersion;

    .line 99
    :cond_3
    invoke-virtual {v0}, Lorg/keyczar/KeyVersion;->getVersionNumber()I

    move-result v2

    invoke-interface {p1, v2}, Lorg/keyczar/interfaces/KeyczarReader;->getKey(I)Ljava/lang/String;

    move-result-object v2

    .line 100
    iget-object v3, p0, Lorg/keyczar/Keyczar;->kmd:Lorg/keyczar/KeyMetadata;

    invoke-virtual {v3}, Lorg/keyczar/KeyMetadata;->getType()Lorg/keyczar/interfaces/KeyType;

    move-result-object v3

    invoke-interface {v3}, Lorg/keyczar/interfaces/KeyType;->getBuilder()Lorg/keyczar/interfaces/KeyType$Builder;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/keyczar/interfaces/KeyType$Builder;->read(Ljava/lang/String;)Lorg/keyczar/KeyczarKey;

    move-result-object v2

    .line 101
    sget-object v3, Lorg/keyczar/Keyczar;->LOG:Lorg/a/a/c;

    const-string v4, "Keyczar.ReadVersion"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-static {v4, v5}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/a/a/c;->a(Ljava/lang/Object;)V

    .line 102
    iget-object v3, p0, Lorg/keyczar/Keyczar;->hashMap:Ljava/util/HashMap;

    new-instance v4, Lorg/keyczar/Keyczar$KeyHash;

    invoke-virtual {v2}, Lorg/keyczar/KeyczarKey;->hash()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, p0, v5, v6}, Lorg/keyczar/Keyczar$KeyHash;-><init>(Lorg/keyczar/Keyczar;[BLorg/keyczar/Keyczar$1;)V

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v3, p0, Lorg/keyczar/Keyczar;->versionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 105
    :cond_4
    return-void
.end method


# virtual methods
.method addKey(Lorg/keyczar/KeyVersion;Lorg/keyczar/KeyczarKey;)V
    .locals 4

    .prologue
    .line 131
    iget-object v0, p0, Lorg/keyczar/Keyczar;->hashMap:Ljava/util/HashMap;

    new-instance v1, Lorg/keyczar/Keyczar$KeyHash;

    invoke-virtual {p2}, Lorg/keyczar/KeyczarKey;->hash()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lorg/keyczar/Keyczar$KeyHash;-><init>(Lorg/keyczar/Keyczar;[BLorg/keyczar/Keyczar$1;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lorg/keyczar/Keyczar;->versionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lorg/keyczar/Keyczar;->kmd:Lorg/keyczar/KeyMetadata;

    invoke-virtual {v0, p1}, Lorg/keyczar/KeyMetadata;->addVersion(Lorg/keyczar/KeyVersion;)Z

    .line 134
    return-void
.end method

.method getKey([B)Lorg/keyczar/KeyczarKey;
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lorg/keyczar/Keyczar;->hashMap:Ljava/util/HashMap;

    new-instance v1, Lorg/keyczar/Keyczar$KeyHash;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lorg/keyczar/Keyczar$KeyHash;-><init>(Lorg/keyczar/Keyczar;[BLorg/keyczar/Keyczar$1;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/KeyczarKey;

    return-object v0
.end method

.method getPrimaryKey()Lorg/keyczar/KeyczarKey;
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lorg/keyczar/Keyczar;->primaryVersion:Lorg/keyczar/KeyVersion;

    if-nez v0, :cond_0

    .line 138
    const/4 v0, 0x0

    .line 140
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/keyczar/Keyczar;->versionMap:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/keyczar/Keyczar;->primaryVersion:Lorg/keyczar/KeyVersion;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/KeyczarKey;

    goto :goto_0
.end method

.method abstract isAcceptablePurpose(Lorg/keyczar/enums/KeyPurpose;)Z
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/keyczar/Keyczar;->kmd:Lorg/keyczar/KeyMetadata;

    invoke-virtual {v0}, Lorg/keyczar/KeyMetadata;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
