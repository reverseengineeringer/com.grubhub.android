.class public Lcom/urbanairship/actions/ActionRunRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static executor:Ljava/util/concurrent/Executor;


# instance fields
.field private action:Lcom/urbanairship/actions/Action;

.field private actionName:Ljava/lang/String;

.field private actionValue:Lcom/urbanairship/actions/ActionValue;

.field private metadata:Landroid/os/Bundle;

.field private registry:Lcom/urbanairship/actions/ActionRegistry;

.field private situation:Lcom/urbanairship/actions/Situation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/urbanairship/actions/ActionRunRequest;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>(Lcom/urbanairship/actions/Action;)V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/urbanairship/actions/ActionRunRequest;->action:Lcom/urbanairship/actions/Action;

    .line 130
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/urbanairship/actions/ActionRegistry;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/urbanairship/actions/ActionRunRequest;->actionName:Ljava/lang/String;

    .line 119
    iput-object p2, p0, Lcom/urbanairship/actions/ActionRunRequest;->registry:Lcom/urbanairship/actions/ActionRegistry;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/actions/ActionRunRequest;Lcom/urbanairship/actions/ActionArguments;)Lcom/urbanairship/actions/ActionResult;
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/urbanairship/actions/ActionRunRequest;->runSync(Lcom/urbanairship/actions/ActionArguments;)Lcom/urbanairship/actions/ActionResult;

    move-result-object v0

    return-object v0
.end method

.method private createActionArguments()Lcom/urbanairship/actions/ActionArguments;
    .locals 4

    .prologue
    .line 281
    iget-object v0, p0, Lcom/urbanairship/actions/ActionRunRequest;->metadata:Landroid/os/Bundle;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 282
    :goto_0
    iget-object v1, p0, Lcom/urbanairship/actions/ActionRunRequest;->actionName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 283
    const-string v1, "com.urbanairship.REGISTRY_ACTION_NAME"

    iget-object v2, p0, Lcom/urbanairship/actions/ActionRunRequest;->actionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_0
    new-instance v1, Lcom/urbanairship/actions/ActionArguments;

    iget-object v2, p0, Lcom/urbanairship/actions/ActionRunRequest;->situation:Lcom/urbanairship/actions/Situation;

    iget-object v3, p0, Lcom/urbanairship/actions/ActionRunRequest;->actionValue:Lcom/urbanairship/actions/ActionValue;

    invoke-direct {v1, v2, v3, v0}, Lcom/urbanairship/actions/ActionArguments;-><init>(Lcom/urbanairship/actions/Situation;Lcom/urbanairship/actions/ActionValue;Landroid/os/Bundle;)V

    return-object v1

    .line 281
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/urbanairship/actions/ActionRunRequest;->metadata:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static createRequest(Lcom/urbanairship/actions/Action;)Lcom/urbanairship/actions/ActionRunRequest;
    .locals 2

    .prologue
    .line 103
    if-nez p0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to run null action"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    new-instance v0, Lcom/urbanairship/actions/ActionRunRequest;

    invoke-direct {v0, p0}, Lcom/urbanairship/actions/ActionRunRequest;-><init>(Lcom/urbanairship/actions/Action;)V

    return-object v0
.end method

.method public static createRequest(Ljava/lang/String;)Lcom/urbanairship/actions/ActionRunRequest;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lcom/urbanairship/actions/ActionRunRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/urbanairship/actions/ActionRunRequest;-><init>(Ljava/lang/String;Lcom/urbanairship/actions/ActionRegistry;)V

    return-object v0
.end method

.method public static createRequest(Ljava/lang/String;Lcom/urbanairship/actions/ActionRegistry;)Lcom/urbanairship/actions/ActionRunRequest;
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/urbanairship/actions/ActionRunRequest;

    invoke-direct {v0, p0, p1}, Lcom/urbanairship/actions/ActionRunRequest;-><init>(Ljava/lang/String;Lcom/urbanairship/actions/ActionRegistry;)V

    return-object v0
.end method

