.class public Lcom/urbanairship/push/iam/InAppMessageManager;
.super Lcom/urbanairship/BaseManager;
.source "SourceFile"


# static fields
.field private static final AUTO_DISPLAY_ENABLED_KEY:Ljava/lang/String; = "com.urbanairship.push.iam.AUTO_DISPLAY_ENABLED"

.field private static final BACKGROUND_DELAY_MS:J = 0x1f4L

.field private static final DEFAULT_ACTIVITY_RESUME_DELAY_MS:J = 0xbb8L

.field private static final DISPLAY_ASAP_KEY:Ljava/lang/String; = "com.urbanairship.push.iam.DISPLAY_ASAP"

.field public static final EXCLUDE_FROM_AUTO_SHOW:Ljava/lang/String; = "com.urbanairship.push.iam.EXCLUDE_FROM_AUTO_SHOW"

.field private static final IN_APP_TAG:Ljava/lang/String; = "com.urbanairship.in_app_fragment"

.field private static final KEY_PREFIX:Ljava/lang/String; = "com.urbanairship.push.iam."

.field private static final LAST_DISPLAYED_ID_KEY:Ljava/lang/String; = "com.urbanairship.push.iam.LAST_DISPLAYED_ID"

.field private static final PENDING_IN_APP_MESSAGE_KEY:Ljava/lang/String; = "com.urbanairship.push.iam.PENDING_IN_APP_MESSAGE"

.field private static activityCount:I

.field private static activityResumedOperation:Lcom/urbanairship/Cancelable;

.field private static isForeground:Z

.field private static lifeCycleCallbacks:Lcom/urbanairship/LifeCycleCallbacks;


# instance fields
.field private activityReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private autoDisplayDelayMs:J

.field private autoDisplayPendingMessage:Z

.field private currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;

.field private currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

.field private final dataStore:Lcom/urbanairship/PreferenceDataStore;

.field private final displayRunnable:Ljava/lang/Runnable;

.field private fragmentFactory:Lcom/urbanairship/push/iam/InAppMessageFragmentFactory;

.field private final fragmentListener:Lcom/urbanairship/push/iam/InAppMessageFragment$Listener;

.field private final handler:Landroid/os/Handler;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/push/iam/InAppMessageManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingMessageLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 109
    sput v0, Lcom/urbanairship/push/iam/InAppMessageManager;->activityCount:I

    .line 110
    sput-boolean v0, Lcom/urbanairship/push/iam/InAppMessageManager;->isForeground:Z

    return-void
.end method

.method public constructor <init>(Lcom/urbanairship/PreferenceDataStore;)V
    .locals 2

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/urbanairship/BaseManager;-><init>()V

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->listeners:Ljava/util/List;

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->pendingMessageLock:Ljava/lang/Object;

    .line 126
    new-instance v0, Lcom/urbanairship/push/iam/InAppMessageManager$1;

    invoke-direct {v0, p0}, Lcom/urbanairship/push/iam/InAppMessageManager$1;-><init>(Lcom/urbanairship/push/iam/InAppMessageManager;)V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->displayRunnable:Ljava/lang/Runnable;

    .line 583
    new-instance v0, Lcom/urbanairship/push/iam/InAppMessageManager$4;

    invoke-direct {v0, p0}, Lcom/urbanairship/push/iam/InAppMessageManager$4;-><init>(Lcom/urbanairship/push/iam/InAppMessageManager;)V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->fragmentListener:Lcom/urbanairship/push/iam/InAppMessageFragment$Listener;

    .line 147
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->dataStore:Lcom/urbanairship/PreferenceDataStore;

    .line 148
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->autoDisplayDelayMs:J

    .line 149
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->handler:Landroid/os/Handler;

    .line 150
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessageManager;->isDisplayAsapEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->autoDisplayPendingMessage:Z

    .line 152
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 153
    new-instance v0, Lcom/urbanairship/push/iam/InAppMessageManager$2;

    invoke-direct {v0, p0}, Lcom/urbanairship/push/iam/InAppMessageManager$2;-><init>(Lcom/urbanairship/push/iam/InAppMessageManager;)V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->fragmentFactory:Lcom/urbanairship/push/iam/InAppMessageFragmentFactory;

    .line 160
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/push/iam/InAppMessageManager;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->autoDisplayPendingMessage:Z

    return v0
