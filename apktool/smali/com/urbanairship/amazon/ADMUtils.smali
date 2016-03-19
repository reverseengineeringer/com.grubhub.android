.class public Lcom/urbanairship/amazon/ADMUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static isADMAvailable:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isADMAvailable()Z
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/urbanairship/amazon/ADMUtils;->isADMAvailable:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/urbanairship/amazon/ADMUtils;->isADMAvailable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 57
    :goto_0
    return v0

    .line 51
    :cond_0
    :try_start_0
    const-string v0, "com.amazon.device.messaging.ADM"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 52
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/urbanairship/amazon/ADMUtils;->isADMAvailable:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_1
    sget-object v0, Lcom/urbanairship/amazon/ADMUtils;->isADMAvailable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/urbanairship/amazon/ADMUtils;->isADMAvailable:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public static isADMSupported()Z
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/urbanairship/amazon/ADMUtils;->isADMAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/urbanairship/amazon/ADMWrapper;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static startRegistration(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lcom/urbanairship/amazon/ADMUtils;->isADMSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {p0}, Lcom/urbanairship/amazon/ADMWrapper;->startRegistration(Landroid/content/Context;)V

    .line 76
    :cond_0
    return-void
.end method

.method public static validateManifest()V
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lcom/urbanairship/amazon/ADMUtils;->isADMAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {}, Lcom/urbanairship/amazon/ADMWrapper;->validateManifest()V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    const-string v0, "ADM is not available on this device."

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method
