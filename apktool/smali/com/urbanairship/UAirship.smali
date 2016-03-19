.class public Lcom/urbanairship/UAirship;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AMAZON_PLATFORM:I = 0x1

.field public static final ANDROID_PLATFORM:I = 0x2

.field private static final LIBRARY_VERSION_KEY:Ljava/lang/String; = "com.urbanairship.application.device.LIBRARY_VERSION"

.field private static final PLATFORM_KEY:Ljava/lang/String; = "com.urbanairship.application.device.PLATFORM"

.field private static final airshipLock:Ljava/lang/Object;

.field static application:Landroid/app/Application;

.field static volatile isFlying:Z

.field static volatile isTakingOff:Z

.field private static pendingAirshipRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/CancelableOperation;",
            ">;"
        }
    .end annotation
.end field

.field static sharedAirship:Lcom/urbanairship/UAirship;


# instance fields
.field actionRegistry:Lcom/urbanairship/actions/ActionRegistry;

.field airshipConfigOptions:Lcom/urbanairship/AirshipConfigOptions;

.field analytics:Lcom/urbanairship/analytics/Analytics;

.field applicationMetrics:Lcom/urbanairship/ApplicationMetrics;

.field channelCapture:Lcom/urbanairship/ChannelCapture;

.field inAppMessageManager:Lcom/urbanairship/push/iam/InAppMessageManager;

.field locationManager:Lcom/urbanairship/location/UALocationManager;

.field preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

.field pushManager:Lcom/urbanairship/push/PushManager;

.field richPushManager:Lcom/urbanairship/richpush/RichPushManager;

.field whitelist:Lcom/urbanairship/js/Whitelist;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/urbanairship/UAirship;->airshipLock:Ljava/lang/Object;

    .line 89
    sput-boolean v1, Lcom/urbanairship/UAirship;->isFlying:Z

    .line 90
    sput-boolean v1, Lcom/urbanairship/UAirship;->isTakingOff:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/PreferenceDataStore;)V
    .locals 2

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p2, p0, Lcom/urbanairship/UAirship;->airshipConfigOptions:Lcom/urbanairship/AirshipConfigOptions;

    .line 119
    iput-object p3, p0, Lcom/urbanairship/UAirship;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    .line 121
    new-instance v0, Lcom/urbanairship/analytics/Analytics;

    invoke-direct {v0, p1, p3, p2}, Lcom/urbanairship/analytics/Analytics;-><init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/AirshipConfigOptions;)V

    iput-object v0, p0, Lcom/urbanairship/UAirship;->analytics:Lcom/urbanairship/analytics/Analytics;

    .line 122
    new-instance v0, Lcom/urbanairship/ApplicationMetrics;

    invoke-direct {v0, p1, p3}, Lcom/urbanairship/ApplicationMetrics;-><init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;)V

    iput-object v0, p0, Lcom/urbanairship/UAirship;->applicationMetrics:Lcom/urbanairship/ApplicationMetrics;

    .line 123
    new-instance v0, Lcom/urbanairship/richpush/RichPushManager;

    invoke-direct {v0, p1, p3}, Lcom/urbanairship/richpush/RichPushManager;-><init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;)V

    iput-object v0, p0, Lcom/urbanairship/UAirship;->richPushManager:Lcom/urbanairship/richpush/RichPushManager;

    .line 124
    new-instance v0, Lcom/urbanairship/location/UALocationManager;

    invoke-direct {v0, p1, p3}, Lcom/urbanairship/location/UALocationManager;-><init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;)V

    iput-object v0, p0, Lcom/urbanairship/UAirship;->locationManager:Lcom/urbanairship/location/UALocationManager;

    .line 125
    new-instance v0, Lcom/urbanairship/push/iam/InAppMessageManager;

    invoke-direct {v0, p3}, Lcom/urbanairship/push/iam/InAppMessageManager;-><init>(Lcom/urbanairship/PreferenceDataStore;)V

    iput-object v0, p0, Lcom/urbanairship/UAirship;->inAppMessageManager:Lcom/urbanairship/push/iam/InAppMessageManager;

    .line 126
    new-instance v0, Lcom/urbanairship/push/PushManager;

    invoke-direct {v0, p1, p3}, Lcom/urbanairship/push/PushManager;-><init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;)V

    iput-object v0, p0, Lcom/urbanairship/UAirship;->pushManager:Lcom/urbanairship/push/PushManager;

    .line 127
    invoke-static {p2}, Lcom/urbanairship/js/Whitelist;->createDefaultWhitelist(Lcom/urbanairship/AirshipConfigOptions;)Lcom/urbanairship/js/Whitelist;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/UAirship;->whitelist:Lcom/urbanairship/js/Whitelist;

    .line 128
    new-instance v0, Lcom/urbanairship/actions/ActionRegistry;

    invoke-direct {v0}, Lcom/urbanairship/actions/ActionRegistry;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/UAirship;->actionRegistry:Lcom/urbanairship/actions/ActionRegistry;

    .line 129
    new-instance v0, Lcom/urbanairship/ChannelCapture;

    iget-object v1, p0, Lcom/urbanairship/UAirship;->pushManager:Lcom/urbanairship/push/PushManager;

    invoke-direct {v0, p1, p2, v1}, Lcom/urbanairship/ChannelCapture;-><init>(Landroid/content/Context;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/push/PushManager;)V

    iput-object v0, p0, Lcom/urbanairship/UAirship;->channelCapture:Lcom/urbanairship/ChannelCapture;

    .line 130
    return-void
