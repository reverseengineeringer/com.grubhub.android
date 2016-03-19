.class public final Lcom/urbanairship/actions/ActionRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LANDING_PAGE_CACHE_OPEN_TIME_LIMIT_MS:J = 0x240c8400L


# instance fields
.field private final actionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/actions/ActionRegistry$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/actions/ActionRegistry;->actionMap:Ljava/util/Map;

    .line 238
    return-void
.end method


# virtual methods
.method public getEntries()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/urbanairship/actions/ActionRegistry$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v1, p0, Lcom/urbanairship/actions/ActionRegistry;->actionMap:Ljava/util/Map;

    monitor-enter v1

    .line 135
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/urbanairship/actions/ActionRegistry;->actionMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getEntry(Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;
    .locals 2

    .prologue
    .line 118
    invoke-static {p1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 123
    :goto_0
    return-object v0

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/urbanairship/actions/ActionRegistry;->actionMap:Ljava/util/Map;

    monitor-enter v1

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/actions/ActionRegistry;->actionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/actions/ActionRegistry$Entry;

    monitor-exit v1

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public varargs registerAction(Lcom/urbanairship/actions/Action;[Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 68
    if-nez p1, :cond_0

    .line 69
    const-string v1, "Unable to register null action"

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 106
    :goto_0
    return-object v0

    .line 74
    :cond_0
    if-eqz p2, :cond_1

    array-length v1, p2

    if-nez v1, :cond_2

    .line 75
    :cond_1
    const-string v1, "A name is required to register an action"

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_2
    array-length v3, p2

    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_4

    aget-object v4, p2, v1

    .line 81
    invoke-static {v4}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 82
    const-string v1, "Unable to register action because one or more of the names was null or empty."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 88
    :cond_4
    iget-object v3, p0, Lcom/urbanairship/actions/ActionRegistry;->actionMap:Ljava/util/Map;

    monitor-enter v3

    .line 90
    :try_start_0
    new-instance v1, Lcom/urbanairship/actions/ActionRegistry$Entry;

    const/4 v0, 0x0

    invoke-direct {v1, p1, p2, v0}, Lcom/urbanairship/actions/ActionRegistry$Entry;-><init>(Lcom/urbanairship/actions/Action;[Ljava/lang/String;Lcom/urbanairship/actions/ActionRegistry$1;)V

    .line 92
    array-length v4, p2

    :goto_2
    if-ge v2, v4, :cond_7

    aget-object v5, p2, v2

    .line 94
    invoke-static {v5}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 92
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 98
    :cond_5
    iget-object v0, p0, Lcom/urbanairship/actions/ActionRegistry;->actionMap:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/actions/ActionRegistry$Entry;

    .line 99
    if-eqz v0, :cond_6

    .line 100
    # invokes: Lcom/urbanairship/actions/ActionRegistry$Entry;->removeName(Ljava/lang/String;)V
    invoke-static {v0, v5}, Lcom/urbanairship/actions/ActionRegistry$Entry;->access$100(Lcom/urbanairship/actions/ActionRegistry$Entry;Ljava/lang/String;)V

    .line 103
    :cond_6
    iget-object v0, p0, Lcom/urbanairship/actions/ActionRegistry;->actionMap:Ljava/util/Map;

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 106
    :cond_7
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0
.end method

.method public registerDefaultActions()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 165
    new-instance v0, Lcom/urbanairship/actions/ShareAction;

    invoke-direct {v0}, Lcom/urbanairship/actions/ShareAction;-><init>()V

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "share_action"

    aput-object v2, v1, v4

    const-string v2, "^s"

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/actions/ActionRegistry;->registerAction(Lcom/urbanairship/actions/Action;[Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;

    .line 169
    new-instance v0, Lcom/urbanairship/actions/OpenExternalUrlAction;

    invoke-direct {v0}, Lcom/urbanairship/actions/OpenExternalUrlAction;-><init>()V

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "open_external_url_action"

    aput-object v2, v1, v4

    const-string v2, "^u"

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/actions/ActionRegistry;->registerAction(Lcom/urbanairship/actions/Action;[Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;

    .line 173
    new-instance v0, Lcom/urbanairship/actions/DeepLinkAction;

    invoke-direct {v0}, Lcom/urbanairship/actions/DeepLinkAction;-><init>()V

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "deep_link_action"

    aput-object v2, v1, v4

    const-string v2, "^d"

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/actions/ActionRegistry;->registerAction(Lcom/urbanairship/actions/Action;[Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;

    .line 177
    new-instance v0, Lcom/urbanairship/actions/LandingPageAction;

    invoke-direct {v0}, Lcom/urbanairship/actions/LandingPageAction;-><init>()V

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "landing_page_action"

    aput-object v2, v1, v4

    const-string v2, "^p"

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/actions/ActionRegistry;->registerAction(Lcom/urbanairship/actions/Action;[Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;

    move-result-object v0

    .line 181
    new-instance v1, Lcom/urbanairship/actions/ActionRegistry$1;

    invoke-direct {v1, p0}, Lcom/urbanairship/actions/ActionRegistry$1;-><init>(Lcom/urbanairship/actions/ActionRegistry;)V

    invoke-virtual {v0, v1}, Lcom/urbanairship/actions/ActionRegistry$Entry;->setPredicate(Lcom/android/internal/util/Predicate;)V

    .line 192
    new-instance v0, Lcom/urbanairship/actions/ActionRegistry$2;

    invoke-direct {v0, p0}, Lcom/urbanairship/actions/ActionRegistry$2;-><init>(Lcom/urbanairship/actions/ActionRegistry;)V

    .line 199
    new-instance v1, Lcom/urbanairship/actions/tags/AddTagsAction;

    invoke-direct {v1}, Lcom/urbanairship/actions/tags/AddTagsAction;-><init>()V

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "add_tags_action"

    aput-object v3, v2, v4

    const-string v3, "^+t"

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/urbanairship/actions/ActionRegistry;->registerAction(Lcom/urbanairship/actions/Action;[Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;

    move-result-object v1

    .line 203
    invoke-virtual {v1, v0}, Lcom/urbanairship/actions/ActionRegistry$Entry;->setPredicate(Lcom/android/internal/util/Predicate;)V

    .line 205
    new-instance v1, Lcom/urbanairship/actions/tags/RemoveTagsAction;

    invoke-direct {v1}, Lcom/urbanairship/actions/tags/RemoveTagsAction;-><init>()V

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "remove_tags_action"

    aput-object v3, v2, v4

    const-string v3, "^-t"

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/urbanairship/actions/ActionRegistry;->registerAction(Lcom/urbanairship/actions/Action;[Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;

    move-result-object v1

    .line 209
    invoke-virtual {v1, v0}, Lcom/urbanairship/actions/ActionRegistry$Entry;->setPredicate(Lcom/android/internal/util/Predicate;)V

    .line 211
    new-instance v0, Lcom/urbanairship/actions/AddCustomEventAction;

    invoke-direct {v0}, Lcom/urbanairship/actions/AddCustomEventAction;-><init>()V

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "add_custom_event_action"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/actions/ActionRegistry;->registerAction(Lcom/urbanairship/actions/Action;[Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;

    move-result-object v0

    .line 214
    new-instance v1, Lcom/urbanairship/actions/ActionRegistry$3;

    invoke-direct {v1, p0}, Lcom/urbanairship/actions/ActionRegistry$3;-><init>(Lcom/urbanairship/actions/ActionRegistry;)V

    invoke-virtual {v0, v1}, Lcom/urbanairship/actions/ActionRegistry$Entry;->setPredicate(Lcom/android/internal/util/Predicate;)V

    .line 222
    new-instance v0, Lcom/urbanairship/actions/OpenRichPushInboxAction;

    invoke-direct {v0}, Lcom/urbanairship/actions/OpenRichPushInboxAction;-><init>()V

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "open_mc_action"

    aput-object v2, v1, v4

    const-string v2, "^mc"

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/actions/ActionRegistry;->registerAction(Lcom/urbanairship/actions/Action;[Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;

    .line 226
    new-instance v0, Lcom/urbanairship/actions/OverlayRichPushMessageAction;

    invoke-direct {v0}, Lcom/urbanairship/actions/OverlayRichPushMessageAction;-><init>()V

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "open_mc_overlay_action"

    aput-object v2, v1, v4

    const-string v2, "^mco"

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/actions/ActionRegistry;->registerAction(Lcom/urbanairship/actions/Action;[Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;

    .line 230
    new-instance v0, Lcom/urbanairship/actions/ClipboardAction;

    invoke-direct {v0}, Lcom/urbanairship/actions/ClipboardAction;-><init>()V

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "clipboard_action"

    aput-object v2, v1, v4

    const-string v2, "^c"

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/actions/ActionRegistry;->registerAction(Lcom/urbanairship/actions/Action;[Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;

    .line 233
    return-void
.end method

.method public unregisterAction(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 145
    invoke-static {p1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/urbanairship/actions/ActionRegistry;->actionMap:Ljava/util/Map;

    monitor-enter v1

    .line 150
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/urbanairship/actions/ActionRegistry;->getEntry(Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;

    move-result-object v0

    .line 151
    if-nez v0, :cond_1

    .line 152
    monitor-exit v1

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 155
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/urbanairship/actions/ActionRegistry$Entry;->getNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
    iget-object v3, p0, Lcom/urbanairship/actions/ActionRegistry;->actionMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 158
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
