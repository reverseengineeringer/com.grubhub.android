.class public Lcom/grubhub/AppBaseLibrary/android/utils/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->d(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getGrubHubToken()Ljava/lang/String;

    move-result-object v0

    .line 30
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;Ljava/util/Date;)Z
    .locals 4

    .prologue
    .line 101
    if-eqz p0, :cond_0

    .line 102
    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;->getRefresh_token()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;->getRefresh_token_expire_time()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;Ljava/util/Date;Z)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 88
    if-eqz p2, :cond_1

    const v1, 0x493e0

    .line 89
    :goto_0
    if-eqz p0, :cond_0

    .line 90
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {p0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;->getToken_expire_time()J

    move-result-wide v4

    int-to-long v6, v1

    sub-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    move v1, v0

    .line 88
    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 40
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 41
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->d(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v1

    .line 43
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getSession()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/grubhub/AppBaseLibrary/android/utils/a/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;Ljava/util/Date;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 56
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 57
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->c(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v1

    .line 59
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getSession()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/grubhub/AppBaseLibrary/android/utils/a/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;Ljava/util/Date;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/utils/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/utils/a/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_0
    return-object v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 114
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->d(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v1

    .line 115
    if-eqz v1, :cond_0

    .line 116
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 118
    :cond_0
    if-nez v0, :cond_1

    .line 119
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->c(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v1

    .line 120
    if-eqz v1, :cond_1

    .line 121
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 124
    :cond_1
    return-object v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 135
    invoke-static {p0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->c(Landroid/content/Context;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    move-result-object v1

    .line 136
    if-eqz v1, :cond_0

    .line 137
    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 140
    :cond_0
    return-object v0
.end method
