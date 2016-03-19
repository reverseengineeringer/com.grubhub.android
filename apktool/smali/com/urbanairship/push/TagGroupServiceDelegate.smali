.class Lcom/urbanairship/push/TagGroupServiceDelegate;
.super Lcom/urbanairship/BaseIntentService$Delegate;
.source "SourceFile"


# static fields
.field static final PENDING_CHANNEL_ADD_TAG_GROUPS_KEY:Ljava/lang/String; = "com.urbanairship.push.PENDING_ADD_TAG_GROUPS"

.field static final PENDING_CHANNEL_REMOVE_TAG_GROUPS_KEY:Ljava/lang/String; = "com.urbanairship.push.PENDING_REMOVE_TAG_GROUPS"

.field static final PENDING_NAMED_USER_ADD_TAG_GROUPS_KEY:Ljava/lang/String; = "com.urbanairship.nameduser.PENDING_ADD_TAG_GROUPS_KEY"

.field static final PENDING_NAMED_USER_REMOVE_TAG_GROUPS_KEY:Ljava/lang/String; = "com.urbanairship.nameduser.PENDING_REMOVE_TAG_GROUPS_KEY"


# instance fields
.field private final client:Lcom/urbanairship/push/TagGroupsAPIClient;

.field private final namedUser:Lcom/urbanairship/push/NamedUser;

.field private final pushManager:Lcom/urbanairship/push/PushManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;)V
    .locals 6

    .prologue
    .line 78
    new-instance v3, Lcom/urbanairship/push/TagGroupsAPIClient;

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/urbanairship/push/TagGroupsAPIClient;-><init>(Lcom/urbanairship/AirshipConfigOptions;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v4

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->getNamedUser()Lcom/urbanairship/push/NamedUser;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/urbanairship/push/TagGroupServiceDelegate;-><init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/push/TagGroupsAPIClient;Lcom/urbanairship/push/PushManager;Lcom/urbanairship/push/NamedUser;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/push/TagGroupsAPIClient;Lcom/urbanairship/push/PushManager;Lcom/urbanairship/push/NamedUser;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/BaseIntentService$Delegate;-><init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;)V

    .line 87
    iput-object p3, p0, Lcom/urbanairship/push/TagGroupServiceDelegate;->client:Lcom/urbanairship/push/TagGroupsAPIClient;

    .line 88
    iput-object p4, p0, Lcom/urbanairship/push/TagGroupServiceDelegate;->pushManager:Lcom/urbanairship/push/PushManager;

    .line 89
    iput-object p5, p0, Lcom/urbanairship/push/TagGroupServiceDelegate;->namedUser:Lcom/urbanairship/push/NamedUser;

    .line 90
    return-void
.end method

