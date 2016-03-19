.class public final Lcom/amazon/insights/core/http/ClientInfoInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/insights/core/http/HttpClient$Interceptor;


# static fields
.field static final CLIENT_INFO_HEADER_NAME:Ljava/lang/String; = "x-amzn-ClientInfo"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p0, p1}, Lcom/amazon/insights/core/http/ClientInfoInterceptor;->setContext(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method private getClientInfo()Lcom/amazon/insights/core/http/ClientInfoInterceptor$ClientInfo;
    .locals 4

    .prologue
    .line 51
    new-instance v1, Lcom/amazon/insights/core/http/ClientInfoInterceptor$ClientInfo;

    invoke-direct {v1}, Lcom/amazon/insights/core/http/ClientInfoInterceptor$ClientInfo;-><init>()V

    .line 53
    const-string v0, "Android"

    invoke-virtual {v1, v0}, Lcom/amazon/insights/core/http/ClientInfoInterceptor$ClientInfo;->setOS(Ljava/lang/String;)V

    .line 54
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/amazon/insights/core/http/ClientInfoInterceptor$ClientInfo;->setOSVersion(Ljava/lang/String;)V

    .line 55
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/amazon/insights/core/http/ClientInfoInterceptor$ClientInfo;->setModel(Ljava/lang/String;)V

    .line 56
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/amazon/insights/core/http/ClientInfoInterceptor$ClientInfo;->setManufacturer(Ljava/lang/String;)V

    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/insights/core/http/ClientInfoInterceptor;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 60
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/insights/core/http/ClientInfoInterceptor$ClientInfo;->setCarrier(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/amazon/insights/core/http/ClientInfoInterceptor;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 71
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/insights/core/http/ClientInfoInterceptor$ClientInfo;->setNetworkType(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    :goto_1
    return-object v1

    .line 63
    :cond_0
    :try_start_2
    const-string v0, "Unknown"

    invoke-virtual {v1, v0}, Lcom/amazon/insights/core/http/ClientInfoInterceptor$ClientInfo;->setCarrier(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    const-string v0, "Unknown"

    invoke-virtual {v1, v0}, Lcom/amazon/insights/core/http/ClientInfoInterceptor$ClientInfo;->setCarrier(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_1
    :try_start_3
    const-string v0, "Unknown"

    invoke-virtual {v1, v0}, Lcom/amazon/insights/core/http/ClientInfoInterceptor$ClientInfo;->setNetworkType(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 77
    :catch_1
    move-exception v0

    .line 78
    const-string v0, "Unknown"

    invoke-virtual {v1, v0}, Lcom/amazon/insights/core/http/ClientInfoInterceptor$ClientInfo;->setNetworkType(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public after(Lcom/amazon/insights/core/http/HttpClient$Response;)V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public before(Lcom/amazon/insights/core/http/HttpClient$Request;)V
    .locals 2

    .prologue
    .line 40
    if-eqz p1, :cond_0

    .line 41
    const-string v0, "x-amzn-ClientInfo"

    invoke-direct {p0}, Lcom/amazon/insights/core/http/ClientInfoInterceptor;->getClientInfo()Lcom/amazon/insights/core/http/ClientInfoInterceptor$ClientInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/insights/core/http/ClientInfoInterceptor$ClientInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazon/insights/core/http/HttpClient$Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/insights/core/http/HttpClient$Request;

    .line 43
    :cond_0
    return-void
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/amazon/insights/core/http/ClientInfoInterceptor;->context:Landroid/content/Context;

    return-object v0
.end method

.method setContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/amazon/insights/core/http/ClientInfoInterceptor;->context:Landroid/content/Context;

    .line 36
    return-void
.end method
