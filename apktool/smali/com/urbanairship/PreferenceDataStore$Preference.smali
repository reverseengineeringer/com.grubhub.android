.class Lcom/urbanairship/PreferenceDataStore$Preference;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final key:Ljava/lang/String;

.field final synthetic this$0:Lcom/urbanairship/PreferenceDataStore;

.field private value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/urbanairship/PreferenceDataStore;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->this$0:Lcom/urbanairship/PreferenceDataStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput-object p2, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->key:Ljava/lang/String;

    .line 362
    iput-object p3, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->value:Ljava/lang/String;

    .line 363
    invoke-direct {p0}, Lcom/urbanairship/PreferenceDataStore$Preference;->registerObserver()V

    .line 364
    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/PreferenceDataStore$Preference;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lcom/urbanairship/PreferenceDataStore$Preference;->writeValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/urbanairship/PreferenceDataStore$Preference;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->key:Ljava/lang/String;

    return-object v0
.end method

.method private registerObserver()V
    .locals 4

    .prologue
    .line 482
    new-instance v0, Lcom/urbanairship/PreferenceDataStore$Preference$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/urbanairship/PreferenceDataStore$Preference$2;-><init>(Lcom/urbanairship/PreferenceDataStore$Preference;Landroid/os/Handler;)V

    .line 497
    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->getPreferencesContentUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->key:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 498
    iget-object v2, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->this$0:Lcom/urbanairship/PreferenceDataStore;

    # getter for: Lcom/urbanairship/PreferenceDataStore;->resolver:Lcom/urbanairship/UrbanAirshipResolver;
    invoke-static {v2}, Lcom/urbanairship/PreferenceDataStore;->access$200(Lcom/urbanairship/PreferenceDataStore;)Lcom/urbanairship/UrbanAirshipResolver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3, v0}, Lcom/urbanairship/UrbanAirshipResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 499
    return-void
.end method

.method private setValue(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 418
    monitor-enter p0

    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->value:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/urbanairship/util/UAStringUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    monitor-exit p0

    .line 427
    :goto_0
    return-void

    .line 423
    :cond_0
    iput-object p1, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->value:Ljava/lang/String;

    .line 424
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    iget-object v0, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->this$0:Lcom/urbanairship/PreferenceDataStore;

    iget-object v1, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->key:Ljava/lang/String;

    # invokes: Lcom/urbanairship/PreferenceDataStore;->onPreferenceChanged(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/urbanairship/PreferenceDataStore;->access$100(Lcom/urbanairship/PreferenceDataStore;Ljava/lang/String;)V

    goto :goto_0

    .line 424
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private writeValue(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 437
    monitor-enter p0

    .line 438
    if-nez p1, :cond_1

    .line 439
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PreferenceDataStore - Removing preference: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 440
    iget-object v2, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->this$0:Lcom/urbanairship/PreferenceDataStore;

    # getter for: Lcom/urbanairship/PreferenceDataStore;->resolver:Lcom/urbanairship/UrbanAirshipResolver;
    invoke-static {v2}, Lcom/urbanairship/PreferenceDataStore;->access$200(Lcom/urbanairship/PreferenceDataStore;)Lcom/urbanairship/UrbanAirshipResolver;

    move-result-object v2

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->getPreferencesContentUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->key:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/urbanairship/UrbanAirshipResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    :goto_0
    monitor-exit p0

    .line 447
    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 440
    goto :goto_0

    .line 443
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PreferenceDataStore - Saving preference: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 444
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 445
    const-string v3, "_id"

    iget-object v4, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->key:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string v3, "value"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v3, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->this$0:Lcom/urbanairship/PreferenceDataStore;

    # getter for: Lcom/urbanairship/PreferenceDataStore;->resolver:Lcom/urbanairship/UrbanAirshipResolver;
    invoke-static {v3}, Lcom/urbanairship/PreferenceDataStore;->access$200(Lcom/urbanairship/PreferenceDataStore;)Lcom/urbanairship/UrbanAirshipResolver;

    move-result-object v3

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->getPreferencesContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/urbanairship/UrbanAirshipResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_2

    :goto_2
    monitor-exit p0

    goto :goto_1

    .line 449
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    .line 447
    goto :goto_2
.end method


# virtual methods
.method get()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    monitor-enter p0

    .line 373
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->value:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method put(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 383
    invoke-direct {p0, p1}, Lcom/urbanairship/PreferenceDataStore$Preference;->setValue(Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->this$0:Lcom/urbanairship/PreferenceDataStore;

    iget-object v0, v0, Lcom/urbanairship/PreferenceDataStore;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/urbanairship/PreferenceDataStore$Preference$1;

    invoke-direct {v1, p0, p1}, Lcom/urbanairship/PreferenceDataStore$Preference$1;-><init>(Lcom/urbanairship/PreferenceDataStore$Preference;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 390
    return-void
.end method

.method putSync(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 402
    monitor-enter p0

    .line 403
    :try_start_0
    invoke-direct {p0, p1}, Lcom/urbanairship/PreferenceDataStore$Preference;->writeValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    invoke-direct {p0, p1}, Lcom/urbanairship/PreferenceDataStore$Preference;->setValue(Ljava/lang/String;)V

    .line 405
    const/4 v0, 0x1

    monitor-exit p0

    .line 407
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 408
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method syncValue()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 456
    .line 458
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 459
    :try_start_1
    iget-object v0, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->this$0:Lcom/urbanairship/PreferenceDataStore;

    # getter for: Lcom/urbanairship/PreferenceDataStore;->resolver:Lcom/urbanairship/UrbanAirshipResolver;
    invoke-static {v0}, Lcom/urbanairship/PreferenceDataStore;->access$200(Lcom/urbanairship/PreferenceDataStore;)Lcom/urbanairship/UrbanAirshipResolver;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->getPreferencesContentUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "value"

    aput-object v4, v2, v3

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->key:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/urbanairship/UrbanAirshipResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 462
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 464
    if-eqz v1, :cond_3

    .line 465
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_0
    invoke-direct {p0, v6}, Lcom/urbanairship/PreferenceDataStore$Preference;->setValue(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 471
    :goto_0
    if-eqz v1, :cond_1

    .line 472
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 475
    :cond_1
    return-void

    .line 462
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 471
    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    .line 472
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 467
    :cond_3
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreferenceDataStore - Unable to get preference "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/urbanairship/PreferenceDataStore$Preference;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " from"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " database. Falling back to cached value."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 471
    :catchall_2
    move-exception v0

    move-object v1, v6

    goto :goto_2

    .line 462
    :catchall_3
    move-exception v0

    goto :goto_1
.end method
