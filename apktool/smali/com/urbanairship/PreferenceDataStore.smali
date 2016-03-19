.class public final Lcom/urbanairship/PreferenceDataStore;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final WHERE_CLAUSE_KEY:Ljava/lang/String; = "_id = ?"


# instance fields
.field executor:Ljava/util/concurrent/Executor;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final preferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/PreferenceDataStore$Preference;",
            ">;"
        }
    .end annotation
.end field

.field private final resolver:Lcom/urbanairship/UrbanAirshipResolver;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/urbanairship/UrbanAirshipResolver;

    invoke-direct {v0, p1}, Lcom/urbanairship/UrbanAirshipResolver;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/urbanairship/PreferenceDataStore;-><init>(Lcom/urbanairship/UrbanAirshipResolver;)V

    .line 85
    return-void
.end method

.method constructor <init>(Lcom/urbanairship/UrbanAirshipResolver;)V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/PreferenceDataStore;->executor:Ljava/util/concurrent/Executor;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/PreferenceDataStore;->preferences:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/PreferenceDataStore;->listeners:Ljava/util/List;

    .line 88
    iput-object p1, p0, Lcom/urbanairship/PreferenceDataStore;->resolver:Lcom/urbanairship/UrbanAirshipResolver;

    .line 89
    return-void
.end method

.method static synthetic access$100(Lcom/urbanairship/PreferenceDataStore;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/urbanairship/PreferenceDataStore;->onPreferenceChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/urbanairship/PreferenceDataStore;)Lcom/urbanairship/UrbanAirshipResolver;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/urbanairship/PreferenceDataStore;->resolver:Lcom/urbanairship/UrbanAirshipResolver;

    return-object v0
.end method

