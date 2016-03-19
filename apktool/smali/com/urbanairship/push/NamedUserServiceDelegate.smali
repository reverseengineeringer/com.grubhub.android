.class Lcom/urbanairship/push/NamedUserServiceDelegate;
.super Lcom/urbanairship/BaseIntentService$Delegate;
.source "SourceFile"


# static fields
.field static final LAST_UPDATED_TOKEN_KEY:Ljava/lang/String; = "com.urbanairship.nameduser.LAST_UPDATED_TOKEN_KEY"


# instance fields
.field private final client:Lcom/urbanairship/push/NamedUserAPIClient;

.field private final namedUser:Lcom/urbanairship/push/NamedUser;

.field private final pushManager:Lcom/urbanairship/push/PushManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;)V
    .locals 6

    .prologue
    .line 58
    new-instance v3, Lcom/urbanairship/push/NamedUserAPIClient;

    invoke-direct {v3}, Lcom/urbanairship/push/NamedUserAPIClient;-><init>()V

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

    invoke-direct/range {v0 .. v5}, Lcom/urbanairship/push/NamedUserServiceDelegate;-><init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/push/NamedUserAPIClient;Lcom/urbanairship/push/PushManager;Lcom/urbanairship/push/NamedUser;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/push/NamedUserAPIClient;Lcom/urbanairship/push/PushManager;Lcom/urbanairship/push/NamedUser;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/BaseIntentService$Delegate;-><init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;)V

    .line 64
    iput-object p3, p0, Lcom/urbanairship/push/NamedUserServiceDelegate;->client:Lcom/urbanairship/push/NamedUserAPIClient;

    .line 65
    iput-object p5, p0, Lcom/urbanairship/push/NamedUserServiceDelegate;->namedUser:Lcom/urbanairship/push/NamedUser;

    .line 66
    iput-object p4, p0, Lcom/urbanairship/push/NamedUserServiceDelegate;->pushManager:Lcom/urbanairship/push/PushManager;

    .line 67
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.urbanairship.push.ACTION_UPDATE_NAMED_USER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/NamedUserServiceDelegate;->namedUser:Lcom/urbanairship/push/NamedUser;

    invoke-virtual {v0}, Lcom/urbanairship/push/NamedUser;->getId()Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/urbanairship/push/NamedUserServiceDelegate;->namedUser:Lcom/urbanairship/push/NamedUser;

    invoke-virtual {v1}, Lcom/urbanairship/push/NamedUser;->getChangeToken()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {p0}, Lcom/urbanairship/push/NamedUserServiceDelegate;->getDataStore()Lcom/urbanairship/PreferenceDataStore;

    move-result-object v2

    const-string v3, "com.urbanairship.nameduser.LAST_UPDATED_TOKEN_KEY"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    iget-object v3, p0, Lcom/urbanairship/push/NamedUserServiceDelegate;->pushManager:Lcom/urbanairship/push/PushManager;

    invoke-virtual {v3}, Lcom/urbanairship/push/PushManager;->getChannelId()Ljava/lang/String;

    move-result-object v3

    .line 80
    if-nez v1, :cond_1

    if-nez v2, :cond_1

    .line 82
    const-string v0, "NamedUserServiceDelegate - New or re-install. Skipping."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 88
    const-string v0, "NamedUserServiceDelegate - named user already updated. Skipping."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_2
    invoke-static {v3}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 93
    const-string v0, "The channel ID does not exist. Will retry when channel ID is available."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_3
    if-nez v0, :cond_5

    .line 101
    iget-object v0, p0, Lcom/urbanairship/push/NamedUserServiceDelegate;->client:Lcom/urbanairship/push/NamedUserAPIClient;

    invoke-virtual {v0, v3}, Lcom/urbanairship/push/NamedUserAPIClient;->disassociate(Ljava/lang/String;)Lcom/urbanairship/http/Response;

    move-result-object v0

    .line 108
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/urbanairship/http/Response;->getStatus()I

    move-result v2

    invoke-static {v2}, Lcom/urbanairship/util/UAHttpStatusUtil;->inServerErrorRange(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 110
    :cond_4
    const-string v0, "Update named user failed, will retry."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/urbanairship/push/NamedUserServiceDelegate;->retryIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 104
    :cond_5
    iget-object v2, p0, Lcom/urbanairship/push/NamedUserServiceDelegate;->client:Lcom/urbanairship/push/NamedUserAPIClient;

    invoke-virtual {v2, v0, v3}, Lcom/urbanairship/push/NamedUserAPIClient;->associate(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Response;

    move-result-object v0

    goto :goto_1

    .line 116
    :cond_6
    invoke-virtual {v0}, Lcom/urbanairship/http/Response;->getStatus()I

    move-result v2

    invoke-static {v2}, Lcom/urbanairship/util/UAHttpStatusUtil;->inSuccessRange(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update named user succeeded with status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/urbanairship/http/Response;->getStatus()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/urbanairship/push/NamedUserServiceDelegate;->getDataStore()Lcom/urbanairship/PreferenceDataStore;

    move-result-object v0

    const-string v2, "com.urbanairship.nameduser.LAST_UPDATED_TOKEN_KEY"

    invoke-virtual {v0, v2, v1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/urbanairship/push/NamedUserServiceDelegate;->namedUser:Lcom/urbanairship/push/NamedUser;

    invoke-virtual {v0}, Lcom/urbanairship/push/NamedUser;->startUpdateTagsService()V

    goto/16 :goto_0

    .line 124
    :cond_7
    invoke-virtual {v0}, Lcom/urbanairship/http/Response;->getStatus()I

    move-result v1

    const/16 v2, 0x193

    if-ne v1, v2, :cond_8

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update named user failed with status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/urbanairship/http/Response;->getStatus()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " This action is not allowed when the app is in server-only mode."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 131
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update named user failed with status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/urbanairship/http/Response;->getStatus()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