.method private combineTags(Landroid/os/Bundle;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 237
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 238
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 240
    if-eqz v3, :cond_0

    .line 245
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 252
    :goto_1
    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 248
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 256
    :cond_2
    return-void
.end method

.method private getPendingTagChanges(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 307
    .line 309
    :try_start_0
    invoke-virtual {p0}, Lcom/urbanairship/push/TagGroupServiceDelegate;->getDataStore()Lcom/urbanairship/PreferenceDataStore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/json/JsonValue;->parseString(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;
    :try_end_0
    .catch Lcom/urbanairship/json/JsonException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 315
    :goto_0
    invoke-static {v0}, Lcom/urbanairship/push/TagUtils;->convertToTagsMap(Lcom/urbanairship/json/JsonValue;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 310
    :catch_0
    move-exception v1

    .line 311
    const-string v2, "Unable to parse pending tag groups."

    invoke-static {v2, v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 312
    invoke-virtual {p0}, Lcom/urbanairship/push/TagGroupServiceDelegate;->getDataStore()Lcom/urbanairship/PreferenceDataStore;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/urbanairship/PreferenceDataStore;->remove(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private logTagGroupResponseIssues(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 264
    if-nez p1, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/urbanairship/json/JsonValue;->parseString(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;
    :try_end_0
    .catch Lcom/urbanairship/json/JsonException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 276
    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->isJsonMap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v0

    const-string v2, "warnings"

    invoke-virtual {v0, v2}, Lcom/urbanairship/json/JsonMap;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v0

    const-string v2, "warnings"

    invoke-virtual {v0, v2}, Lcom/urbanairship/json/JsonMap;->get(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->getList()Lcom/urbanairship/json/JsonList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/json/JsonValue;

    .line 280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tag Groups warnings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 271
    :catch_0
    move-exception v0

    .line 272
    const-string v1, "Unable to parse tag group response"

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 285
    :cond_2
    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v0

    const-string v2, "error"

    invoke-virtual {v0, v2}, Lcom/urbanairship/json/JsonMap;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag Groups error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v1, v2}, Lcom/urbanairship/json/JsonMap;->get(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onClearPendingNamedUserTags()V
    .locals 2

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/urbanairship/push/TagGroupServiceDelegate;->getDataStore()Lcom/urbanairship/PreferenceDataStore;

    move-result-object v0

    const-string v1, "com.urbanairship.nameduser.PENDING_ADD_TAG_GROUPS_KEY"

    invoke-virtual {v0, v1}, Lcom/urbanairship/PreferenceDataStore;->remove(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lcom/urbanairship/push/TagGroupServiceDelegate;->getDataStore()Lcom/urbanairship/PreferenceDataStore;

    move-result-object v0

    const-string v1, "com.urbanairship.nameduser.PENDING_REMOVE_TAG_GROUPS_KEY"

    invoke-virtual {v0, v1}, Lcom/urbanairship/PreferenceDataStore;->remove(Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method private onUpdateTagGroups(Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.urbanairship.push.ACTION_UPDATE_CHANNEL_TAG_GROUPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 117
    if-eqz v2, :cond_2

    .line 118
    const-string v1, "com.urbanairship.push.PENDING_ADD_TAG_GROUPS"

    .line 119
    const-string v0, "com.urbanairship.push.PENDING_REMOVE_TAG_GROUPS"

    .line 125
    :goto_0
    invoke-direct {p0, v1}, Lcom/urbanairship/push/TagGroupServiceDelegate;->getPendingTagChanges(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 126
    invoke-direct {p0, v0}, Lcom/urbanairship/push/TagGroupServiceDelegate;->getPendingTagChanges(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 129
    const-string v5, "com.urbanairship.push.EXTRA_ADD_TAG_GROUPS"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 130
    if-eqz v5, :cond_0

    .line 131
    invoke-direct {p0, v5, v3, v4}, Lcom/urbanairship/push/TagGroupServiceDelegate;->combineTags(Landroid/os/Bundle;Ljava/util/Map;Ljava/util/Map;)V

    .line 132
    const-string v5, "com.urbanairship.push.EXTRA_ADD_TAG_GROUPS"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 136
    :cond_0
    const-string v5, "com.urbanairship.push.EXTRA_REMOVE_TAG_GROUPS"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 137
    if-eqz v5, :cond_1

    .line 138
    invoke-direct {p0, v5, v4, v3}, Lcom/urbanairship/push/TagGroupServiceDelegate;->combineTags(Landroid/os/Bundle;Ljava/util/Map;Ljava/util/Map;)V

    .line 139
    const-string v5, "com.urbanairship.push.EXTRA_REMOVE_TAG_GROUPS"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 143
    :cond_1
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 144
    invoke-virtual {p0}, Lcom/urbanairship/push/TagGroupServiceDelegate;->getDataStore()Lcom/urbanairship/PreferenceDataStore;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/urbanairship/PreferenceDataStore;->remove(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/urbanairship/push/TagGroupServiceDelegate;->getDataStore()Lcom/urbanairship/PreferenceDataStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/PreferenceDataStore;->remove(Ljava/lang/String;)V

    .line 219
    :goto_1
    return-void

    .line 121
    :cond_2
    const-string v1, "com.urbanairship.nameduser.PENDING_ADD_TAG_GROUPS_KEY"

    .line 122
    const-string v0, "com.urbanairship.nameduser.PENDING_REMOVE_TAG_GROUPS_KEY"

    goto :goto_0

    .line 150
    :cond_3
    if-eqz v2, :cond_6

    .line 151
    iget-object v2, p0, Lcom/urbanairship/push/TagGroupServiceDelegate;->pushManager:Lcom/urbanairship/push/PushManager;

    invoke-virtual {v2}, Lcom/urbanairship/push/PushManager;->getChannelId()Ljava/lang/String;

    move-result-object v2

    .line 152
    if-nez v2, :cond_4

    .line 153
    const-string v2, "Unable to update tag groups until a channel is created. Saved pending tag groups."

    invoke-static {v2}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 156
    invoke-direct {p0, v1, v3}, Lcom/urbanairship/push/TagGroupServiceDelegate;->storePendingTagChanges(Ljava/lang/String;Ljava/util/Map;)V

    .line 157
    invoke-direct {p0, v0, v4}, Lcom/urbanairship/push/TagGroupServiceDelegate;->storePendingTagChanges(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 162
    :cond_4
    iget-object v5, p0, Lcom/urbanairship/push/TagGroupServiceDelegate;->client:Lcom/urbanairship/push/TagGroupsAPIClient;

    invoke-virtual {v5, v2, v3, v4}, Lcom/urbanairship/push/TagGroupsAPIClient;->updateChannelTags(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/urbanairship/http/Response;

    move-result-object v2

    .line 180
    :goto_2
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/urbanairship/http/Response;->getStatus()I

    move-result v5

    invoke-static {v5}, Lcom/urbanairship/util/UAHttpStatusUtil;->inServerErrorRange(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 181
    :cond_5
    const-string v2, "Failed to update tag groups, will retry. Saved pending tag groups."

    invoke-static {v2}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 184
    invoke-direct {p0, v1, v3}, Lcom/urbanairship/push/TagGroupServiceDelegate;->storePendingTagChanges(Ljava/lang/String;Ljava/util/Map;)V

    .line 185
    invoke-direct {p0, v0, v4}, Lcom/urbanairship/push/TagGroupServiceDelegate;->storePendingTagChanges(Ljava/lang/String;Ljava/util/Map;)V

    .line 188
    invoke-virtual {p0, p1}, Lcom/urbanairship/push/TagGroupServiceDelegate;->retryIntent(Landroid/content/Intent;)V

    goto :goto_1

    .line 164
    :cond_6
    iget-object v2, p0, Lcom/urbanairship/push/TagGroupServiceDelegate;->namedUser:Lcom/urbanairship/push/NamedUser;

    invoke-virtual {v2}, Lcom/urbanairship/push/NamedUser;->getId()Ljava/lang/String;

    move-result-object v2

    .line 165
    if-nez v2, :cond_7

    .line 166
    const-string v2, "Failed to update named user tags due to null named user ID. Saved pending tag groups."

    invoke-static {v2}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 169
    invoke-direct {p0, v1, v3}, Lcom/urbanairship/push/TagGroupServiceDelegate;->storePendingTagChanges(Ljava/lang/String;Ljava/util/Map;)V

    .line 170
    invoke-direct {p0, v0, v4}, Lcom/urbanairship/push/TagGroupServiceDelegate;->storePendingTagChanges(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 175
    :cond_7
    iget-object v2, p0, Lcom/urbanairship/push/TagGroupServiceDelegate;->client:Lcom/urbanairship/push/TagGroupsAPIClient;

    iget-object v5, p0, Lcom/urbanairship/push/TagGroupServiceDelegate;->namedUser:Lcom/urbanairship/push/NamedUser;

    invoke-virtual {v5}, Lcom/urbanairship/push/NamedUser;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v3, v4}, Lcom/urbanairship/push/TagGroupsAPIClient;->updateNamedUserTags(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/urbanairship/http/Response;

    move-result-object v2

    goto :goto_2

    .line 194
    :cond_8
    invoke-virtual {v2}, Lcom/urbanairship/http/Response;->getStatus()I

    move-result v5

    invoke-static {v5}, Lcom/urbanairship/util/UAHttpStatusUtil;->inSuccessRange(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update tag groups succeeded with status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/urbanairship/http/Response;->getStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v2}, Lcom/urbanairship/http/Response;->getResponseBody()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/urbanairship/push/TagGroupServiceDelegate;->logTagGroupResponseIssues(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/urbanairship/push/TagGroupServiceDelegate;->getDataStore()Lcom/urbanairship/PreferenceDataStore;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/urbanairship/PreferenceDataStore;->remove(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/urbanairship/push/TagGroupServiceDelegate;->getDataStore()Lcom/urbanairship/PreferenceDataStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/PreferenceDataStore;->remove(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 206
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update tag groups failed with status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/urbanairship/http/Response;->getStatus()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v2}, Lcom/urbanairship/http/Response;->getResponseBody()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/urbanairship/push/TagGroupServiceDelegate;->logTagGroupResponseIssues(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v2}, Lcom/urbanairship/http/Response;->getStatus()I

    move-result v5

    const/16 v6, 0x193

    if-eq v5, v6, :cond_a

    invoke-virtual {v2}, Lcom/urbanairship/http/Response;->getStatus()I

    move-result v2

    const/16 v5, 0x190

    if-ne v2, v5, :cond_b

    .line 211
    :cond_a
    invoke-virtual {p0}, Lcom/urbanairship/push/TagGroupServiceDelegate;->getDataStore()Lcom/urbanairship/PreferenceDataStore;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/urbanairship/PreferenceDataStore;->remove(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/urbanairship/push/TagGroupServiceDelegate;->getDataStore()Lcom/urbanairship/PreferenceDataStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/PreferenceDataStore;->remove(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 215
    :cond_b
    invoke-direct {p0, v1, v3}, Lcom/urbanairship/push/TagGroupServiceDelegate;->storePendingTagChanges(Ljava/lang/String;Ljava/util/Map;)V

    .line 216
    invoke-direct {p0, v0, v4}, Lcom/urbanairship/push/TagGroupServiceDelegate;->storePendingTagChanges(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1
.end method

.method private storePendingTagChanges(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/urbanairship/push/TagGroupServiceDelegate;->getDataStore()Lcom/urbanairship/PreferenceDataStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;Lcom/urbanairship/json/JsonValue;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Lcom/urbanairship/json/JsonValue;)V

    .line 297
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 103
    :goto_1
    return-void

    .line 94
    :sswitch_0
    const-string v2, "com.urbanairship.push.ACTION_UPDATE_CHANNEL_TAG_GROUPS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "com.urbanairship.push.ACTION_UPDATE_NAMED_USER_TAGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "com.urbanairship.push.ACTION_CLEAR_PENDING_NAMED_USER_TAGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 97
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/urbanairship/push/TagGroupServiceDelegate;->onUpdateTagGroups(Landroid/content/Intent;)V

    goto :goto_1

    .line 100
    :pswitch_1
    invoke-direct {p0}, Lcom/urbanairship/push/TagGroupServiceDelegate;->onClearPendingNamedUserTags()V

    goto :goto_1

    .line 94
    :sswitch_data_0
    .sparse-switch
        -0x31a5a6d5 -> :sswitch_2
        0x395d4313 -> :sswitch_1
        0x3e781ee9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
