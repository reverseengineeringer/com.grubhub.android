.class public Lcom/amazon/insights/core/system/AndroidConnectivity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/insights/core/system/Connectivity;


# static fields
.field private static final logger:Lcom/amazon/insights/core/log/Logger;


# instance fields
.field private context:Landroid/content/Context;

.field protected hasMobile:Z

.field protected hasWifi:Z

.field protected hasWired:Z

.field protected inAirplaneMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/amazon/insights/core/system/Connectivity;

    invoke-static {v0}, Lcom/amazon/insights/core/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/amazon/insights/core/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/amazon/insights/core/system/AndroidConnectivity;->logger:Lcom/amazon/insights/core/log/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazon/insights/core/system/AndroidConnectivity;->context:Landroid/content/Context;

    .line 31
    return-void
.end method

.method private determineAvailability()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 58
    iget-object v0, p0, Lcom/amazon/insights/core/system/AndroidConnectivity;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 59
    iget-object v1, p0, Lcom/amazon/insights/core/system/AndroidConnectivity;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "airplane_mode_on"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/amazon/insights/core/system/AndroidConnectivity;->inAirplaneMode:Z

    .line 60
    sget-object v1, Lcom/amazon/insights/core/system/AndroidConnectivity;->logger:Lcom/amazon/insights/core/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Airplane mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/amazon/insights/core/system/AndroidConnectivity;->inAirplaneMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazon/insights/core/log/Logger;->v(Ljava/lang/String;)V

    .line 61
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 64
    :goto_1
    iput-boolean v3, p0, Lcom/amazon/insights/core/system/AndroidConnectivity;->hasWifi:Z

    .line 65
    iput-boolean v3, p0, Lcom/amazon/insights/core/system/AndroidConnectivity;->hasWired:Z

    .line 67
    if-eqz v0, :cond_6

    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/amazon/insights/core/system/AndroidConnectivity;->hasMobile:Z

    .line 69
    if-eqz v1, :cond_3

    .line 70
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 71
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xd

    if-lt v0, v4, :cond_0

    .line 75
    const/16 v0, 0x9

    if-ne v1, v0, :cond_7

    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/amazon/insights/core/system/AndroidConnectivity;->hasWired:Z

    .line 78
    :cond_0
    if-eq v1, v2, :cond_1

    const/4 v0, 0x6

    if-ne v1, v0, :cond_8

    :cond_1
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lcom/amazon/insights/core/system/AndroidConnectivity;->hasWifi:Z

    .line 80
    if-eqz v1, :cond_2

    const/4 v0, 0x4

    if-eq v1, v0, :cond_2

    const/4 v0, 0x5

    if-eq v1, v0, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    const/4 v0, 0x3

    if-ne v1, v0, :cond_9

    :cond_2
    move v0, v2

    :goto_5
    iput-boolean v0, p0, Lcom/amazon/insights/core/system/AndroidConnectivity;->hasMobile:Z

    .line 91
    :cond_3
    :goto_6
    sget-object v1, Lcom/amazon/insights/core/system/AndroidConnectivity;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v4, "Device Connectivity (%s)"

    new-array v2, v2, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/amazon/insights/core/system/AndroidConnectivity;->hasWifi:Z

    if-eqz v0, :cond_b

    const-string v0, "On Wifi"

    :goto_7
    aput-object v0, v2, v3

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/insights/core/log/Logger;->v(Ljava/lang/String;)V

    .line 92
    return-void

    :cond_4
    move v1, v3

    .line 59
    goto :goto_0

    .line 61
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    move v0, v3

    .line 67
    goto :goto_2

    :cond_7
    move v0, v3

    .line 75
    goto :goto_3

    :cond_8
    move v0, v3

    .line 78
    goto :goto_4

    :cond_9
    move v0, v3

    .line 80
    goto :goto_5

    .line 88
    :cond_a
    iput-boolean v3, p0, Lcom/amazon/insights/core/system/AndroidConnectivity;->hasMobile:Z

    goto :goto_6

    .line 91
    :cond_b
    iget-boolean v0, p0, Lcom/amazon/insights/core/system/AndroidConnectivity;->hasMobile:Z

    if-eqz v0, :cond_c

    const-string v0, "On Mobile"

    goto :goto_7

    :cond_c
    const-string v0, "No network connectivity"

    goto :goto_7
.end method


# virtual methods
.method public hasWAN()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/amazon/insights/core/system/AndroidConnectivity;->hasMobile:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/insights/core/system/AndroidConnectivity;->inAirplaneMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWifi()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/amazon/insights/core/system/AndroidConnectivity;->hasWifi:Z

    return v0
.end method

.method public hasWired()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/amazon/insights/core/system/AndroidConnectivity;->hasWired:Z

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/amazon/insights/core/system/AndroidConnectivity;->determineAvailability()V

    .line 38
    invoke-virtual {p0}, Lcom/amazon/insights/core/system/AndroidConnectivity;->hasWifi()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/insights/core/system/AndroidConnectivity;->hasWAN()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/insights/core/system/AndroidConnectivity;->hasWired()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
