.class public Lcom/urbanairship/actions/ActionService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final ACTION_RUN_ACTIONS:Ljava/lang/String; = "com.urbanairship.actionservice.ACTION_RUN_ACTIONS"

.field public static final EXTRA_ACTIONS_BUNDLE:Ljava/lang/String; = "com.urbanairship.actionservice.EXTRA_ACTIONS"

.field public static final EXTRA_ACTIONS_PAYLOAD:Ljava/lang/String; = "com.urbanairship.actionservice.EXTRA_ACTIONS_PAYLOAD"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_METADATA:Ljava/lang/String; = "com.urbanairship.actionservice.EXTRA_METADATA"

.field public static final EXTRA_PUSH_BUNDLE:Ljava/lang/String; = "com.urbanairship.actionservice.EXTRA_PUSH_BUNDLE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_SITUATION:Ljava/lang/String; = "com.urbanairship.actionservice.EXTRA_SITUATION"


# instance fields
.field private final actionRunRequestFactory:Lcom/urbanairship/actions/ActionRunRequestFactory;

.field private lastStartId:I

.field private runningActions:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/urbanairship/actions/ActionRunRequestFactory;

    invoke-direct {v0}, Lcom/urbanairship/actions/ActionRunRequestFactory;-><init>()V

    invoke-direct {p0, v0}, Lcom/urbanairship/actions/ActionService;-><init>(Lcom/urbanairship/actions/ActionRunRequestFactory;)V

    .line 113
    return-void
.end method

