.class public final Lcom/urbanairship/actions/ActionRegistry$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private defaultAction:Lcom/urbanairship/actions/Action;

.field private final names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private predicate:Lcom/android/internal/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Predicate",
            "<",
            "Lcom/urbanairship/actions/ActionArguments;",
            ">;"
        }
    .end annotation
.end field

.field private final situationOverrides:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/urbanairship/actions/Situation;",
            "Lcom/urbanairship/actions/Action;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/urbanairship/actions/Action;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/actions/ActionRegistry$Entry;->situationOverrides:Ljava/util/Map;

    .line 252
    iput-object p1, p0, Lcom/urbanairship/actions/ActionRegistry$Entry;->defaultAction:Lcom/urbanairship/actions/Action;

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/urbanairship/actions/ActionRegistry$Entry;->names:Ljava/util/List;

    .line 254
    return-void
.end method

.method synthetic constructor <init>(Lcom/urbanairship/actions/Action;[Ljava/lang/String;Lcom/urbanairship/actions/ActionRegistry$1;)V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/actions/ActionRegistry$Entry;-><init>(Lcom/urbanairship/actions/Action;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/urbanairship/actions/ActionRegistry$Entry;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/urbanairship/actions/ActionRegistry$Entry;->removeName(Ljava/lang/String;)V

    return-void
.end method

.method private addName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 364
    iget-object v1, p0, Lcom/urbanairship/actions/ActionRegistry$Entry;->names:Ljava/util/List;

    monitor-enter v1

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/actions/ActionRegistry$Entry;->names:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    monitor-exit v1

    .line 367
    return-void

    .line 366
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 353
    iget-object v1, p0, Lcom/urbanairship/actions/ActionRegistry$Entry;->names:Ljava/util/List;

    monitor-enter v1

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/actions/ActionRegistry$Entry;->names:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 355
    monitor-exit v1

    .line 356
    return-void

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addSituationOverride(Lcom/urbanairship/actions/Action;Lcom/urbanairship/actions/Situation;)V
    .locals 1

    .prologue
    .line 328
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/urbanairship/actions/ActionRegistry$Entry;->situationOverrides:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getActionForSituation(Lcom/urbanairship/actions/Situation;)Lcom/urbanairship/actions/Action;
    .locals 1

    .prologue
    .line 265
    if-nez p1, :cond_1

    .line 266
    iget-object v0, p0, Lcom/urbanairship/actions/ActionRegistry$Entry;->defaultAction:Lcom/urbanairship/actions/Action;

    .line 273
    :cond_0
    :goto_0
    return-object v0

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/urbanairship/actions/ActionRegistry$Entry;->situationOverrides:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/actions/Action;

    .line 270
    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/urbanairship/actions/ActionRegistry$Entry;->defaultAction:Lcom/urbanairship/actions/Action;

    goto :goto_0
.end method

.method public getDefaultAction()Lcom/urbanairship/actions/Action;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/urbanairship/actions/ActionRegistry$Entry;->defaultAction:Lcom/urbanairship/actions/Action;

    return-object v0
.end method

.method public getNames()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 342
    iget-object v1, p0, Lcom/urbanairship/actions/ActionRegistry$Entry;->names:Ljava/util/List;

    monitor-enter v1

    .line 343
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/urbanairship/actions/ActionRegistry$Entry;->names:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPredicate()Lcom/android/internal/util/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Lcom/urbanairship/actions/ActionArguments;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/urbanairship/actions/ActionRegistry$Entry;->predicate:Lcom/android/internal/util/Predicate;

    return-object v0
.end method

.method public setDefaultAction(Lcom/urbanairship/actions/Action;)V
    .locals 0

    .prologue
    .line 312
    if-nez p1, :cond_0

    .line 317
    :goto_0
    return-void

    .line 316
    :cond_0
    iput-object p1, p0, Lcom/urbanairship/actions/ActionRegistry$Entry;->defaultAction:Lcom/urbanairship/actions/Action;

    goto :goto_0
.end method

.method public setPredicate(Lcom/android/internal/util/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Lcom/urbanairship/actions/ActionArguments;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 291
    iput-object p1, p0, Lcom/urbanairship/actions/ActionRegistry$Entry;->predicate:Lcom/android/internal/util/Predicate;

    .line 292
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Action Entry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/actions/ActionRegistry$Entry;->names:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
