.class public Lcom/urbanairship/richpush/RichPushManager;
.super Lcom/urbanairship/BaseManager;
.source "SourceFile"


# static fields
.field public static final RICH_PUSH_KEY:Ljava/lang/String; = "_uamid"


# instance fields
.field private foregroundReceiver:Landroid/content/BroadcastReceiver;

.field private final inbox:Lcom/urbanairship/richpush/RichPushInbox;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/richpush/RichPushManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final refreshMessageRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final user:Lcom/urbanairship/richpush/RichPushUser;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;)V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lcom/urbanairship/richpush/RichPushUser;

    invoke-direct {v0, p2}, Lcom/urbanairship/richpush/RichPushUser;-><init>(Lcom/urbanairship/PreferenceDataStore;)V

    new-instance v1, Lcom/urbanairship/richpush/RichPushInbox;

    invoke-direct {v1, p1}, Lcom/urbanairship/richpush/RichPushInbox;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Lcom/urbanairship/richpush/RichPushManager;-><init>(Lcom/urbanairship/richpush/RichPushUser;Lcom/urbanairship/richpush/RichPushInbox;)V

    .line 82
    return-void
.end method

.method constructor <init>(Lcom/urbanairship/richpush/RichPushUser;Lcom/urbanairship/richpush/RichPushInbox;)V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/urbanairship/BaseManager;-><init>()V

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->refreshMessageRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->listeners:Ljava/util/List;

    .line 91
    iput-object p1, p0, Lcom/urbanairship/richpush/RichPushManager;->user:Lcom/urbanairship/richpush/RichPushUser;

    .line 92
    iput-object p2, p0, Lcom/urbanairship/richpush/RichPushManager;->inbox:Lcom/urbanairship/richpush/RichPushInbox;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/richpush/RichPushManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->refreshMessageRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/urbanairship/richpush/RichPushManager;Z)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/urbanairship/richpush/RichPushManager;->onMessagesUpdate(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/urbanairship/richpush/RichPushManager;Z)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/urbanairship/richpush/RichPushManager;->onUserUpdate(Z)V

    return-void
.end method