.end method

.method static synthetic access$002(Lcom/urbanairship/push/iam/InAppMessageManager;Z)Z
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->autoDisplayPendingMessage:Z

    return p1
.end method

.method static synthetic access$100(Lcom/urbanairship/push/iam/InAppMessageManager;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/urbanairship/push/iam/InAppMessageManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/urbanairship/push/iam/InAppMessageManager;->isForeground:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0

    .prologue
    .line 60
    sput-boolean p0, Lcom/urbanairship/push/iam/InAppMessageManager;->isForeground:Z

    return p0
.end method

.method static synthetic access$1100()Lcom/urbanairship/Cancelable;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/urbanairship/push/iam/InAppMessageManager;->activityResumedOperation:Lcom/urbanairship/Cancelable;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/urbanairship/Cancelable;)Lcom/urbanairship/Cancelable;
    .locals 0

    .prologue
    .line 60
    sput-object p0, Lcom/urbanairship/push/iam/InAppMessageManager;->activityResumedOperation:Lcom/urbanairship/Cancelable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/urbanairship/push/iam/InAppMessageManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->listeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/urbanairship/push/iam/InAppMessageManager;)Lcom/urbanairship/push/iam/InAppMessageFragment;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;

    return-object v0
.end method

.method static synthetic access$302(Lcom/urbanairship/push/iam/InAppMessageManager;Lcom/urbanairship/push/iam/InAppMessageFragment;)Lcom/urbanairship/push/iam/InAppMessageFragment;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;

    return-object p1
.end method

.method static synthetic access$400(Lcom/urbanairship/push/iam/InAppMessageManager;)Lcom/urbanairship/push/iam/InAppMessage;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

    return-object v0
.end method

