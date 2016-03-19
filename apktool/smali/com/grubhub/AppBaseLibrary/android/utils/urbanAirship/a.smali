.class public Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static a()Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;->a:Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;-><init>()V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;->a:Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;

    .line 32
    :cond_0
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;->a:Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/GHSApplication;)V
    .locals 5

    .prologue
    const v4, 0x7f080530

    const v3, 0x7f08052f

    .line 36
    new-instance v0, Lcom/urbanairship/AirshipConfigOptions;

    invoke-direct {v0}, Lcom/urbanairship/AirshipConfigOptions;-><init>()V

    .line 37
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/urbanairship/AirshipConfigOptions;->productionAppKey:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/urbanairship/AirshipConfigOptions;->productionAppSecret:Ljava/lang/String;

    .line 41
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/urbanairship/AirshipConfigOptions;->inProduction:Z

    .line 47
    :goto_0
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080532

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/urbanairship/AirshipConfigOptions;->gcmSender:Ljava/lang/String;

    .line 48
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a$1;

    invoke-direct {v1, p0, p1}, Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/urbanAirship/a;Lcom/grubhub/AppBaseLibrary/android/GHSApplication;)V

    invoke-static {p1, v0, v1}, Lcom/urbanairship/UAirship;->takeOff(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/UAirship$OnReadyCallback;)V

    .line 80
    return-void

    .line 43
    :cond_0
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/urbanairship/AirshipConfigOptions;->developmentAppKey:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/urbanairship/AirshipConfigOptions;->developmentAppSecret:Ljava/lang/String;

    .line 45
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/urbanairship/AirshipConfigOptions;->inProduction:Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 97
    invoke-static {p1}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->getNamedUser()Lcom/urbanairship/push/NamedUser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/NamedUser;->setId(Ljava/lang/String;)V

    .line 100
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/PushManager;->setPushEnabled(Z)V

    .line 89
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 106
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->getTags()Ljava/util/Set;

    move-result-object v0

    .line 107
    const-string v1, "logged-in"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/push/PushManager;->setTags(Ljava/util/Set;)V

    .line 109
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 115
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->getTags()Ljava/util/Set;

    move-result-object v0

    .line 116
    const-string v1, "logged-in"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 117
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/push/PushManager;->setTags(Ljava/util/Set;)V

    .line 118
    return-void
.end method
