.class public Lorg/keyczar/KeyczarTool;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mock:Lorg/keyczar/MockKeyczarReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-object v0, Lorg/keyczar/KeyczarTool;->mock:Lorg/keyczar/MockKeyczarReader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    return-void
.end method

.method private static addKey(Ljava/lang/String;Lorg/keyczar/enums/KeyStatus;Ljava/lang/String;Lorg/keyczar/keyparams/KeyParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 288
    invoke-static {p0, p2}, Lorg/keyczar/KeyczarTool;->createGenericKeyczar(Ljava/lang/String;Ljava/lang/String;)Lorg/keyczar/GenericKeyczar;

    move-result-object v0

    .line 289
    invoke-virtual {v0, p1, p3}, Lorg/keyczar/GenericKeyczar;->addVersion(Lorg/keyczar/enums/KeyStatus;Lorg/keyczar/keyparams/KeyParameters;)V

    .line 290
    invoke-static {v0, p2, p0}, Lorg/keyczar/KeyczarTool;->updateGenericKeyczar(Lorg/keyczar/GenericKeyczar;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method private static create(Ljava/lang/String;Ljava/lang/String;Lorg/keyczar/enums/KeyPurpose;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 318
    const/4 v0, 0x0

    .line 319
    if-nez p2, :cond_0

    .line 320
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "KeyczarTool.MustDefinePurpose"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_0
    sget-object v1, Lorg/keyczar/KeyczarTool$1;->$SwitchMap$org$keyczar$enums$KeyPurpose:[I

    invoke-virtual {p2}, Lorg/keyczar/enums/KeyPurpose;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 354
    :goto_0
    if-nez v0, :cond_5

    .line 355
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "KeyczarTool.UnsupportedPurpose"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v5

    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :pswitch_0
    new-instance v0, Lorg/keyczar/KeyMetadata;

    sget-object v1, Lorg/keyczar/enums/KeyPurpose;->TEST:Lorg/keyczar/enums/KeyPurpose;

    sget-object v2, Lorg/keyczar/DefaultKeyType;->TEST:Lorg/keyczar/DefaultKeyType;

    invoke-direct {v0, p1, v1, v2}, Lorg/keyczar/KeyMetadata;-><init>(Ljava/lang/String;Lorg/keyczar/enums/KeyPurpose;Lorg/keyczar/interfaces/KeyType;)V

    goto :goto_0

    .line 328
    :pswitch_1
    if-eqz p3, :cond_3

    .line 329
    const-string v0, "rsa"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    new-instance v0, Lorg/keyczar/KeyMetadata;

    sget-object v1, Lorg/keyczar/enums/KeyPurpose;->SIGN_AND_VERIFY:Lorg/keyczar/enums/KeyPurpose;

    sget-object v2, Lorg/keyczar/DefaultKeyType;->RSA_PRIV:Lorg/keyczar/DefaultKeyType;

    invoke-direct {v0, p1, v1, v2}, Lorg/keyczar/KeyMetadata;-><init>(Ljava/lang/String;Lorg/keyczar/enums/KeyPurpose;Lorg/keyczar/interfaces/KeyType;)V

    goto :goto_0

    .line 332
    :cond_1
    const-string v0, "ec"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 333
    new-instance v0, Lorg/keyczar/KeyMetadata;

    sget-object v1, Lorg/keyczar/enums/KeyPurpose;->SIGN_AND_VERIFY:Lorg/keyczar/enums/KeyPurpose;

    sget-object v2, Lorg/keyczar/DefaultKeyType;->EC_PRIV:Lorg/keyczar/DefaultKeyType;

    invoke-direct {v0, p1, v1, v2}, Lorg/keyczar/KeyMetadata;-><init>(Ljava/lang/String;Lorg/keyczar/enums/KeyPurpose;Lorg/keyczar/interfaces/KeyType;)V

    goto :goto_0

    .line 336
    :cond_2
    new-instance v0, Lorg/keyczar/KeyMetadata;

    sget-object v1, Lorg/keyczar/enums/KeyPurpose;->SIGN_AND_VERIFY:Lorg/keyczar/enums/KeyPurpose;

    sget-object v2, Lorg/keyczar/DefaultKeyType;->DSA_PRIV:Lorg/keyczar/DefaultKeyType;

    invoke-direct {v0, p1, v1, v2}, Lorg/keyczar/KeyMetadata;-><init>(Ljava/lang/String;Lorg/keyczar/enums/KeyPurpose;Lorg/keyczar/interfaces/KeyType;)V

    goto :goto_0

    .line 340
    :cond_3
    new-instance v0, Lorg/keyczar/KeyMetadata;

    sget-object v1, Lorg/keyczar/enums/KeyPurpose;->SIGN_AND_VERIFY:Lorg/keyczar/enums/KeyPurpose;

    sget-object v2, Lorg/keyczar/DefaultKeyType;->HMAC_SHA1:Lorg/keyczar/DefaultKeyType;

    invoke-direct {v0, p1, v1, v2}, Lorg/keyczar/KeyMetadata;-><init>(Ljava/lang/String;Lorg/keyczar/enums/KeyPurpose;Lorg/keyczar/interfaces/KeyType;)V

    goto :goto_0

    .line 345
    :pswitch_2
    if-eqz p3, :cond_4

    .line 346
    new-instance v0, Lorg/keyczar/KeyMetadata;

    sget-object v1, Lorg/keyczar/enums/KeyPurpose;->DECRYPT_AND_ENCRYPT:Lorg/keyczar/enums/KeyPurpose;

    sget-object v2, Lorg/keyczar/DefaultKeyType;->RSA_PRIV:Lorg/keyczar/DefaultKeyType;

    invoke-direct {v0, p1, v1, v2}, Lorg/keyczar/KeyMetadata;-><init>(Ljava/lang/String;Lorg/keyczar/enums/KeyPurpose;Lorg/keyczar/interfaces/KeyType;)V

    goto :goto_0

    .line 349
    :cond_4
    new-instance v0, Lorg/keyczar/KeyMetadata;

    sget-object v1, Lorg/keyczar/enums/KeyPurpose;->DECRYPT_AND_ENCRYPT:Lorg/keyczar/enums/KeyPurpose;

    sget-object v2, Lorg/keyczar/DefaultKeyType;->AES:Lorg/keyczar/DefaultKeyType;

    invoke-direct {v0, p1, v1, v2}, Lorg/keyczar/KeyMetadata;-><init>(Ljava/lang/String;Lorg/keyczar/enums/KeyPurpose;Lorg/keyczar/interfaces/KeyType;)V

    goto :goto_0

    .line 358
    :cond_5
    sget-object v1, Lorg/keyczar/KeyczarTool;->mock:Lorg/keyczar/MockKeyczarReader;

    if-nez v1, :cond_8

    .line 359
    if-nez p0, :cond_6

    .line 360
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "KeyczarTool.MustDefineLocation"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_6
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "meta"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 365
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v2, "KeyczarTool.FileExists"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_7
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 370
    invoke-virtual {v0}, Lorg/keyczar/KeyMetadata;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 371
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :goto_1
    return-void

    .line 372
    :catch_0
    move-exception v0

    .line 373
    new-instance v2, Lorg/keyczar/exceptions/KeyczarException;

    const-string v3, "KeyczarTool.UnableToWrite"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 377
    :cond_8
    sget-object v1, Lorg/keyczar/KeyczarTool;->mock:Lorg/keyczar/MockKeyczarReader;

    invoke-virtual {v1, v0}, Lorg/keyczar/MockKeyczarReader;->setMetadata(Lorg/keyczar/KeyMetadata;)V

    goto :goto_1

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static createGenericKeyczar(Ljava/lang/String;)Lorg/keyczar/GenericKeyczar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 485
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/keyczar/KeyczarTool;->createGenericKeyczar(Ljava/lang/String;Ljava/lang/String;)Lorg/keyczar/GenericKeyczar;

    move-result-object v0

    return-object v0
.end method

.method private static createGenericKeyczar(Ljava/lang/String;Ljava/lang/String;)Lorg/keyczar/GenericKeyczar;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 498
    sget-object v0, Lorg/keyczar/KeyczarTool;->mock:Lorg/keyczar/MockKeyczarReader;

    if-eqz v0, :cond_0

    .line 499
    new-instance v0, Lorg/keyczar/GenericKeyczar;

    sget-object v1, Lorg/keyczar/KeyczarTool;->mock:Lorg/keyczar/MockKeyczarReader;

    invoke-direct {v0, v1}, Lorg/keyczar/GenericKeyczar;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V

    .line 510
    :goto_0
    return-object v0

    .line 501
    :cond_0
    if-nez p0, :cond_1

    .line 502
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "KeyczarTool.NeedLocation"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "KeyczarTool.Location"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :cond_1
    new-instance v1, Lorg/keyczar/KeyczarFileReader;

    invoke-direct {v1, p0}, Lorg/keyczar/KeyczarFileReader;-><init>(Ljava/lang/String;)V

    .line 506
    if-eqz p1, :cond_2

    .line 507
    new-instance v2, Lorg/keyczar/Crypter;

    invoke-direct {v2, p1}, Lorg/keyczar/Crypter;-><init>(Ljava/lang/String;)V

    .line 508
    new-instance v0, Lorg/keyczar/KeyczarEncryptedReader;

    invoke-direct {v0, v1, v2}, Lorg/keyczar/KeyczarEncryptedReader;-><init>(Lorg/keyczar/interfaces/KeyczarReader;Lorg/keyczar/Crypter;)V

    .line 510
    :goto_1
    new-instance v1, Lorg/keyczar/GenericKeyczar;

    invoke-direct {v1, v0}, Lorg/keyczar/GenericKeyczar;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private static demote(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 412
    if-gez p1, :cond_0

    .line 413
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "KeyczarTool.MissingVersion"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_0
    invoke-static {p0}, Lorg/keyczar/KeyczarTool;->createGenericKeyczar(Ljava/lang/String;)Lorg/keyczar/GenericKeyczar;

    move-result-object v0

    .line 417
    invoke-virtual {v0, p1}, Lorg/keyczar/GenericKeyczar;->demote(I)V

    .line 418
    invoke-static {v0, p0}, Lorg/keyczar/KeyczarTool;->updateGenericKeyczar(Lorg/keyczar/GenericKeyczar;Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method private static exportKey(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 168
    if-gez p2, :cond_0

    .line 169
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "KeyczarTool.MissingVersion"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    invoke-static {p0, p1}, Lorg/keyczar/KeyczarTool;->createGenericKeyczar(Ljava/lang/String;Ljava/lang/String;)Lorg/keyczar/GenericKeyczar;

    move-result-object v0

    .line 174
    invoke-virtual {v0, p2}, Lorg/keyczar/GenericKeyczar;->getVersion(I)Lorg/keyczar/KeyVersion;

    move-result-object v1

    .line 175
    invoke-virtual {v0, v1}, Lorg/keyczar/GenericKeyczar;->getKey(Lorg/keyczar/KeyVersion;)Lorg/keyczar/KeyczarKey;

    move-result-object v0

    .line 176
    invoke-virtual {v0, p4}, Lorg/keyczar/KeyczarKey;->getPemString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-nez v2, :cond_1

    .line 181
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v2, ""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    new-instance v1, Lorg/keyczar/exceptions/KeyczarException;

    const-string v2, ""

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 183
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 184
    const-string v1, "UTF8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 188
    return-void
.end method

.method private static getFileStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 230
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "KeyczarTool.FileNotFound"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getImportingKeyczar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/keyczar/enums/KeyPurpose;)Lorg/keyczar/GenericKeyczar;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-static {p1}, Lorg/keyczar/KeyczarTool;->getPadding(Ljava/lang/String;)Lorg/keyczar/enums/RsaPadding;

    move-result-object v2

    .line 212
    invoke-static {p0}, Lorg/keyczar/KeyczarTool;->getFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 214
    :try_start_0
    new-instance v0, Lorg/keyczar/GenericKeyczar;

    new-instance v3, Lorg/keyczar/X509CertificateReader;

    invoke-direct {v3, p3, v1, v2}, Lorg/keyczar/X509CertificateReader;-><init>(Lorg/keyczar/enums/KeyPurpose;Ljava/io/InputStream;Lorg/keyczar/enums/RsaPadding;)V

    invoke-direct {v0, v3}, Lorg/keyczar/GenericKeyczar;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V
    :try_end_0
    .catch Lorg/keyczar/exceptions/KeyczarException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :goto_0
    return-object v0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    :try_start_1
    invoke-virtual {v0}, Lorg/keyczar/exceptions/KeyczarException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/security/cert/CertificateException;

    if-eqz v3, :cond_0

    .line 218
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 219
    invoke-static {p0}, Lorg/keyczar/KeyczarTool;->getFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 220
    new-instance v0, Lorg/keyczar/GenericKeyczar;

    new-instance v3, Lorg/keyczar/PkcsKeyReader;

    invoke-direct {v3, p3, v1, v2, p2}, Lorg/keyczar/PkcsKeyReader;-><init>(Lorg/keyczar/enums/KeyPurpose;Ljava/io/InputStream;Lorg/keyczar/enums/RsaPadding;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lorg/keyczar/GenericKeyczar;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 222
    :cond_0
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public static getMock()Lorg/keyczar/MockKeyczarReader;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lorg/keyczar/KeyczarTool;->mock:Lorg/keyczar/MockKeyczarReader;

    return-object v0
.end method

.method private static getPadding(Ljava/lang/String;)Lorg/keyczar/enums/RsaPadding;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 294
    const/4 v0, 0x0

    .line 295
    if-eqz p0, :cond_0

    .line 297
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/keyczar/enums/RsaPadding;->valueOf(Ljava/lang/String;)Lorg/keyczar/enums/RsaPadding;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 302
    :cond_0
    return-object v0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "InvalidPadding"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static importKey(Ljava/lang/String;Ljava/lang/String;Lorg/keyczar/enums/KeyStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-static {p0, p3}, Lorg/keyczar/KeyczarTool;->createGenericKeyczar(Ljava/lang/String;Ljava/lang/String;)Lorg/keyczar/GenericKeyczar;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Lorg/keyczar/GenericKeyczar;->getMetadata()Lorg/keyczar/KeyMetadata;

    move-result-object v1

    .line 195
    invoke-virtual {v1}, Lorg/keyczar/KeyMetadata;->getPurpose()Lorg/keyczar/enums/KeyPurpose;

    move-result-object v2

    invoke-static {p1, p4, p5, v2}, Lorg/keyczar/KeyczarTool;->getImportingKeyczar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/keyczar/enums/KeyPurpose;)Lorg/keyczar/GenericKeyczar;

    move-result-object v2

    .line 199
    invoke-virtual {v2}, Lorg/keyczar/GenericKeyczar;->getMetadata()Lorg/keyczar/KeyMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lorg/keyczar/KeyMetadata;->getType()Lorg/keyczar/interfaces/KeyType;

    move-result-object v3

    .line 200
    invoke-virtual {v1}, Lorg/keyczar/KeyMetadata;->getType()Lorg/keyczar/interfaces/KeyType;

    move-result-object v4

    if-eq v4, v3, :cond_0

    invoke-virtual {v0}, Lorg/keyczar/GenericKeyczar;->getVersions()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 202
    invoke-virtual {v1, v3}, Lorg/keyczar/KeyMetadata;->setType(Lorg/keyczar/interfaces/KeyType;)V

    .line 205
    :cond_0
    invoke-virtual {v2}, Lorg/keyczar/GenericKeyczar;->getPrimaryKey()Lorg/keyczar/KeyczarKey;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/keyczar/GenericKeyczar;->addVersion(Lorg/keyczar/enums/KeyStatus;Lorg/keyczar/KeyczarKey;)V

    .line 206
    invoke-static {v0, p3, p0}, Lorg/keyczar/KeyczarTool;->updateGenericKeyczar(Lorg/keyczar/GenericKeyczar;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 16

    .prologue
    .line 91
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 92
    move-object/from16 v0, p0

    array-length v1, v0

    if-nez v1, :cond_0

    .line 93
    invoke-static {}, Lorg/keyczar/KeyczarTool;->printUsage()V

    .line 164
    :goto_0
    return-void

    .line 96
    :cond_0
    :try_start_0
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 97
    move-object/from16 v0, p0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, p0, v1

    .line 98
    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 99
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 100
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 101
    array-length v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 102
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Lorg/keyczar/enums/Flag;->getFlag(Ljava/lang/String;)Lorg/keyczar/enums/Flag;

    move-result-object v4

    .line 103
    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-virtual {v13, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 106
    :cond_2
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 159
    :catch_0
    move-exception v1

    .line 160
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    invoke-static {}, Lorg/keyczar/KeyczarTool;->printUsage()V

    goto :goto_0

    .line 110
    :cond_3
    :try_start_1
    sget-object v1, Lorg/keyczar/enums/Flag;->LOCATION:Lorg/keyczar/enums/Flag;

    invoke-virtual {v13, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 111
    if-eqz v1, :cond_4

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    :cond_4
    sget-object v2, Lorg/keyczar/enums/Flag;->PURPOSE:Lorg/keyczar/enums/Flag;

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lorg/keyczar/enums/KeyPurpose;->getPurpose(Ljava/lang/String;)Lorg/keyczar/enums/KeyPurpose;

    move-result-object v14

    .line 115
    sget-object v2, Lorg/keyczar/enums/Flag;->STATUS:Lorg/keyczar/enums/Flag;

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lorg/keyczar/enums/KeyStatus;->getStatus(Ljava/lang/String;)Lorg/keyczar/enums/KeyStatus;

    move-result-object v3

    .line 116
    sget-object v2, Lorg/keyczar/enums/Flag;->ASYMMETRIC:Lorg/keyczar/enums/Flag;

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 117
    sget-object v2, Lorg/keyczar/enums/Flag;->CRYPTER:Lorg/keyczar/enums/Flag;

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 118
    sget-object v2, Lorg/keyczar/enums/Flag;->DESTINATION:Lorg/keyczar/enums/Flag;

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    .line 119
    sget-object v2, Lorg/keyczar/enums/Flag;->NAME:Lorg/keyczar/enums/Flag;

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    .line 120
    sget-object v2, Lorg/keyczar/enums/Flag;->PADDING:Lorg/keyczar/enums/Flag;

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 121
    sget-object v2, Lorg/keyczar/enums/Flag;->PASSPHRASE:Lorg/keyczar/enums/Flag;

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 122
    sget-object v2, Lorg/keyczar/enums/Flag;->PEMFILE:Lorg/keyczar/enums/Flag;

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 123
    sget-object v10, Lorg/keyczar/enums/Flag;->VERSION:Lorg/keyczar/enums/Flag;

    invoke-virtual {v13, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 125
    sget-object v15, Lorg/keyczar/KeyczarTool$1;->$SwitchMap$org$keyczar$enums$Command:[I

    const/4 v11, 0x0

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lorg/keyczar/enums/Command;->getCommand(Ljava/lang/String;)Lorg/keyczar/enums/Command;

    move-result-object v11

    invoke-virtual {v11}, Lorg/keyczar/enums/Command;->ordinal()I

    move-result v11

    aget v11, v15, v11

    packed-switch v11, :pswitch_data_0

    goto/16 :goto_0

    .line 127
    :pswitch_0
    invoke-static {v1, v9, v14, v7}, Lorg/keyczar/KeyczarTool;->create(Ljava/lang/String;Ljava/lang/String;Lorg/keyczar/enums/KeyPurpose;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 130
    :pswitch_1
    new-instance v2, Lorg/keyczar/KeyczarToolKeyParameters;

    invoke-direct {v2, v13}, Lorg/keyczar/KeyczarToolKeyParameters;-><init>(Ljava/util/HashMap;)V

    invoke-static {v1, v3, v4, v2}, Lorg/keyczar/KeyczarTool;->addKey(Ljava/lang/String;Lorg/keyczar/enums/KeyStatus;Ljava/lang/String;Lorg/keyczar/keyparams/KeyParameters;)V

    goto/16 :goto_0

    .line 133
    :pswitch_2
    invoke-static {v1, v8}, Lorg/keyczar/KeyczarTool;->publicKeys(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 136
    :pswitch_3
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lorg/keyczar/KeyczarTool;->promote(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 139
    :pswitch_4
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lorg/keyczar/KeyczarTool;->demote(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 142
    :pswitch_5
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lorg/keyczar/KeyczarTool;->revoke(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 145
    :pswitch_6
    const/4 v2, 0x0

    .line 146
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_5

    .line 147
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 149
    :cond_5
    invoke-static {v2, v1, v8, v4}, Lorg/keyczar/KeyczarTool;->useKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 152
    :pswitch_7
    invoke-static/range {v1 .. v6}, Lorg/keyczar/KeyczarTool;->importKey(Ljava/lang/String;Ljava/lang/String;Lorg/keyczar/enums/KeyStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 156
    :pswitch_8
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v4, v3, v2, v6}, Lorg/keyczar/KeyczarTool;->exportKey(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private static printUsage()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 470
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 471
    invoke-static {}, Lorg/keyczar/enums/Command;->values()[Lorg/keyczar/enums/Command;

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 472
    invoke-virtual {v5}, Lorg/keyczar/enums/Command;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 475
    :cond_0
    invoke-static {}, Lorg/keyczar/enums/Flag;->values()[Lorg/keyczar/enums/Flag;

    move-result-object v1

    array-length v3, v1

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    .line 476
    invoke-virtual {v4}, Lorg/keyczar/enums/Flag;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 479
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "KeyczarTool.Usage"

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 481
    return-void
.end method

.method private static promote(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 392
    if-gez p1, :cond_0

    .line 393
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "KeyczarTool.MissingVersion"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_0
    invoke-static {p0}, Lorg/keyczar/KeyczarTool;->createGenericKeyczar(Ljava/lang/String;)Lorg/keyczar/GenericKeyczar;

    move-result-object v0

    .line 397
    invoke-virtual {v0, p1}, Lorg/keyczar/GenericKeyczar;->promote(I)V

    .line 398
    invoke-static {v0, p0}, Lorg/keyczar/KeyczarTool;->updateGenericKeyczar(Lorg/keyczar/GenericKeyczar;Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method private static publicKeys(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 431
    sget-object v0, Lorg/keyczar/KeyczarTool;->mock:Lorg/keyczar/MockKeyczarReader;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 432
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "KeyczarTool.MustDefineDestination"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_0
    invoke-static {p0}, Lorg/keyczar/KeyczarTool;->createGenericKeyczar(Ljava/lang/String;)Lorg/keyczar/GenericKeyczar;

    move-result-object v0

    .line 436
    invoke-virtual {v0, p1}, Lorg/keyczar/GenericKeyczar;->publicKeyExport(Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method private static revoke(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 451
    invoke-static {p0}, Lorg/keyczar/KeyczarTool;->createGenericKeyczar(Ljava/lang/String;)Lorg/keyczar/GenericKeyczar;

    move-result-object v0

    .line 452
    invoke-virtual {v0, p1}, Lorg/keyczar/GenericKeyczar;->revoke(I)V

    .line 454
    invoke-static {v0, p0}, Lorg/keyczar/KeyczarTool;->updateGenericKeyczar(Lorg/keyczar/GenericKeyczar;Ljava/lang/String;)V

    .line 455
    sget-object v0, Lorg/keyczar/KeyczarTool;->mock:Lorg/keyczar/MockKeyczarReader;

    if-nez v0, :cond_0

    .line 456
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 458
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "KeyczarTool.UnableToDelete"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_0
    sget-object v0, Lorg/keyczar/KeyczarTool;->mock:Lorg/keyczar/MockKeyczarReader;

    invoke-virtual {v0, p1}, Lorg/keyczar/MockKeyczarReader;->removeKey(I)V

    .line 464
    :cond_1
    return-void
.end method

.method public static setReader(Lorg/keyczar/MockKeyczarReader;)V
    .locals 0

    .prologue
    .line 71
    sput-object p0, Lorg/keyczar/KeyczarTool;->mock:Lorg/keyczar/MockKeyczarReader;

    .line 72
    return-void
.end method

.method private static updateGenericKeyczar(Lorg/keyczar/GenericKeyczar;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 515
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/keyczar/KeyczarTool;->updateGenericKeyczar(Lorg/keyczar/GenericKeyczar;Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    return-void
.end method

.method private static updateGenericKeyczar(Lorg/keyczar/GenericKeyczar;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;
        }
    .end annotation

    .prologue
    .line 520
    sget-object v0, Lorg/keyczar/KeyczarTool;->mock:Lorg/keyczar/MockKeyczarReader;

    if-eqz v0, :cond_0

    .line 521
    sget-object v0, Lorg/keyczar/KeyczarTool;->mock:Lorg/keyczar/MockKeyczarReader;

    invoke-virtual {p0}, Lorg/keyczar/GenericKeyczar;->getMetadata()Lorg/keyczar/KeyMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/keyczar/MockKeyczarReader;->setMetadata(Lorg/keyczar/KeyMetadata;)V

    .line 522
    invoke-virtual {p0}, Lorg/keyczar/GenericKeyczar;->getVersions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/keyczar/KeyVersion;

    .line 523
    sget-object v2, Lorg/keyczar/KeyczarTool;->mock:Lorg/keyczar/MockKeyczarReader;

    invoke-virtual {v0}, Lorg/keyczar/KeyVersion;->getVersionNumber()I

    move-result v3

    invoke-virtual {p0, v0}, Lorg/keyczar/GenericKeyczar;->getKey(Lorg/keyczar/KeyVersion;)Lorg/keyczar/KeyczarKey;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/keyczar/MockKeyczarReader;->setKey(ILorg/keyczar/KeyczarKey;)V

    goto :goto_0

    .line 525
    :cond_0
    if-eqz p1, :cond_2

    .line 526
    new-instance v0, Lorg/keyczar/Encrypter;

    invoke-direct {v0, p1}, Lorg/keyczar/Encrypter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, v0}, Lorg/keyczar/GenericKeyczar;->writeEncrypted(Ljava/lang/String;Lorg/keyczar/Encrypter;)V

    .line 530
    :cond_1
    :goto_1
    return-void

    .line 528
    :cond_2
    invoke-virtual {p0, p2}, Lorg/keyczar/GenericKeyczar;->write(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static useKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/keyczar/exceptions/KeyczarException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    if-nez p0, :cond_1

    .line 239
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 243
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 249
    :cond_1
    invoke-static {p1, p3}, Lorg/keyczar/KeyczarTool;->createGenericKeyczar(Ljava/lang/String;Ljava/lang/String;)Lorg/keyczar/GenericKeyczar;

    move-result-object v2

    .line 251
    const-string v0, ""

    .line 252
    new-instance v1, Lorg/keyczar/KeyczarFileReader;

    invoke-direct {v1, p1}, Lorg/keyczar/KeyczarFileReader;-><init>(Ljava/lang/String;)V

    .line 253
    if-eqz p3, :cond_3

    .line 254
    new-instance v3, Lorg/keyczar/Crypter;

    invoke-direct {v3, p3}, Lorg/keyczar/Crypter;-><init>(Ljava/lang/String;)V

    .line 255
    new-instance v0, Lorg/keyczar/KeyczarEncryptedReader;

    invoke-direct {v0, v1, v3}, Lorg/keyczar/KeyczarEncryptedReader;-><init>(Lorg/keyczar/interfaces/KeyczarReader;Lorg/keyczar/Crypter;)V

    .line 258
    :goto_1
    sget-object v1, Lorg/keyczar/KeyczarTool$1;->$SwitchMap$org$keyczar$enums$KeyPurpose:[I

    invoke-virtual {v2}, Lorg/keyczar/GenericKeyczar;->getMetadata()Lorg/keyczar/KeyMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lorg/keyczar/KeyMetadata;->getPurpose()Lorg/keyczar/enums/KeyPurpose;

    move-result-object v3

    invoke-virtual {v3}, Lorg/keyczar/enums/KeyPurpose;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 268
    new-instance v0, Lorg/keyczar/exceptions/KeyczarException;

    const-string v1, "KeyczarTool.UnsupportedPurpose"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2}, Lorg/keyczar/GenericKeyczar;->getMetadata()Lorg/keyczar/KeyMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lorg/keyczar/KeyMetadata;->getPurpose()Lorg/keyczar/enums/KeyPurpose;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Lorg/keyczar/i18n/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/keyczar/exceptions/KeyczarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :pswitch_0
    new-instance v1, Lorg/keyczar/Crypter;

    invoke-direct {v1, v0}, Lorg/keyczar/Crypter;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V

    .line 261
    invoke-virtual {v1, p0}, Lorg/keyczar/Crypter;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    :goto_2
    if-nez p2, :cond_2

    .line 273
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 277
    :goto_3
    return-void

    .line 264
    :pswitch_1
    new-instance v1, Lorg/keyczar/Signer;

    invoke-direct {v1, v0}, Lorg/keyczar/Signer;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V

    .line 265
    invoke-virtual {v1, p0}, Lorg/keyczar/Signer;->sign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 275
    :cond_2
    invoke-virtual {v2, v0, p2}, Lorg/keyczar/GenericKeyczar;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_1

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