.method private lookUpAction(Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/urbanairship/actions/ActionRunRequest;->registry:Lcom/urbanairship/actions/ActionRegistry;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/urbanairship/actions/ActionRunRequest;->registry:Lcom/urbanairship/actions/ActionRegistry;

    invoke-virtual {v0, p1}, Lcom/urbanairship/actions/ActionRegistry;->getEntry(Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;

    move-result-object v0

    .line 301
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getActionRegistry()Lcom/urbanairship/actions/ActionRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/urbanairship/actions/ActionRegistry;->getEntry(Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;

    move-result-object v0

    goto :goto_0
.end method

.method private runSync(Lcom/urbanairship/actions/ActionArguments;)Lcom/urbanairship/actions/ActionResult;
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/urbanairship/actions/ActionRunRequest;->actionName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/urbanairship/actions/ActionRunRequest;->actionName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/urbanairship/actions/ActionRunRequest;->lookUpAction(Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;

    move-result-object v0

    .line 206
    if-nez v0, :cond_0

    .line 207
    sget-object v0, Lcom/urbanairship/actions/ActionResult$Status;->ACTION_NOT_FOUND:Lcom/urbanairship/actions/ActionResult$Status;

    invoke-static {v0}, Lcom/urbanairship/actions/ActionResult;->newEmptyResultWithStatus(Lcom/urbanairship/actions/ActionResult$Status;)Lcom/urbanairship/actions/ActionResult;

    move-result-object v0

    .line 217
    :goto_0
    return-object v0

    .line 208
    :cond_0
    invoke-virtual {v0}, Lcom/urbanairship/actions/ActionRegistry$Entry;->getPredicate()Lcom/android/internal/util/Predicate;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/urbanairship/actions/ActionRegistry$Entry;->getPredicate()Lcom/android/internal/util/Predicate;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Action "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/actions/ActionRunRequest;->actionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " will not be run. Registry predicate rejected the arguments: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 210
    sget-object v0, Lcom/urbanairship/actions/ActionResult$Status;->REJECTED_ARGUMENTS:Lcom/urbanairship/actions/ActionResult$Status;

    invoke-static {v0}, Lcom/urbanairship/actions/ActionResult;->newEmptyResultWithStatus(Lcom/urbanairship/actions/ActionResult$Status;)Lcom/urbanairship/actions/ActionResult;

    move-result-object v0

    goto :goto_0

    .line 212
    :cond_1
    iget-object v1, p0, Lcom/urbanairship/actions/ActionRunRequest;->situation:Lcom/urbanairship/actions/Situation;

    invoke-virtual {v0, v1}, Lcom/urbanairship/actions/ActionRegistry$Entry;->getActionForSituation(Lcom/urbanairship/actions/Situation;)Lcom/urbanairship/actions/Action;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/urbanairship/actions/Action;->run(Lcom/urbanairship/actions/ActionArguments;)Lcom/urbanairship/actions/ActionResult;

    move-result-object v0

    goto :goto_0

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/urbanairship/actions/ActionRunRequest;->action:Lcom/urbanairship/actions/Action;

    if-eqz v0, :cond_3

    .line 215
    iget-object v0, p0, Lcom/urbanairship/actions/ActionRunRequest;->action:Lcom/urbanairship/actions/Action;

    invoke-virtual {v0, p1}, Lcom/urbanairship/actions/Action;->run(Lcom/urbanairship/actions/ActionArguments;)Lcom/urbanairship/actions/ActionResult;

    move-result-object v0

    goto :goto_0

    .line 217
    :cond_3
    sget-object v0, Lcom/urbanairship/actions/ActionResult$Status;->ACTION_NOT_FOUND:Lcom/urbanairship/actions/ActionResult$Status;

    invoke-static {v0}, Lcom/urbanairship/actions/ActionResult;->newEmptyResultWithStatus(Lcom/urbanairship/actions/ActionResult$Status;)Lcom/urbanairship/actions/ActionResult;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 225
    invoke-virtual {p0, v0, v0}, Lcom/urbanairship/actions/ActionRunRequest;->run(Lcom/urbanairship/actions/ActionCompletionCallback;Landroid/os/Looper;)V

    .line 226
    return-void
.end method

.method public run(Lcom/urbanairship/actions/ActionCompletionCallback;)V
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/urbanairship/actions/ActionRunRequest;->run(Lcom/urbanairship/actions/ActionCompletionCallback;Landroid/os/Looper;)V

    .line 235
    return-void
.end method

.method public run(Lcom/urbanairship/actions/ActionCompletionCallback;Landroid/os/Looper;)V
    .locals 4

    .prologue
    .line 246
    if-nez p2, :cond_1

    .line 247
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_0

    .line 251
    :goto_0
    invoke-direct {p0}, Lcom/urbanairship/actions/ActionRunRequest;->createActionArguments()Lcom/urbanairship/actions/ActionArguments;

    move-result-object v1

    .line 253
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 255
    sget-object v0, Lcom/urbanairship/actions/ActionRunRequest;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/urbanairship/actions/ActionRunRequest$1;

    invoke-direct {v3, p0, v1, p1, v2}, Lcom/urbanairship/actions/ActionRunRequest$1;-><init>(Lcom/urbanairship/actions/ActionRunRequest;Lcom/urbanairship/actions/ActionArguments;Lcom/urbanairship/actions/ActionCompletionCallback;Landroid/os/Handler;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 272
    return-void

    .line 248
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p2

    goto :goto_0
.end method

.method public runSync()Lcom/urbanairship/actions/ActionResult;
    .locals 1

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/urbanairship/actions/ActionRunRequest;->createActionArguments()Lcom/urbanairship/actions/ActionArguments;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/urbanairship/actions/ActionRunRequest;->runSync(Lcom/urbanairship/actions/ActionArguments;)Lcom/urbanairship/actions/ActionResult;

    move-result-object v0

    return-object v0
.end method

.method public setMetadata(Landroid/os/Bundle;)Lcom/urbanairship/actions/ActionRunRequest;
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/urbanairship/actions/ActionRunRequest;->metadata:Landroid/os/Bundle;

    .line 171
    return-object p0
.end method

.method public setSituation(Lcom/urbanairship/actions/Situation;)Lcom/urbanairship/actions/ActionRunRequest;
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/urbanairship/actions/ActionRunRequest;->situation:Lcom/urbanairship/actions/Situation;

    .line 183
    return-object p0
.end method

.method public setValue(Lcom/urbanairship/actions/ActionValue;)Lcom/urbanairship/actions/ActionRunRequest;
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/urbanairship/actions/ActionRunRequest;->actionValue:Lcom/urbanairship/actions/ActionValue;

    .line 141
    return-object p0
.end method

.method public setValue(Ljava/lang/Object;)Lcom/urbanairship/actions/ActionRunRequest;
    .locals 4

    .prologue
    .line 155
    :try_start_0
    invoke-static {p1}, Lcom/urbanairship/actions/ActionValue;->wrap(Ljava/lang/Object;)Lcom/urbanairship/actions/ActionValue;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/actions/ActionRunRequest;->actionValue:Lcom/urbanairship/actions/ActionValue;
    :try_end_0
    .catch Lcom/urbanairship/actions/ActionValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    return-object p0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to wrap object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as an ActionValue."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
