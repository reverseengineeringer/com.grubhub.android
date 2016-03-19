.class public Lcom/urbanairship/push/NamedUser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CHANGE_TOKEN_KEY:Ljava/lang/String; = "com.urbanairship.nameduser.CHANGE_TOKEN_KEY"

.field private static final MAX_NAMED_USER_ID_LENGTH:I = 0x80

.field private static final NAMED_USER_ID_KEY:Ljava/lang/String; = "com.urbanairship.nameduser.NAMED_USER_ID_KEY"


# instance fields
.field private final preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;


# direct methods
.method constructor <init>(Lcom/urbanairship/PreferenceDataStore;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/urbanairship/push/NamedUser;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    .line 71
    return-void
.end method

.method private updateChangeToken()V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/urbanairship/push/NamedUser;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.nameduser.CHANGE_TOKEN_KEY"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method


# virtual methods
.method declared-synchronized disassociateNamedUserIfNull()V
    .locals 2

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/urbanairship/push/NamedUser;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/urbanairship/util/UAStringUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/NamedUser;->setId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_0
    monitor-exit p0

    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public editTagGroups()Lcom/urbanairship/push/TagGroupsEditor;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Lcom/urbanairship/push/TagGroupsEditor;

    const-string v1, "com.urbanairship.push.ACTION_UPDATE_NAMED_USER_TAGS"

    invoke-direct {v0, v1}, Lcom/urbanairship/push/TagGroupsEditor;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public forceUpdate()V
    .locals 1

    .prologue
    .line 86
    const-string v0, "NamedUser - force named user update."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Lcom/urbanairship/push/NamedUser;->updateChangeToken()V

    .line 88
    invoke-virtual {p0}, Lcom/urbanairship/push/NamedUser;->startUpdateService()V

    .line 89
    return-void
.end method

.method getChangeToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/urbanairship/push/NamedUser;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.nameduser.CHANGE_TOKEN_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/urbanairship/push/NamedUser;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.nameduser.NAMED_USER_ID_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized setId(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 100
    monitor-enter p0

    const/4 v0, 0x0

    .line 101
    if-eqz p1, :cond_6

    .line 102
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x80

    if-le v1, v2, :cond_1

    .line 104
    :cond_0
    const-string v0, "Failed to set named user ID. The named user ID must be greater than 0 and less than 129 characters."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    move-object v1, v0

    .line 111
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/urbanairship/push/NamedUser;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    if-nez v1, :cond_3

    const/4 v0, 0x1

    .line 114
    :goto_2
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/urbanairship/push/NamedUser;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/urbanairship/push/NamedUser;->getChangeToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/urbanairship/push/NamedUser;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v2, "com.urbanairship.nameduser.NAMED_USER_ID_KEY"

    invoke-virtual {v0, v2, v1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0}, Lcom/urbanairship/push/NamedUser;->updateChangeToken()V

    .line 121
    const-string v0, "NamedUser - Clear pending named user tags."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/urbanairship/push/NamedUser;->startClearPendingTagsService()V

    .line 124
    const-string v0, "NamedUser - Start service to update named user."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/urbanairship/push/NamedUser;->startUpdateService()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 111
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lcom/urbanairship/push/NamedUser;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    .line 127
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NamedUser - Skipping update. Named user ID trimmed already matches existing named user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/urbanairship/push/NamedUser;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_6
    move-object v1, v0

    goto :goto_1
.end method

.method startClearPendingTagsService()V
    .locals 3

    .prologue
    .line 180
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 181
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/urbanairship/push/PushService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    const-string v2, "com.urbanairship.push.ACTION_CLEAR_PENDING_NAMED_USER_TAGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 184
    return-void
.end method

.method startUpdateService()V
    .locals 3

    .prologue
    .line 170
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 171
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/urbanairship/push/PushService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    const-string v2, "com.urbanairship.push.ACTION_UPDATE_NAMED_USER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 174
    return-void
.end method

.method startUpdateTagsService()V
    .locals 3

    .prologue
    .line 190
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 191
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/urbanairship/push/PushService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    const-string v2, "com.urbanairship.push.ACTION_UPDATE_NAMED_USER_TAGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 194
    return-void
.end method