.method private getPreference(Ljava/lang/String;)Lcom/urbanairship/PreferenceDataStore$Preference;
    .locals 3

    .prologue
    .line 339
    iget-object v1, p0, Lcom/urbanairship/PreferenceDataStore;->preferences:Ljava/util/Map;

    monitor-enter v1

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/PreferenceDataStore;->preferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/urbanairship/PreferenceDataStore;->preferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/PreferenceDataStore$Preference;

    .line 346
    :goto_0
    monitor-exit v1

    .line 348
    return-object v0

    .line 343
    :cond_0
    new-instance v0, Lcom/urbanairship/PreferenceDataStore$Preference;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/urbanairship/PreferenceDataStore$Preference;-><init>(Lcom/urbanairship/PreferenceDataStore;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v2, p0, Lcom/urbanairship/PreferenceDataStore;->preferences:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onPreferenceChanged(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 323
    iget-object v1, p0, Lcom/urbanairship/PreferenceDataStore;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/PreferenceDataStore;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;

    .line 325
    invoke-interface {v0, p1}, Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;->onPreferenceChange(Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    return-void
.end method


# virtual methods
.method public addListener(Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;)V
    .locals 2

    .prologue
    .line 96
    iget-object v1, p0, Lcom/urbanairship/PreferenceDataStore;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/PreferenceDataStore;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    monitor-exit v1

    .line 99
    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/urbanairship/PreferenceDataStore;->getPreference(Ljava/lang/String;)Lcom/urbanairship/PreferenceDataStore$Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/PreferenceDataStore$Preference;->get()Ljava/lang/String;

    move-result-object v0

    .line 141
    if-nez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/urbanairship/PreferenceDataStore;->getPreference(Ljava/lang/String;)Lcom/urbanairship/PreferenceDataStore$Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/PreferenceDataStore$Preference;->get()Ljava/lang/String;

    move-result-object v0

    .line 188
    if-nez v0, :cond_0

    .line 195
    :goto_0
    return p2

    .line 193
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getJsonValue(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;
    .locals 3

    .prologue
    .line 207
    :try_start_0
    invoke-direct {p0, p1}, Lcom/urbanairship/PreferenceDataStore;->getPreference(Ljava/lang/String;)Lcom/urbanairship/PreferenceDataStore$Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/PreferenceDataStore$Preference;->get()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/json/JsonValue;->parseString(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;
    :try_end_0
    .catch Lcom/urbanairship/json/JsonException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 211
    :goto_0
    return-object v0

    .line 208
    :catch_0
    move-exception v0

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse preference value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    sget-object v0, Lcom/urbanairship/json/JsonValue;->NULL:Lcom/urbanairship/json/JsonValue;

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/urbanairship/PreferenceDataStore;->getPreference(Ljava/lang/String;)Lcom/urbanairship/PreferenceDataStore$Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/PreferenceDataStore$Preference;->get()Ljava/lang/String;

    move-result-object v0

    .line 167
    if-nez v0, :cond_0

    .line 174
    :goto_0
    return-wide p2

    .line 172
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/urbanairship/PreferenceDataStore;->getPreference(Ljava/lang/String;)Lcom/urbanairship/PreferenceDataStore$Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/PreferenceDataStore$Preference;->get()Ljava/lang/String;

    move-result-object v0

    .line 153
    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method loadAll()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-object v0, p0, Lcom/urbanairship/PreferenceDataStore;->resolver:Lcom/urbanairship/UrbanAirshipResolver;

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->getPreferencesContentUri()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/urbanairship/UrbanAirshipResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 116
    if-nez v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 120
    :cond_0
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 121
    const-string v2, "value"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 123
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 126
    iget-object v5, p0, Lcom/urbanairship/PreferenceDataStore;->preferences:Ljava/util/Map;

    new-instance v6, Lcom/urbanairship/PreferenceDataStore$Preference;

    invoke-direct {v6, p0, v3, v4}, Lcom/urbanairship/PreferenceDataStore$Preference;-><init>(Lcom/urbanairship/PreferenceDataStore;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 129
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public put(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/urbanairship/PreferenceDataStore;->getPreference(Ljava/lang/String;)Lcom/urbanairship/PreferenceDataStore$Preference;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/PreferenceDataStore$Preference;->put(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public put(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/urbanairship/PreferenceDataStore;->getPreference(Ljava/lang/String;)Lcom/urbanairship/PreferenceDataStore$Preference;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/PreferenceDataStore$Preference;->put(Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public put(Ljava/lang/String;Lcom/urbanairship/json/JsonSerializable;)V
    .locals 1

    .prologue
    .line 296
    if-nez p2, :cond_0

    .line 297
    invoke-virtual {p0, p1}, Lcom/urbanairship/PreferenceDataStore;->remove(Ljava/lang/String;)V

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-interface {p2}, Lcom/urbanairship/json/JsonSerializable;->toJsonValue()Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Lcom/urbanairship/json/JsonValue;)V

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Lcom/urbanairship/json/JsonValue;)V
    .locals 2

    .prologue
    .line 282
    if-nez p2, :cond_0

    .line 283
    invoke-virtual {p0, p1}, Lcom/urbanairship/PreferenceDataStore;->remove(Ljava/lang/String;)V

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-direct {p0, p1}, Lcom/urbanairship/PreferenceDataStore;->getPreference(Ljava/lang/String;)Lcom/urbanairship/PreferenceDataStore$Preference;

    move-result-object v0

    invoke-virtual {p2}, Lcom/urbanairship/json/JsonValue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/PreferenceDataStore$Preference;->put(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/urbanairship/PreferenceDataStore;->getPreference(Ljava/lang/String;)Lcom/urbanairship/PreferenceDataStore$Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/urbanairship/PreferenceDataStore$Preference;->put(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public put(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lcom/urbanairship/PreferenceDataStore;->getPreference(Ljava/lang/String;)Lcom/urbanairship/PreferenceDataStore$Preference;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/PreferenceDataStore$Preference;->put(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public putSync(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 313
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 314
    :goto_0
    invoke-direct {p0, p1}, Lcom/urbanairship/PreferenceDataStore;->getPreference(Ljava/lang/String;)Lcom/urbanairship/PreferenceDataStore$Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/PreferenceDataStore$Preference;->putSync(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 313
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/urbanairship/PreferenceDataStore;->getPreference(Ljava/lang/String;)Lcom/urbanairship/PreferenceDataStore$Preference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/urbanairship/PreferenceDataStore$Preference;->put(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public removeListener(Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;)V
    .locals 2

    .prologue
    .line 106
    iget-object v1, p0, Lcom/urbanairship/PreferenceDataStore;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/PreferenceDataStore;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 108
    monitor-exit v1

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeSync(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/urbanairship/PreferenceDataStore;->putSync(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
