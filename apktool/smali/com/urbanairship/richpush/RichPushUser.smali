.class public Lcom/urbanairship/richpush/RichPushUser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final preferences:Lcom/urbanairship/richpush/RichPushUserPreferences;


# direct methods
.method constructor <init>(Lcom/urbanairship/PreferenceDataStore;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/urbanairship/richpush/RichPushUserPreferences;

    invoke-direct {v0, p1}, Lcom/urbanairship/richpush/RichPushUserPreferences;-><init>(Lcom/urbanairship/PreferenceDataStore;)V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushUser;->preferences:Lcom/urbanairship/richpush/RichPushUserPreferences;

    .line 46
    return-void
.end method

.method public static isCreated()Z
    .locals 2

    .prologue
    .line 54
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getRichPushManager()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/richpush/RichPushManager;->getRichPushUser()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/richpush/RichPushUser;->getId()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getRichPushManager()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushManager;->getRichPushUser()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushUser;->getPassword()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushUser;->preferences:Lcom/urbanairship/richpush/RichPushUserPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushUserPreferences;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushUser;->preferences:Lcom/urbanairship/richpush/RichPushUserPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushUserPreferences;->getUserToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RichPushUser - Setting Rich Push user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushUser;->preferences:Lcom/urbanairship/richpush/RichPushUserPreferences;

    invoke-virtual {v0, p1, p2}, Lcom/urbanairship/richpush/RichPushUserPreferences;->setUserCredentials(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method
