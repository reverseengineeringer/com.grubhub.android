.class public Lcom/paypal/android/sdk/ao;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/ao;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/ao;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(IZZLjava/lang/String;)Lcom/paypal/android/sdk/as;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Creating async client.  networkTimeout="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isTrustAll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useSslPinning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userAgent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/paypal/android/sdk/as;

    invoke-direct {v0}, Lcom/paypal/android/sdk/as;-><init>()V

    invoke-virtual {v0, p0}, Lcom/paypal/android/sdk/as;->a(I)V

    invoke-virtual {v0, p3}, Lcom/paypal/android/sdk/as;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Lcom/paypal/android/sdk/ar;

    invoke-direct {v1}, Lcom/paypal/android/sdk/ar;-><init>()V

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/as;->a(Lorg/apache/http/conn/ssl/SSLSocketFactory;)V

    :goto_0
    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    new-instance v1, Lcom/paypal/android/sdk/dh;

    invoke-direct {v1}, Lcom/paypal/android/sdk/dh;-><init>()V

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/as;->a(Lorg/apache/http/conn/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_1
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/as;->a(Lorg/apache/http/conn/ssl/SSLSocketFactory;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