.method constructor <init>(Lcom/urbanairship/actions/ActionRunRequestFactory;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 91
    iput v0, p0, Lcom/urbanairship/actions/ActionService;->lastStartId:I

    .line 94
    iput v0, p0, Lcom/urbanairship/actions/ActionService;->runningActions:I

    .line 105
    iput-object p1, p0, Lcom/urbanairship/actions/ActionService;->actionRunRequestFactory:Lcom/urbanairship/actions/ActionRunRequestFactory;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/actions/ActionService;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/urbanairship/actions/ActionService;->runningActions:I

    return v0
.end method

.method static synthetic access$010(Lcom/urbanairship/actions/ActionService;)I
    .locals 2

    .prologue
    .line 51
    iget v0, p0, Lcom/urbanairship/actions/ActionService;->runningActions:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/urbanairship/actions/ActionService;->runningActions:I

    return v0
.end method

.method static synthetic access$100(Lcom/urbanairship/actions/ActionService;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/urbanairship/actions/ActionService;->lastStartId:I

    return v0
.end method

.method private static createActionsBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 295
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 297
    invoke-static {p0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v2

    .line 312
    :goto_0
    return-object v0

    .line 302
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->parseString(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v0

    .line 303
    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 305
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Lcom/urbanairship/actions/ActionValue;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/json/JsonValue;

    invoke-direct {v4, v0}, Lcom/urbanairship/actions/ActionValue;-><init>(Lcom/urbanairship/json/JsonValue;)V

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catch Lcom/urbanairship/json/JsonException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 308
    :catch_0
    move-exception v0

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to parse action payload: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    :cond_1
    move-object v0, v2

    .line 312
    goto :goto_0
.end method

.method private onRunActions(Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 238
    const-string v0, "com.urbanairship.actionservice.EXTRA_ACTIONS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 239
    if-nez v0, :cond_4

    .line 240
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v2, v0

    .line 243
    :goto_0
    const-string v0, "com.urbanairship.actionservice.EXTRA_SITUATION"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/actions/Situation;

    .line 244
    const-string v1, "com.urbanairship.actionservice.EXTRA_METADATA"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 245
    if-nez v1, :cond_3

    .line 246
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v3, v1

    .line 250
    :goto_1
    const-string v1, "com.urbanairship.actionservice.EXTRA_ACTIONS_PAYLOAD"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-static {v1}, Lcom/urbanairship/actions/ActionService;->createActionsBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 254
    const-string v1, "com.urbanairship.actionservice.EXTRA_PUSH_BUNDLE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 255
    if-eqz v1, :cond_0

    .line 256
    const-string v4, "com.urbanairship.PUSH_MESSAGE"

    new-instance v5, Lcom/urbanairship/push/PushMessage;

    invoke-direct {v5, v1}, Lcom/urbanairship/push/PushMessage;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 259
    :cond_0
    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 260
    const-string v0, "ActionService - No actions to run."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 285
    :cond_1
    return-void

    .line 264
    :cond_2
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 265
    iget v5, p0, Lcom/urbanairship/actions/ActionService;->runningActions:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/urbanairship/actions/ActionService;->runningActions:I

    .line 271
    iget-object v5, p0, Lcom/urbanairship/actions/ActionService;->actionRunRequestFactory:Lcom/urbanairship/actions/ActionRunRequestFactory;

    invoke-virtual {v5, v1}, Lcom/urbanairship/actions/ActionRunRequestFactory;->createActionRequest(Ljava/lang/String;)Lcom/urbanairship/actions/ActionRunRequest;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/urbanairship/actions/ActionRunRequest;->setMetadata(Landroid/os/Bundle;)Lcom/urbanairship/actions/ActionRunRequest;

    move-result-object v5

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/urbanairship/actions/ActionValue;

    invoke-virtual {v5, v1}, Lcom/urbanairship/actions/ActionRunRequest;->setValue(Lcom/urbanairship/actions/ActionValue;)Lcom/urbanairship/actions/ActionRunRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/actions/ActionRunRequest;->setSituation(Lcom/urbanairship/actions/Situation;)Lcom/urbanairship/actions/ActionRunRequest;

    move-result-object v1

    new-instance v5, Lcom/urbanairship/actions/ActionService$1;

    invoke-direct {v5, p0}, Lcom/urbanairship/actions/ActionService$1;-><init>(Lcom/urbanairship/actions/ActionService;)V

    invoke-virtual {v1, v5}, Lcom/urbanairship/actions/ActionRunRequest;->run(Lcom/urbanairship/actions/ActionCompletionCallback;)V

    goto :goto_2

    :cond_3
    move-object v3, v1

    goto :goto_1

    :cond_4
    move-object v2, v0

    goto/16 :goto_0
.end method

.method public static runActions(Landroid/content/Context;Ljava/lang/String;Lcom/urbanairship/actions/Situation;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 185
    invoke-static {p1}, Lcom/urbanairship/actions/ActionService;->createActionsBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    :goto_0
    return-void

    .line 190
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.urbanairship.actionservice.ACTION_RUN_ACTIONS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/urbanairship/actions/ActionService;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.urbanairship.actionservice.EXTRA_ACTIONS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.urbanairship.actionservice.EXTRA_SITUATION"

    if-nez p2, :cond_1

    sget-object p2, Lcom/urbanairship/actions/Situation;->MANUAL_INVOCATION:Lcom/urbanairship/actions/Situation;

    :cond_1
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    .line 195
    if-eqz p3, :cond_2

    .line 196
    const-string v1, "com.urbanairship.actionservice.EXTRA_METADATA"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 199
    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public static runActions(Landroid/content/Context;Ljava/util/Map;Lcom/urbanairship/actions/Situation;Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/actions/ActionValue;",
            ">;",
            "Lcom/urbanairship/actions/Situation;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 211
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 215
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 216
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 217
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    .line 220
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.urbanairship.actionservice.ACTION_RUN_ACTIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/urbanairship/actions/ActionService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.urbanairship.actionservice.EXTRA_ACTIONS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.urbanairship.actionservice.EXTRA_SITUATION"

    if-nez p2, :cond_2

    sget-object p2, Lcom/urbanairship/actions/Situation;->MANUAL_INVOCATION:Lcom/urbanairship/actions/Situation;

    :cond_2
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    .line 225
    if-eqz p3, :cond_3

    .line 226
    const-string v1, "com.urbanairship.actionservice.EXTRA_METADATA"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 229
    :cond_3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public static runActionsPayload(Landroid/content/Context;Ljava/lang/String;Lcom/urbanairship/actions/Situation;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/urbanairship/actions/ActionService;->runActions(Landroid/content/Context;Ljava/lang/String;Lcom/urbanairship/actions/Situation;Landroid/os/Bundle;)V

    .line 174
    return-void
.end method

.method public static runActionsPayload(Landroid/content/Context;Ljava/lang/String;Lcom/urbanairship/actions/Situation;Lcom/urbanairship/push/PushMessage;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 155
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 156
    if-eqz p3, :cond_0

    .line 157
    const-string v1, "com.urbanairship.PUSH_MESSAGE"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 160
    :cond_0
    invoke-static {p0, p1, p2, v0}, Lcom/urbanairship/actions/ActionService;->runActions(Landroid/content/Context;Ljava/lang/String;Lcom/urbanairship/actions/Situation;Landroid/os/Bundle;)V

    .line 161
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 118
    invoke-virtual {p0}, Lcom/urbanairship/actions/ActionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Autopilot;->automaticTakeOff(Landroid/content/Context;)V

    .line 119
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/urbanairship/actions/ActionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/urbanairship/Autopilot;->automaticTakeOff(Landroid/app/Application;)V

    .line 125
    iput p3, p0, Lcom/urbanairship/actions/ActionService;->lastStartId:I

    .line 127
    if-eqz p1, :cond_0

    const-string v0, "com.urbanairship.actionservice.ACTION_RUN_ACTIONS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionService - Received intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " startId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 129
    invoke-direct {p0, p1}, Lcom/urbanairship/actions/ActionService;->onRunActions(Landroid/content/Intent;)V

    .line 132
    :cond_0
    iget v0, p0, Lcom/urbanairship/actions/ActionService;->runningActions:I

    if-nez v0, :cond_1

    .line 133
    invoke-virtual {p0, p3}, Lcom/urbanairship/actions/ActionService;->stopSelf(I)V

    .line 136
    :cond_1
    const/4 v0, 0x2

    return v0
.end method