.method private getListeners()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/richpush/RichPushManager$Listener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushManager;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 329
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/urbanairship/richpush/RichPushManager;->listeners:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isRichPushMessage(Landroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 384
    const-string v0, "_uamid"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRichPushMessage(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 372
    const-string v0, "_uamid"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private onMessagesUpdate(Z)V
    .locals 3

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushManager;->getListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/richpush/RichPushManager$Listener;

    .line 356
    :try_start_0
    invoke-interface {v0, p1}, Lcom/urbanairship/richpush/RichPushManager$Listener;->onUpdateMessages(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 357
    :catch_0
    move-exception v0

    .line 358
    const-string v2, "RichPushManager - Unable to complete onUpdateMessages() callback."

    invoke-static {v2, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 361
    :cond_0
    return-void
.end method

.method private onUserUpdate(Z)V
    .locals 3

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushManager;->getListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/richpush/RichPushManager$Listener;

    .line 341
    :try_start_0
    invoke-interface {v0, p1}, Lcom/urbanairship/richpush/RichPushManager$Listener;->onUpdateUser(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    const-string v2, "RichPushManager - Unable to complete onUpdateUser() callback."

    invoke-static {v2, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 346
    :cond_0
    return-void
.end method

.method private refreshMessages(ZLcom/urbanairship/richpush/RichPushManager$RefreshMessagesCallback;)V
    .locals 4

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/urbanairship/richpush/RichPushManager;->isRefreshingMessages()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 246
    const-string v0, "Skipping refresh messages, messages are already refreshing. Callback will not be triggered."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 275
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->refreshMessageRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 252
    new-instance v1, Lcom/urbanairship/richpush/RichPushManager$2;

    invoke-direct {v1, p0, v0, p2}, Lcom/urbanairship/richpush/RichPushManager$2;-><init>(Lcom/urbanairship/richpush/RichPushManager;ILcom/urbanairship/richpush/RichPushManager$RefreshMessagesCallback;)V

    .line 268
    const-string v0, "RichPushManager - Starting update service."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 269
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 270
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/urbanairship/richpush/RichPushUpdateService;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.urbanairship.richpush.MESSAGES_UPDATE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.urbanairship.richpush.RESULT_RECEIVER"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    .line 274
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/urbanairship/richpush/RichPushManager$Listener;)V
    .locals 2

    .prologue
    .line 139
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushManager;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    monitor-exit v1

    .line 142
    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized getRichPushInbox()Lcom/urbanairship/richpush/RichPushInbox;
    .locals 1

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->inbox:Lcom/urbanairship/richpush/RichPushInbox;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRichPushUser()Lcom/urbanairship/richpush/RichPushUser;
    .locals 1

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->user:Lcom/urbanairship/richpush/RichPushUser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected init()V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->inbox:Lcom/urbanairship/richpush/RichPushInbox;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushInbox;->refresh()V

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/urbanairship/richpush/RichPushManager;->updateUser(Z)V

    .line 100
    new-instance v0, Lcom/urbanairship/richpush/RichPushManager$1;

    invoke-direct {v0, p0}, Lcom/urbanairship/richpush/RichPushManager$1;-><init>(Lcom/urbanairship/richpush/RichPushManager;)V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->foregroundReceiver:Landroid/content/BroadcastReceiver;

    .line 107
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v0

    .line 109
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    const-string v2, "com.urbanairship.analytics.APP_FOREGROUND"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lcom/urbanairship/richpush/RichPushManager;->foregroundReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/content/o;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 113
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/urbanairship/richpush/RichPushManager;->foregroundReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    return-void
.end method

.method public isRefreshingMessages()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->refreshMessageRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshMessages()V
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/urbanairship/richpush/RichPushManager;->refreshMessages(Z)V

    .line 200
    return-void
.end method

.method public refreshMessages(Lcom/urbanairship/richpush/RichPushManager$RefreshMessagesCallback;)V
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/urbanairship/richpush/RichPushManager;->refreshMessages(ZLcom/urbanairship/richpush/RichPushManager$RefreshMessagesCallback;)V

    .line 228
    return-void
.end method

.method public refreshMessages(Z)V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/urbanairship/richpush/RichPushManager;->refreshMessages(ZLcom/urbanairship/richpush/RichPushManager$RefreshMessagesCallback;)V

    .line 212
    return-void
.end method

.method public removeListener(Lcom/urbanairship/richpush/RichPushManager$Listener;)V
    .locals 2

    .prologue
    .line 150
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushManager;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 152
    monitor-exit v1

    .line 153
    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected tearDown()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->foregroundReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 119
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushManager;->foregroundReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->foregroundReceiver:Landroid/content/BroadcastReceiver;

    .line 122
    :cond_0
    return-void
.end method

.method public updateUser()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 284
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/urbanairship/richpush/RichPushManager;->updateUser(Z)V

    .line 285
    return-void
.end method

.method public updateUser(Z)V
    .locals 4

    .prologue
    .line 304
    new-instance v0, Lcom/urbanairship/richpush/RichPushManager$3;

    invoke-direct {v0, p0}, Lcom/urbanairship/richpush/RichPushManager$3;-><init>(Lcom/urbanairship/richpush/RichPushManager;)V

    .line 311
    const-string v1, "RichPushManager - Starting update service."

    invoke-static {v1}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 312
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 313
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/urbanairship/richpush/RichPushUpdateService;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.urbanairship.richpush.USER_UPDATE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.urbanairship.richpush.RESULT_RECEIVER"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.urbanairship.richpush.EXTRA_FORCEFULLY"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 318
    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 319
    return-void
.end method

.method public updateUserIfNecessary()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 295
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/urbanairship/richpush/RichPushManager;->updateUser(Z)V

    .line 296
    return-void
.end method
