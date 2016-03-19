.class Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final contentUri:Landroid/net/Uri;

.field final dataManager:Lcom/urbanairship/util/DataManager;

.field final notificationColumnId:Ljava/lang/String;

.field final table:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/urbanairship/util/DataManager;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-object p1, p0, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->dataManager:Lcom/urbanairship/util/DataManager;

    .line 346
    iput-object p2, p0, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->table:Ljava/lang/String;

    .line 347
    iput-object p3, p0, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->contentUri:Landroid/net/Uri;

    .line 348
    iput-object p4, p0, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->notificationColumnId:Ljava/lang/String;

    .line 349
    return-void
.end method

.method static createPreferencesModel(Landroid/content/Context;)Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;
    .locals 5

    .prologue
    .line 370
    new-instance v0, Lcom/urbanairship/PreferencesDataManager;

    invoke-direct {v0, p0}, Lcom/urbanairship/PreferencesDataManager;-><init>(Landroid/content/Context;)V

    .line 371
    new-instance v1, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;

    const-string v2, "preferences"

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->getPreferencesContentUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "_id"

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;-><init>(Lcom/urbanairship/util/DataManager;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    return-object v1
.end method

.method static createRichPushModel(Landroid/content/Context;)Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;
    .locals 5

    .prologue
    .line 358
    new-instance v0, Lcom/urbanairship/RichPushDataManager;

    invoke-direct {v0, p0}, Lcom/urbanairship/RichPushDataManager;-><init>(Landroid/content/Context;)V

    .line 359
    new-instance v1, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;

    const-string v2, "richpush"

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->getRichPushContentUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "message_id"

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;-><init>(Lcom/urbanairship/util/DataManager;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method notifyDatabaseChange(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 383
    iget-object v0, p0, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->contentUri:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "|"

    invoke-static {v2, v3}, Lcom/urbanairship/util/UAStringUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UrbanAirshipProvider - Notifying of change to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 386
    return-void
.end method
