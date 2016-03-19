.class Lcom/urbanairship/location/LocationPreferences;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;


# static fields
.field static final BACKGROUND_UPDATES_ALLOWED:Ljava/lang/String; = "com.urbanairship.location.BACKGROUND_UPDATES_ALLOWED"

.field static final KEY_PREFIX:Ljava/lang/String; = "com.urbanairship.location"

.field static final LOCATION_OPTIONS:Ljava/lang/String; = "com.urbanairship.location.LOCATION_OPTIONS"

.field static final LOCATION_UPDATES_ENABLED:Ljava/lang/String; = "com.urbanairship.location.LOCATION_UPDATES_ENABLED"


# instance fields
.field private preferenceChangeListener:Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;

.field private final preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;


# direct methods
.method constructor <init>(Lcom/urbanairship/PreferenceDataStore;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/urbanairship/location/LocationPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    .line 50
    invoke-virtual {p1, p0}, Lcom/urbanairship/PreferenceDataStore;->addListener(Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;)V

    .line 51
    return-void
.end method


# virtual methods
.method getLocationRequestOptions()Lcom/urbanairship/location/LocationRequestOptions;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 126
    iget-object v1, p0, Lcom/urbanairship/location/LocationPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v2, "com.urbanairship.location.LOCATION_OPTIONS"

    invoke-virtual {v1, v2, v0}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    if-eqz v1, :cond_0

    .line 130
    :try_start_0
    invoke-static {v1}, Lcom/urbanairship/location/LocationRequestOptions;->parseJson(Ljava/lang/String;)Lcom/urbanairship/location/LocationRequestOptions;
    :try_end_0
    .catch Lcom/urbanairship/json/JsonException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 138
    :cond_0
    :goto_0
    return-object v0

    .line 131
    :catch_0
    move-exception v1

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocationPreferences - Failed parsing LocationRequestOptions from JSON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/urbanairship/json/JsonException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :catch_1
    move-exception v1

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocationPreferences - Invalid LocationRequestOptions from JSON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method isBackgroundLocationAllowed()Z
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/urbanairship/location/LocationPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.location.BACKGROUND_UPDATES_ALLOWED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isLocationUpdatesEnabled()Z
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/urbanairship/location/LocationPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.location.LOCATION_UPDATES_ENABLED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onPreferenceChange(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 66
    const-string v0, "com.urbanairship.location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/location/LocationPreferences;->preferenceChangeListener:Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/urbanairship/location/LocationPreferences;->preferenceChangeListener:Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;

    invoke-interface {v0, p1}, Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;->onPreferenceChange(Ljava/lang/String;)V

    .line 71
    :cond_0
    monitor-exit p0

    .line 73
    :cond_1
    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setBackgroundLocationAllowed(Z)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/urbanairship/location/LocationPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.location.BACKGROUND_UPDATES_ALLOWED"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Z)V

    .line 109
    return-void
.end method

.method setListener(Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;)V
    .locals 1

    .prologue
    .line 59
    monitor-enter p0

    .line 60
    :try_start_0
    iput-object p1, p0, Lcom/urbanairship/location/LocationPreferences;->preferenceChangeListener:Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;

    .line 61
    monitor-exit p0

    .line 62
    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setLocationRequestOptions(Lcom/urbanairship/location/LocationRequestOptions;)V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/urbanairship/location/LocationPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.location.LOCATION_OPTIONS"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Lcom/urbanairship/json/JsonSerializable;)V

    .line 118
    return-void
.end method

.method setLocationUpdatesEnabled(Z)V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/urbanairship/location/LocationPreferences;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.location.LOCATION_UPDATES_ENABLED"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Z)V

    .line 91
    return-void
.end method
