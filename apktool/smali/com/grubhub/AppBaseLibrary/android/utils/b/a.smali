.class public Lcom/grubhub/AppBaseLibrary/android/utils/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/grubhub/AppBaseLibrary/android/utils/b/a;


# instance fields
.field private b:Lorg/keyczar/Crypter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/utils/b/a;->b()V

    .line 32
    return-void
.end method

.method public static a()Lcom/grubhub/AppBaseLibrary/android/utils/b/a;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/b/a;->a:Lcom/grubhub/AppBaseLibrary/android/utils/b/a;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/b/a;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/b/a;-><init>()V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/b/a;->a:Lcom/grubhub/AppBaseLibrary/android/utils/b/a;

    .line 27
    :cond_0
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/b/a;->a:Lcom/grubhub/AppBaseLibrary/android/utils/b/a;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    const-string v0, ""

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 85
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 70
    :try_start_0
    new-instance v0, Lorg/keyczar/Crypter;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/b/b;

    invoke-direct {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/b/b;-><init>()V

    invoke-direct {v0, v1}, Lorg/keyczar/Crypter;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/b/a;->b:Lorg/keyczar/Crypter;
    :try_end_0
    .catch Lorg/keyczar/exceptions/KeyczarException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    const-string v1, "KEYCZAR_CREATION_ERROR"

    invoke-direct {p0, v1, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/b/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 36
    if-eqz p1, :cond_1

    .line 37
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/b/a;->b:Lorg/keyczar/Crypter;

    if-nez v1, :cond_0

    .line 38
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/utils/b/a;->b()V

    .line 41
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/b/a;->b:Lorg/keyczar/Crypter;

    invoke-virtual {v1, p1}, Lorg/keyczar/Crypter;->encrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/keyczar/exceptions/KeyczarException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 48
    :cond_1
    :goto_0
    return-object v0

    .line 42
    :catch_0
    move-exception v1

    .line 43
    const-string v2, "ENCRYPTION_ERROR"

    invoke-direct {p0, v2, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/b/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 44
    :catch_1
    move-exception v1

    .line 45
    const-string v2, "UNKNOWN_ENCRYPTION_ERROR"

    invoke-direct {p0, v2, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/b/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 53
    if-eqz p1, :cond_1

    .line 54
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/b/a;->b:Lorg/keyczar/Crypter;

    if-nez v1, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/utils/b/a;->b()V

    .line 58
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/b/a;->b:Lorg/keyczar/Crypter;

    invoke-virtual {v1, p1}, Lorg/keyczar/Crypter;->decrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/keyczar/exceptions/KeyczarException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 65
    :cond_1
    :goto_0
    return-object v0

    .line 59
    :catch_0
    move-exception v1

    .line 60
    const-string v2, "DECRYPTION_ERROR"

    invoke-direct {p0, v2, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/b/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 61
    :catch_1
    move-exception v1

    .line 62
    const-string v2, "UNKNOWN_ENCRYPTION_ERROR"

    invoke-direct {p0, v2, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/b/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