.end method

.method static synthetic access$000(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/UAirship$OnReadyCallback;)V
    .locals 0

    .prologue
    .line 62
    invoke-static {p0, p1, p2}, Lcom/urbanairship/UAirship;->executeTakeOff(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/UAirship$OnReadyCallback;)V

    return-void
.end method

.method private static executeTakeOff(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/UAirship$OnReadyCallback;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 332
    if-nez p1, :cond_0

    .line 333
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/AirshipConfigOptions;->loadDefaultOptions(Landroid/content/Context;)Lcom/urbanairship/AirshipConfigOptions;

    move-result-object p1

    .line 336
    :cond_0
    invoke-virtual {p1}, Lcom/urbanairship/AirshipConfigOptions;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 337
    sget-object v1, Lcom/urbanairship/UAirship;->airshipLock:Ljava/lang/Object;

    monitor-enter v1

    .line 338
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/urbanairship/UAirship;->isTakingOff:Z

    .line 339
    sget-object v0, Lcom/urbanairship/UAirship;->airshipLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 340
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    const-string v0, "AirshipConfigOptions are not valid. Unable to take off! Check your airshipconfig.properties file for the errors listed above."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 344
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Application configuration is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 348
    :cond_1
    invoke-virtual {p1}, Lcom/urbanairship/AirshipConfigOptions;->getLoggerLevel()I

    move-result v0

    sput v0, Lcom/urbanairship/Logger;->logLevel:I

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/urbanairship/UAirship;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - UALib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/urbanairship/Logger;->TAG:Ljava/lang/String;

    .line 351
    const-string v0, "Airship taking off!"

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Airship log level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/urbanairship/Logger;->logLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UA Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/UAirship;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / App key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/AirshipConfigOptions;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Production = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p1, Lcom/urbanairship/AirshipConfigOptions;->inProduction:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 355
    new-instance v0, Lcom/urbanairship/PreferenceDataStore;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/urbanairship/PreferenceDataStore;-><init>(Landroid/content/Context;)V

    .line 356
    invoke-virtual {v0}, Lcom/urbanairship/PreferenceDataStore;->loadAll()V

    .line 358
    new-instance v1, Lcom/urbanairship/UAirship;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Lcom/urbanairship/UAirship;-><init>(Landroid/content/Context;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/PreferenceDataStore;)V

    sput-object v1, Lcom/urbanairship/UAirship;->sharedAirship:Lcom/urbanairship/UAirship;

    .line 360
    invoke-static {}, Lcom/urbanairship/UAirship;->getVersion()Ljava/lang/String;

    move-result-object v1

    .line 361
    const-string v2, "com.urbanairship.application.device.LIBRARY_VERSION"

    invoke-virtual {v0, v2, v3}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 363
    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 364
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Urban Airship library changed from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 369
    :cond_2
    const-string v1, "com.urbanairship.application.device.LIBRARY_VERSION"

    invoke-static {}, Lcom/urbanairship/UAirship;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-boolean v0, p1, Lcom/urbanairship/AirshipConfigOptions;->inProduction:Z

    if-nez v0, :cond_3

    .line 373
    sget-object v0, Lcom/urbanairship/UAirship;->sharedAirship:Lcom/urbanairship/UAirship;

    invoke-direct {v0}, Lcom/urbanairship/UAirship;->validateManifest()V

    .line 376
    :cond_3
    sget-object v1, Lcom/urbanairship/UAirship;->airshipLock:Ljava/lang/Object;

    monitor-enter v1

    .line 380
    const/4 v0, 0x1

    :try_start_2
    sput-boolean v0, Lcom/urbanairship/UAirship;->isFlying:Z

    .line 381
    const/4 v0, 0x0

    sput-boolean v0, Lcom/urbanairship/UAirship;->isTakingOff:Z

    .line 384
    sget-object v0, Lcom/urbanairship/UAirship;->sharedAirship:Lcom/urbanairship/UAirship;

    invoke-direct {v0}, Lcom/urbanairship/UAirship;->init()V

    .line 386
    const-string v0, "Airship ready!"

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 389
    if-eqz p2, :cond_4

    .line 390
    sget-object v0, Lcom/urbanairship/UAirship;->sharedAirship:Lcom/urbanairship/UAirship;

    invoke-interface {p2, v0}, Lcom/urbanairship/UAirship$OnReadyCallback;->onAirshipReady(Lcom/urbanairship/UAirship;)V

    .line 394
    :cond_4
    sget-object v0, Lcom/urbanairship/UAirship;->pendingAirshipRequests:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/urbanairship/UAirship;->pendingAirshipRequests:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 396
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 397
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 405
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 399
    :cond_5
    const/4 v0, 0x0

    :try_start_3
    sput-object v0, Lcom/urbanairship/UAirship;->pendingAirshipRequests:Ljava/util/List;

    .line 404
    :cond_6
    sget-object v0, Lcom/urbanairship/UAirship;->airshipLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 405
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 406
    return-void
.end method

.method public static getAppIcon()I
    .locals 1

    .prologue
    .line 514
    invoke-static {}, Lcom/urbanairship/UAirship;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 515
    if-eqz v0, :cond_0

    .line 516
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 518
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getAppInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 487
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getAppName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 498
    invoke-static {}, Lcom/urbanairship/UAirship;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 499
    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/UAirship;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 501
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 529
    sget-object v0, Lcom/urbanairship/UAirship;->application:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 530
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TakeOff must be called first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 533
    :cond_0
    sget-object v0, Lcom/urbanairship/UAirship;->application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 3

    .prologue
    .line 472
    :try_start_0
    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 475
    :goto_0
    return-object v0

    .line 473
    :catch_0
    move-exception v0

    .line 474
    const-string v1, "UAirship - Unable to get package info."

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 475
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 461
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUrbanAirshipPermission()Ljava/lang/String;
    .locals 2

    .prologue
    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".permission.UA_DATA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 560
    const-string v0, "6.2.3"

    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/urbanairship/UAirship;->richPushManager:Lcom/urbanairship/richpush/RichPushManager;

    invoke-virtual {v0}, Lcom/urbanairship/BaseManager;->init()V

    .line 569
    iget-object v0, p0, Lcom/urbanairship/UAirship;->pushManager:Lcom/urbanairship/push/PushManager;

    invoke-virtual {v0}, Lcom/urbanairship/BaseManager;->init()V

    .line 570
    iget-object v0, p0, Lcom/urbanairship/UAirship;->locationManager:Lcom/urbanairship/location/UALocationManager;

    invoke-virtual {v0}, Lcom/urbanairship/BaseManager;->init()V

    .line 571
    iget-object v0, p0, Lcom/urbanairship/UAirship;->inAppMessageManager:Lcom/urbanairship/push/iam/InAppMessageManager;

    invoke-virtual {v0}, Lcom/urbanairship/BaseManager;->init()V

    .line 572
    iget-object v0, p0, Lcom/urbanairship/UAirship;->channelCapture:Lcom/urbanairship/ChannelCapture;

    invoke-virtual {v0}, Lcom/urbanairship/BaseManager;->init()V

    .line 574
    iget-object v0, p0, Lcom/urbanairship/UAirship;->actionRegistry:Lcom/urbanairship/actions/ActionRegistry;

    invoke-virtual {v0}, Lcom/urbanairship/actions/ActionRegistry;->registerDefaultActions()V

    .line 575
    return-void
.end method

.method public static isFlying()Z
    .locals 1

    .prologue
    .line 542
    sget-boolean v0, Lcom/urbanairship/UAirship;->isFlying:Z

    return v0
.end method

.method public static isTakingOff()Z
    .locals 1

    .prologue
    .line 551
    sget-boolean v0, Lcom/urbanairship/UAirship;->isTakingOff:Z

    return v0
.end method

.method static land()V
    .locals 3

    .prologue
    .line 412
    sget-object v1, Lcom/urbanairship/UAirship;->airshipLock:Ljava/lang/Object;

    monitor-enter v1

    .line 413
    :try_start_0
    sget-boolean v0, Lcom/urbanairship/UAirship;->isTakingOff:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/urbanairship/UAirship;->isFlying:Z

    if-nez v0, :cond_0

    .line 414
    monitor-exit v1

    .line 432
    :goto_0
    return-void

    .line 417
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_1

    .line 418
    invoke-static {}, Lcom/urbanairship/analytics/Analytics;->unregisterLifeCycleCallbacks()V

    .line 419
    invoke-static {}, Lcom/urbanairship/push/iam/InAppMessageManager;->unregisterLifeCycleCallbacks()V

    .line 423
    :cond_1
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    .line 425
    invoke-direct {v0}, Lcom/urbanairship/UAirship;->tearDown()V

    .line 427
    const/4 v0, 0x0

    sput-boolean v0, Lcom/urbanairship/UAirship;->isFlying:Z

    .line 428
    const/4 v0, 0x0

    sput-boolean v0, Lcom/urbanairship/UAirship;->isTakingOff:Z

    .line 429
    const/4 v0, 0x0

    sput-object v0, Lcom/urbanairship/UAirship;->sharedAirship:Lcom/urbanairship/UAirship;

    .line 430
    const/4 v0, 0x0

    sput-object v0, Lcom/urbanairship/UAirship;->application:Landroid/app/Application;

    .line 431
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static shared(Lcom/urbanairship/UAirship$OnReadyCallback;)Lcom/urbanairship/Cancelable;
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/urbanairship/UAirship;->shared(Lcom/urbanairship/UAirship$OnReadyCallback;Landroid/os/Looper;)Lcom/urbanairship/Cancelable;

    move-result-object v0

    return-object v0
.end method

.method public static shared(Lcom/urbanairship/UAirship$OnReadyCallback;Landroid/os/Looper;)Lcom/urbanairship/Cancelable;
    .locals 3

    .prologue
    .line 200
    new-instance v0, Lcom/urbanairship/UAirship$1;

    invoke-direct {v0, p1, p0}, Lcom/urbanairship/UAirship$1;-><init>(Landroid/os/Looper;Lcom/urbanairship/UAirship$OnReadyCallback;)V

    .line 209
    sget-object v1, Lcom/urbanairship/UAirship;->airshipLock:Ljava/lang/Object;

    monitor-enter v1

    .line 210
    :try_start_0
    sget-boolean v2, Lcom/urbanairship/UAirship;->isFlying:Z

    if-eqz v2, :cond_0

    .line 211
    invoke-virtual {v0}, Lcom/urbanairship/CancelableOperation;->run()V

    .line 218
    :goto_0
    monitor-exit v1

    .line 220
    return-object v0

    .line 213
    :cond_0
    sget-object v2, Lcom/urbanairship/UAirship;->pendingAirshipRequests:Ljava/util/List;

    if-nez v2, :cond_1

    .line 214
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/urbanairship/UAirship;->pendingAirshipRequests:Ljava/util/List;

    .line 216
    :cond_1
    sget-object v2, Lcom/urbanairship/UAirship;->pendingAirshipRequests:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static shared()Lcom/urbanairship/UAirship;
    .locals 3

    .prologue
    .line 141
    sget-object v2, Lcom/urbanairship/UAirship;->airshipLock:Ljava/lang/Object;

    monitor-enter v2

    .line 142
    :try_start_0
    sget-boolean v0, Lcom/urbanairship/UAirship;->isFlying:Z

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lcom/urbanairship/UAirship;->sharedAirship:Lcom/urbanairship/UAirship;

    monitor-exit v2

    .line 165
    :goto_0
    return-object v0

    .line 146
    :cond_0
    sget-boolean v0, Lcom/urbanairship/UAirship;->isTakingOff:Z

    if-nez v0, :cond_1

    .line 147
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Take off must be called before shared()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 150
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 153
    :goto_1
    :try_start_1
    sget-boolean v0, Lcom/urbanairship/UAirship;->isFlying:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_2

    .line 155
    :try_start_2
    sget-object v0, Lcom/urbanairship/UAirship;->airshipLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    const/4 v0, 0x1

    move v1, v0

    .line 158
    goto :goto_1

    .line 161
    :cond_2
    :try_start_3
    sget-object v0, Lcom/urbanairship/UAirship;->sharedAirship:Lcom/urbanairship/UAirship;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 163
    if-eqz v1, :cond_3

    .line 165
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    monitor-exit v2

    goto :goto_0

    .line 163
    :catchall_1
    move-exception v0

    if-eqz v1, :cond_4

    .line 165
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public static takeOff(Landroid/app/Application;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 230
    invoke-static {p0, v0, v0}, Lcom/urbanairship/UAirship;->takeOff(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/UAirship$OnReadyCallback;)V

    .line 231
    return-void
.end method

.method public static takeOff(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;)V
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/urbanairship/UAirship;->takeOff(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/UAirship$OnReadyCallback;)V

    .line 258
    return-void
.end method

.method public static takeOff(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/UAirship$OnReadyCallback;)V
    .locals 3

    .prologue
    .line 275
    if-nez p0, :cond_0

    .line 276
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Application argument must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 281
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 283
    :try_start_0
    const-string v0, "android.os.AsyncTask"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :cond_1
    :goto_0
    sget-object v1, Lcom/urbanairship/UAirship;->airshipLock:Ljava/lang/Object;

    monitor-enter v1

    .line 295
    :try_start_1
    sget-boolean v0, Lcom/urbanairship/UAirship;->isFlying:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/urbanairship/UAirship;->isTakingOff:Z

    if-eqz v0, :cond_4

    .line 296
    :cond_2
    const-string v0, "You can only call takeOff() once."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 297
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    :goto_1
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    const-string v1, "AsyncTask workaround failed."

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 290
    :cond_3
    const-string v0, "takeOff() must be called on the main thread!"

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :cond_4
    :try_start_2
    const-string v0, "Airship taking off!"

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 302
    const/4 v0, 0x1

    sput-boolean v0, Lcom/urbanairship/UAirship;->isTakingOff:Z

    .line 304
    sput-object p0, Lcom/urbanairship/UAirship;->application:Landroid/app/Application;

    .line 305
    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->init()V

    .line 307
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_5

    .line 308
    invoke-static {p0}, Lcom/urbanairship/analytics/Analytics;->registerLifeCycleCallbacks(Landroid/app/Application;)V

    .line 309
    invoke-static {p0}, Lcom/urbanairship/push/iam/InAppMessageManager;->registerLifeCycleCallbacks(Landroid/app/Application;)V

    .line 312
    :cond_5
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/urbanairship/UAirship$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/urbanairship/UAirship$2;-><init>(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/UAirship$OnReadyCallback;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 319
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 320
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static takeOff(Landroid/app/Application;Lcom/urbanairship/UAirship$OnReadyCallback;)V
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/urbanairship/UAirship;->takeOff(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/UAirship$OnReadyCallback;)V

    .line 245
    return-void
.end method

.method private tearDown()V
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/urbanairship/UAirship;->richPushManager:Lcom/urbanairship/richpush/RichPushManager;

    invoke-virtual {v0}, Lcom/urbanairship/BaseManager;->tearDown()V

    .line 583
    iget-object v0, p0, Lcom/urbanairship/UAirship;->pushManager:Lcom/urbanairship/push/PushManager;

    invoke-virtual {v0}, Lcom/urbanairship/BaseManager;->tearDown()V

    .line 584
    iget-object v0, p0, Lcom/urbanairship/UAirship;->locationManager:Lcom/urbanairship/location/UALocationManager;

    invoke-virtual {v0}, Lcom/urbanairship/BaseManager;->tearDown()V

    .line 585
    iget-object v0, p0, Lcom/urbanairship/UAirship;->inAppMessageManager:Lcom/urbanairship/push/iam/InAppMessageManager;

    invoke-virtual {v0}, Lcom/urbanairship/BaseManager;->tearDown()V

    .line 586
    iget-object v0, p0, Lcom/urbanairship/UAirship;->channelCapture:Lcom/urbanairship/ChannelCapture;

    invoke-virtual {v0}, Lcom/urbanairship/BaseManager;->tearDown()V

    .line 587
    return-void
.end method

.method private validateManifest()V
    .locals 2

    .prologue
    .line 722
    iget-object v0, p0, Lcom/urbanairship/UAirship;->airshipConfigOptions:Lcom/urbanairship/AirshipConfigOptions;

    invoke-static {v0}, Lcom/urbanairship/util/ManifestUtils;->validateManifest(Lcom/urbanairship/AirshipConfigOptions;)V

    .line 724
    sget-object v0, Lcom/urbanairship/UAirship;->sharedAirship:Lcom/urbanairship/UAirship;

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getPlatformType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 743
    :goto_0
    return-void

    .line 726
    :pswitch_0
    iget-object v0, p0, Lcom/urbanairship/UAirship;->airshipConfigOptions:Lcom/urbanairship/AirshipConfigOptions;

    const-string v1, "GCM"

    invoke-virtual {v0, v1}, Lcom/urbanairship/AirshipConfigOptions;->isTransportAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/urbanairship/UAirship;->airshipConfigOptions:Lcom/urbanairship/AirshipConfigOptions;

    invoke-static {v0}, Lcom/urbanairship/google/GCMUtils;->validateManifest(Lcom/urbanairship/AirshipConfigOptions;)V

    goto :goto_0

    .line 729
    :cond_0
    const-string v0, "Android platform detected but GCM transport is disabled. The device will not be able to receive push notifications."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 735
    :pswitch_1
    iget-object v0, p0, Lcom/urbanairship/UAirship;->airshipConfigOptions:Lcom/urbanairship/AirshipConfigOptions;

    const-string v1, "ADM"

    invoke-virtual {v0, v1}, Lcom/urbanairship/AirshipConfigOptions;->isTransportAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 736
    invoke-static {}, Lcom/urbanairship/amazon/ADMUtils;->validateManifest()V

    goto :goto_0

    .line 738
    :cond_1
    const-string v0, "Amazon platform detected but ADM transport is disabled. The device will not be able to receive push notifications."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 724
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getActionRegistry()Lcom/urbanairship/actions/ActionRegistry;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/urbanairship/UAirship;->actionRegistry:Lcom/urbanairship/actions/ActionRegistry;

    return-object v0
.end method

.method public getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/urbanairship/UAirship;->airshipConfigOptions:Lcom/urbanairship/AirshipConfigOptions;

    return-object v0
.end method

.method public getAnalytics()Lcom/urbanairship/analytics/Analytics;
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/urbanairship/UAirship;->analytics:Lcom/urbanairship/analytics/Analytics;

    return-object v0
.end method

.method public getApplicationMetrics()Lcom/urbanairship/ApplicationMetrics;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/urbanairship/UAirship;->applicationMetrics:Lcom/urbanairship/ApplicationMetrics;

    return-object v0
.end method

.method public getInAppMessageManager()Lcom/urbanairship/push/iam/InAppMessageManager;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/urbanairship/UAirship;->inAppMessageManager:Lcom/urbanairship/push/iam/InAppMessageManager;

    return-object v0
.end method

.method public getLocationManager()Lcom/urbanairship/location/UALocationManager;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/urbanairship/UAirship;->locationManager:Lcom/urbanairship/location/UALocationManager;

    return-object v0
.end method

.method public getPlatformType()I
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 687
    iget-object v2, p0, Lcom/urbanairship/UAirship;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v3, "com.urbanairship.application.device.PLATFORM"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/urbanairship/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 697
    invoke-static {}, Lcom/urbanairship/amazon/ADMUtils;->isADMAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 698
    const-string v1, "ADM available. Setting platform to Amazon."

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 711
    :goto_0
    iget-object v1, p0, Lcom/urbanairship/UAirship;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v2, "com.urbanairship.application.device.PLATFORM"

    invoke-virtual {v1, v2, v0}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;I)V

    .line 715
    :goto_1
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 694
    goto :goto_1

    .line 700
    :cond_0
    invoke-static {}, Lcom/urbanairship/google/PlayServicesUtils;->isGooglePlayStoreAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 701
    const-string v0, "Google Play Store available. Setting platform to Android."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    move v0, v1

    .line 702
    goto :goto_0

    .line 703
    :cond_1
    const-string v2, "amazon"

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 704
    const-string v1, "Build.MANUFACTURER is AMAZON. Setting platform to Amazon."

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 707
    :cond_2
    const-string v0, "Defaulting platform to Android."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    move v0, v1

    .line 708
    goto :goto_0

    .line 687
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPushManager()Lcom/urbanairship/push/PushManager;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/urbanairship/UAirship;->pushManager:Lcom/urbanairship/push/PushManager;

    return-object v0
.end method

.method public getRichPushManager()Lcom/urbanairship/richpush/RichPushManager;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/urbanairship/UAirship;->richPushManager:Lcom/urbanairship/richpush/RichPushManager;

    return-object v0
.end method

.method public getWhitelist()Lcom/urbanairship/js/Whitelist;
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/urbanairship/UAirship;->whitelist:Lcom/urbanairship/js/Whitelist;

    return-object v0
.end method