.method static synthetic access$402(Lcom/urbanairship/push/iam/InAppMessageManager;Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/push/iam/InAppMessage;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

    return-object p1
.end method

.method static synthetic access$500(Lcom/urbanairship/push/iam/InAppMessageManager;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->pendingMessageLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/urbanairship/push/iam/InAppMessageManager;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->displayRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/urbanairship/push/iam/InAppMessageManager;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/urbanairship/push/iam/InAppMessageManager;)J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->autoDisplayDelayMs:J

    return-wide v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/urbanairship/push/iam/InAppMessageManager;->activityCount:I

    return v0
.end method

.method static synthetic access$908()I
    .locals 2

    .prologue
    .line 60
    sget v0, Lcom/urbanairship/push/iam/InAppMessageManager;->activityCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/urbanairship/push/iam/InAppMessageManager;->activityCount:I

    return v0
.end method

.method static synthetic access$910()I
    .locals 2

    .prologue
    .line 60
    sget v0, Lcom/urbanairship/push/iam/InAppMessageManager;->activityCount:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/urbanairship/push/iam/InAppMessageManager;->activityCount:I

    return v0
.end method

.method private getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->activityReference:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0
.end method

.method public static registerLifeCycleCallbacks(Landroid/app/Application;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 655
    sget-object v0, Lcom/urbanairship/push/iam/InAppMessageManager;->lifeCycleCallbacks:Lcom/urbanairship/LifeCycleCallbacks;

    if-nez v0, :cond_0

    .line 656
    new-instance v0, Lcom/urbanairship/push/iam/InAppMessageManager$5;

    invoke-direct {v0, p0}, Lcom/urbanairship/push/iam/InAppMessageManager$5;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/urbanairship/push/iam/InAppMessageManager;->lifeCycleCallbacks:Lcom/urbanairship/LifeCycleCallbacks;

    .line 718
    sget-object v0, Lcom/urbanairship/push/iam/InAppMessageManager;->lifeCycleCallbacks:Lcom/urbanairship/LifeCycleCallbacks;

    invoke-virtual {v0}, Lcom/urbanairship/LifeCycleCallbacks;->register()V

    .line 720
    :cond_0
    return-void
.end method

.method public static unregisterLifeCycleCallbacks()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 729
    sget-object v0, Lcom/urbanairship/push/iam/InAppMessageManager;->lifeCycleCallbacks:Lcom/urbanairship/LifeCycleCallbacks;

    if-eqz v0, :cond_0

    .line 730
    sget-object v0, Lcom/urbanairship/push/iam/InAppMessageManager;->lifeCycleCallbacks:Lcom/urbanairship/LifeCycleCallbacks;

    invoke-virtual {v0}, Lcom/urbanairship/LifeCycleCallbacks;->unregister()V

    .line 732
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/urbanairship/push/iam/InAppMessageManager$Listener;)V
    .locals 2

    .prologue
    .line 481
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 482
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    monitor-exit v1

    .line 484
    return-void

    .line 483
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAutoDisplayDelay()J
    .locals 2

    .prologue
    .line 188
    iget-wide v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->autoDisplayDelayMs:J

    return-wide v0
.end method

.method public getCurrentMessage()Lcom/urbanairship/push/iam/InAppMessage;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

    return-object v0
.end method

.method public getFragmentFactory()Lcom/urbanairship/push/iam/InAppMessageFragmentFactory;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->fragmentFactory:Lcom/urbanairship/push/iam/InAppMessageFragmentFactory;

    return-object v0
.end method

.method public getPendingMessage()Lcom/urbanairship/push/iam/InAppMessage;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 288
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->pendingMessageLock:Ljava/lang/Object;

    monitor-enter v1

    .line 289
    :try_start_0
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->dataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v3, "com.urbanairship.push.iam.PENDING_IN_APP_MESSAGE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 290
    if-eqz v2, :cond_0

    .line 292
    :try_start_1
    invoke-static {v2}, Lcom/urbanairship/push/iam/InAppMessage;->parseJson(Ljava/lang/String;)Lcom/urbanairship/push/iam/InAppMessage;
    :try_end_1
    .catch Lcom/urbanairship/json/JsonException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    monitor-exit v1

    .line 299
    :goto_0
    return-object v0

    .line 293
    :catch_0
    move-exception v3

    .line 294
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InAppMessageManager - Failed to read pending in-app message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 295
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/urbanairship/push/iam/InAppMessageManager;->setPendingMessage(Lcom/urbanairship/push/iam/InAppMessage;)V

    .line 299
    :cond_0
    monitor-exit v1

    goto :goto_0

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method protected init()V
    .locals 2

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessageManager;->getPendingMessage()Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/InAppMessage;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    const-string v1, "InAppMessageManager - pending in-app message expired."

    invoke-static {v1}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 167
    invoke-static {v0}, Lcom/urbanairship/push/iam/ResolutionEvent;->createExpiredResolutionEvent(Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/push/iam/ResolutionEvent;

    move-result-object v0

    .line 168
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/iam/InAppMessageManager;->setPendingMessage(Lcom/urbanairship/push/iam/InAppMessage;)V

    .line 171
    :cond_0
    return-void
.end method

.method public isAutoDisplayEnabled()Z
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->dataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.iam.AUTO_DISPLAY_ENABLED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDisplayAsapEnabled()Z
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->dataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.iam.DISPLAY_ASAP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InAppMessageManager - Activity paused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 557
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->activityReference:Ljava/lang/ref/WeakReference;

    .line 558
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->displayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 559
    return-void
.end method

.method onActivityResumed(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InAppMessageManager - Activity resumed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 569
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/util/ManifestUtils;->getActivityInfo(Ljava/lang/Class;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 570
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.urbanairship.push.iam.EXCLUDE_FROM_AUTO_SHOW"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    const-string v0, "InAppMessageManager - Activity contains metadata to exclude it from auto showing an in-app message"

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->activityReference:Ljava/lang/ref/WeakReference;

    .line 576
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->displayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 578
    iget-boolean v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->autoDisplayPendingMessage:Z

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->displayRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->autoDisplayDelayMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method onForeground()V
    .locals 4

    .prologue
    .line 533
    const-string v0, "InAppMessageManager - App foregrounded."

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessageManager;->getPendingMessage()Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v0

    .line 535
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/iam/InAppMessage;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 537
    :cond_1
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

    if-eqz v1, :cond_2

    .line 539
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-static {v1, v0}, Lcom/urbanairship/push/iam/ResolutionEvent;->createReplacedResolutionEvent(Lcom/urbanairship/push/iam/InAppMessage;Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/push/iam/ResolutionEvent;

    move-result-object v0

    .line 540
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    .line 543
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

    .line 544
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->autoDisplayPendingMessage:Z

    .line 545
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->displayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 546
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->displayRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->autoDisplayDelayMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 548
    :cond_3
    return-void
.end method

.method public removeListener(Lcom/urbanairship/push/iam/InAppMessageManager$Listener;)V
    .locals 2

    .prologue
    .line 493
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 494
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 495
    monitor-exit v1

    .line 496
    return-void

    .line 495
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAutoDisplayDelay(J)V
    .locals 1

    .prologue
    .line 179
    iput-wide p1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->autoDisplayDelayMs:J

    .line 180
    return-void
.end method

.method public setAutoDisplayEnabled(Z)V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->dataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.iam.AUTO_DISPLAY_ENABLED"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Z)V

    .line 225
    return-void
.end method

.method public setDisplayAsapEnabled(Z)V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->dataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.iam.DISPLAY_ASAP"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Z)V

    .line 202
    if-eqz p1, :cond_0

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->autoDisplayPendingMessage:Z

    .line 205
    :cond_0
    return-void
.end method

.method public setFragmentFactory(Lcom/urbanairship/push/iam/InAppMessageFragmentFactory;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->fragmentFactory:Lcom/urbanairship/push/iam/InAppMessageFragmentFactory;

    .line 506
    return-void
.end method

.method public setPendingMessage(Lcom/urbanairship/push/iam/InAppMessage;)V
    .locals 4

    .prologue
    .line 243
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->pendingMessageLock:Ljava/lang/Object;

    monitor-enter v1

    .line 244
    if-nez p1, :cond_1

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->dataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v2, "com.urbanairship.push.iam.PENDING_IN_APP_MESSAGE"

    invoke-virtual {v0, v2}, Lcom/urbanairship/PreferenceDataStore;->remove(Ljava/lang/String;)V

    .line 278
    :cond_0
    :goto_0
    monitor-exit v1

    .line 279
    :goto_1
    return-void

    .line 247
    :cond_1
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessageManager;->getPendingMessage()Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v0

    .line 248
    invoke-virtual {p1, v0}, Lcom/urbanairship/push/iam/InAppMessage;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 249
    monitor-exit v1

    goto :goto_1

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 253
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/urbanairship/push/iam/InAppMessageManager$3;

    invoke-direct {v3, p0, p1}, Lcom/urbanairship/push/iam/InAppMessageManager$3;-><init>(Lcom/urbanairship/push/iam/InAppMessageManager;Lcom/urbanairship/push/iam/InAppMessage;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 264
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->dataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v3, "com.urbanairship.push.iam.PENDING_IN_APP_MESSAGE"

    invoke-virtual {v2, v3, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Lcom/urbanairship/json/JsonSerializable;)V

    .line 266
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    .line 267
    const-string v2, "InAppMessageManager - pending in-app message replaced."

    invoke-static {v2}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 268
    invoke-static {v0, p1}, Lcom/urbanairship/push/iam/ResolutionEvent;->createReplacedResolutionEvent(Lcom/urbanairship/push/iam/InAppMessage;Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/push/iam/ResolutionEvent;

    move-result-object v0

    .line 269
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    .line 272
    :cond_3
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessageManager;->isDisplayAsapEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/urbanairship/push/iam/InAppMessageManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->autoDisplayPendingMessage:Z

    .line 274
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->displayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 275
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->displayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public showPendingMessage(Landroid/app/Activity;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 323
    const v0, 0x1020002

    invoke-virtual {p0, p1, v0}, Lcom/urbanairship/push/iam/InAppMessageManager;->showPendingMessage(Landroid/app/Activity;I)Z

    move-result v0

    return v0
.end method

.method public showPendingMessage(Landroid/app/Activity;I)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 337
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->pendingMessageLock:Ljava/lang/Object;

    monitor-enter v2

    .line 338
    :try_start_0
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessageManager;->getPendingMessage()Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v0

    .line 341
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 342
    :cond_0
    const/4 v0, 0x0

    monitor-exit v2

    .line 354
    :goto_0
    return v0

    .line 346
    :cond_1
    invoke-virtual {v0}, Lcom/urbanairship/push/iam/InAppMessage;->getPosition()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 347
    sget v1, Lcom/urbanairship/R$animator;->ua_iam_slide_in_top:I

    .line 348
    sget v0, Lcom/urbanairship/R$animator;->ua_iam_slide_out_top:I

    .line 354
    :goto_1
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/urbanairship/push/iam/InAppMessageManager;->showPendingMessage(Landroid/app/Activity;III)Z

    move-result v0

    monitor-exit v2

    goto :goto_0

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 350
    :cond_2
    :try_start_1
    sget v1, Lcom/urbanairship/R$animator;->ua_iam_slide_in_bottom:I

    .line 351
    sget v0, Lcom/urbanairship/R$animator;->ua_iam_slide_out_bottom:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public showPendingMessage(Landroid/app/Activity;III)Z
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 378
    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->pendingMessageLock:Ljava/lang/Object;

    monitor-enter v3

    .line 379
    :try_start_0
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessageManager;->getPendingMessage()Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v4

    .line 381
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/urbanairship/push/iam/InAppMessage;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    const-string v0, "InAppMessageManager - Unable to display pending in-app message. Message has expired."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 383
    invoke-static {v4}, Lcom/urbanairship/push/iam/ResolutionEvent;->createExpiredResolutionEvent(Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/push/iam/ResolutionEvent;

    move-result-object v0

    .line 384
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    .line 385
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/iam/InAppMessageManager;->setPendingMessage(Lcom/urbanairship/push/iam/InAppMessage;)V

    .line 386
    monitor-exit v3

    move v0, v1

    .line 469
    :goto_0
    return v0

    .line 388
    :cond_0
    monitor-exit v3

    .line 391
    if-eqz p1, :cond_1

    if-nez v4, :cond_2

    :cond_1
    move v0, v1

    .line 392
    goto :goto_0

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 395
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v0, v3, :cond_3

    .line 396
    const-string v0, "InAppMessageManager - Unable to show in-app messages on Android versions older than API 14 (Ice Cream Sandwich)."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    move v0, v1

    .line 397
    goto :goto_0

    .line 400
    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 401
    const-string v0, "InAppMessageManager - Unable to display in-app messages for an activity that is finishing."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    move v0, v1

    .line 402
    goto :goto_0

    .line 405
    :cond_4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v0, v3, :cond_5

    .line 406
    const-string v0, "InAppMessageManager - Show message must be called on the main thread."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    move v0, v1

    .line 407
    goto :goto_0

    .line 410
    :cond_5
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;

    if-eqz v0, :cond_6

    .line 411
    const-string v0, "InAppMessageManager - An in-app message is already displayed."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    move v0, v1

    .line 412
    goto :goto_0

    .line 416
    :cond_6
    invoke-virtual {v4}, Lcom/urbanairship/push/iam/InAppMessage;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->dataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v5, "com.urbanairship.push.iam.LAST_DISPLAYED_ID"

    invoke-virtual {v3, v5, v6}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/urbanairship/util/UAStringUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InAppMessageManager - Displaying pending message: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " for first time."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 418
    new-instance v0, Lcom/urbanairship/push/iam/DisplayEvent;

    invoke-direct {v0, v4}, Lcom/urbanairship/push/iam/DisplayEvent;-><init>(Lcom/urbanairship/push/iam/InAppMessage;)V

    .line 419
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    .line 420
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->dataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v3, "com.urbanairship.push.iam.LAST_DISPLAYED_ID"

    invoke-virtual {v4}, Lcom/urbanairship/push/iam/InAppMessage;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :cond_7
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-virtual {v0, v4}, Lcom/urbanairship/push/iam/InAppMessage;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 425
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-static {v0, v4}, Lcom/urbanairship/push/iam/ResolutionEvent;->createReplacedResolutionEvent(Lcom/urbanairship/push/iam/InAppMessage;Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/push/iam/ResolutionEvent;

    move-result-object v0

    .line 426
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    .line 429
    :cond_8
    const-string v0, "InAppMessageManager - Displaying in-app message."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 432
    :try_start_1
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessageManager;->getFragmentFactory()Lcom/urbanairship/push/iam/InAppMessageFragmentFactory;

    move-result-object v0

    .line 433
    if-nez v0, :cond_9

    .line 434
    const-string v0, "InAppMessageManager - InAppMessageFragmentFactory is null, unable to display an in-app message."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    move v0, v1

    .line 435
    goto/16 :goto_0

    .line 438
    :cond_9
    invoke-virtual {v0, v4}, Lcom/urbanairship/push/iam/InAppMessageFragmentFactory;->createFragment(Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/push/iam/InAppMessageFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;

    .line 439
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;

    if-nez v0, :cond_a

    .line 440
    const-string v0, "InAppMessageManager - InAppMessageFragmentFactory returned a null fragment, unable to display an in-app message."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    move v0, v1

    .line 441
    goto/16 :goto_0

    .line 444
    :cond_a
    invoke-static {v4, p4}, Lcom/urbanairship/push/iam/InAppMessageFragment;->createArgs(Lcom/urbanairship/push/iam/InAppMessage;I)Landroid/os/Bundle;

    move-result-object v0

    .line 445
    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;

    invoke-virtual {v3}, Lcom/urbanairship/push/iam/InAppMessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 446
    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;

    invoke-virtual {v3}, Lcom/urbanairship/push/iam/InAppMessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 449
    :cond_b
    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;

    invoke-virtual {v3, v0}, Lcom/urbanairship/push/iam/InAppMessageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 451
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;

    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->fragmentListener:Lcom/urbanairship/push/iam/InAppMessageFragment$Listener;

    invoke-virtual {v0, v3}, Lcom/urbanairship/push/iam/InAppMessageFragment;->addListener(Lcom/urbanairship/push/iam/InAppMessageFragment$Listener;)V

    .line 452
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/urbanairship/push/iam/InAppMessageFragment;->setDismissOnRecreate(Z)V

    .line 453
    iput-object v4, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

    .line 455
    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->listeners:Ljava/util/List;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 456
    :try_start_2
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/iam/InAppMessageManager$Listener;

    .line 457
    iget-object v6, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;

    invoke-interface {v0, v6, v4}, Lcom/urbanairship/push/iam/InAppMessageManager$Listener;->onDisplay(Lcom/urbanairship/push/iam/InAppMessageFragment;Lcom/urbanairship/push/iam/InAppMessage;)V

    goto :goto_1

    .line 459
    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    .line 467
    :catch_0
    move-exception v0

    .line 468
    const-string v2, "InAppMessageManager - Failed to display in-app message."

    invoke-static {v2, v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 469
    goto/16 :goto_0

    .line 459
    :cond_c
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 461
    :try_start_5
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, p3, v3}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;

    const-string v4, "com.urbanairship.in_app_fragment"

    invoke-virtual {v0, p2, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0

    move v0, v2

    .line 466
    goto/16 :goto_0
.end method
