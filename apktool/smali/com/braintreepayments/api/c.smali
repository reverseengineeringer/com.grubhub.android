.class public Lcom/braintreepayments/api/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/braintreepayments/api/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Lcom/braintreepayments/api/k;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private final f:Landroid/os/Handler;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/braintreepayments/api/g;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/braintreepayments/api/j;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/braintreepayments/api/h;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/braintreepayments/api/i;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/braintreepayments/api/e;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/braintreepayments/api/models/PaymentMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/braintreepayments/api/c;->a:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/braintreepayments/api/c;->f:Landroid/os/Handler;

    .line 126
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/braintreepayments/api/c;->g:Ljava/util/List;

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/braintreepayments/api/c;->h:Z

    .line 129
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/braintreepayments/api/c;->i:Ljava/util/Set;

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/braintreepayments/api/c;->j:Ljava/util/Set;

    .line 131
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/braintreepayments/api/c;->k:Ljava/util/Set;

    .line 132
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/braintreepayments/api/c;->l:Ljava/util/Set;

    .line 228
    new-instance v0, Lcom/braintreepayments/api/k;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p2}, Lcom/braintreepayments/api/models/g;->a(Ljava/lang/String;)Lcom/braintreepayments/api/models/g;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/braintreepayments/api/k;-><init>(Landroid/content/Context;Lcom/braintreepayments/api/models/g;)V

    iput-object v0, p0, Lcom/braintreepayments/api/c;->c:Lcom/braintreepayments/api/k;

    .line 230
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/c;->b:Ljava/util/concurrent/ExecutorService;

    .line 231
    const-string v0, "custom"

    iput-object v0, p0, Lcom/braintreepayments/api/c;->d:Ljava/lang/String;

    .line 232
    iput-object p2, p0, Lcom/braintreepayments/api/c;->e:Ljava/lang/String;

    .line 233
    sget-object v0, Lcom/braintreepayments/api/c;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/braintreepayments/api/c;->e:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/braintreepayments/api/k;)V
    .locals 2

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/braintreepayments/api/c;->f:Landroid/os/Handler;

    .line 126
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/braintreepayments/api/c;->g:Ljava/util/List;

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/braintreepayments/api/c;->h:Z

    .line 129
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/braintreepayments/api/c;->i:Ljava/util/Set;

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/braintreepayments/api/c;->j:Ljava/util/Set;

    .line 131
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/braintreepayments/api/c;->k:Ljava/util/Set;

    .line 132
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/braintreepayments/api/c;->l:Ljava/util/Set;

    .line 220
    iput-object p2, p0, Lcom/braintreepayments/api/c;->c:Lcom/braintreepayments/api/k;

    .line 221
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/c;->b:Ljava/util/concurrent/ExecutorService;

    .line 222
    const-string v0, "custom"

    iput-object v0, p0, Lcom/braintreepayments/api/c;->d:Ljava/lang/String;

    .line 223
    iput-object p1, p0, Lcom/braintreepayments/api/c;->e:Ljava/lang/String;

    .line 224
    sget-object v0, Lcom/braintreepayments/api/c;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/braintreepayments/api/c;->e:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;)Lcom/braintreepayments/api/c;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 272
    if-nez p1, :cond_1

    move-object v0, v1

    .line 285
    :cond_0
    :goto_0
    return-object v0

    .line 276
    :cond_1
    const-string v0, "com.braintreepayments.api.KEY_CLIENT_TOKEN"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 277
    const-string v0, "com.braintreepayments.api.KEY_CONFIGURATION"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 278
    sget-object v0, Lcom/braintreepayments/api/c;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/c;

    .line 279
    if-eqz v0, :cond_2

    invoke-direct {v0}, Lcom/braintreepayments/api/c;->p()Z

    move-result v4

    if-nez v4, :cond_0

    .line 281
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 282
    new-instance v0, Lcom/braintreepayments/api/c;

    new-instance v1, Lcom/braintreepayments/api/k;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4, v2, v3}, Lcom/braintreepayments/api/k;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v2, v1}, Lcom/braintreepayments/api/c;-><init>(Ljava/lang/String;Lcom/braintreepayments/api/k;)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 285
    goto :goto_0
.end method

.method static synthetic a(Lcom/braintreepayments/api/c;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/braintreepayments/api/c;->m:Ljava/util/List;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/braintreepayments/api/d;)V
    .locals 0

    .prologue
    .line 171
    invoke-static {p0, p1, p2}, Lcom/braintreepayments/api/c;->b(Landroid/content/Context;Ljava/lang/String;Lcom/braintreepayments/api/d;)Ljava/util/concurrent/Future;

    .line 172
    return-void
.end method

.method static synthetic a(Lcom/braintreepayments/api/c;Lcom/braintreepayments/api/exceptions/ErrorWithResponse;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/braintreepayments/api/c;->a(Lcom/braintreepayments/api/exceptions/ErrorWithResponse;)V

    return-void
.end method

.method static synthetic a(Lcom/braintreepayments/api/c;Lcom/braintreepayments/api/models/PaymentMethod;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/braintreepayments/api/c;->a(Lcom/braintreepayments/api/models/PaymentMethod;)V

    return-void
.end method

.method static synthetic a(Lcom/braintreepayments/api/c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/braintreepayments/api/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/braintreepayments/api/exceptions/ErrorWithResponse;)V
    .locals 1

    .prologue
    .line 1198
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/braintreepayments/api/c$7;

    invoke-direct {v0, p0, p1}, Lcom/braintreepayments/api/c$7;-><init>(Lcom/braintreepayments/api/c;Lcom/braintreepayments/api/exceptions/ErrorWithResponse;)V

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/c;->a(Lcom/braintreepayments/api/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1216
    monitor-exit p0

    return-void

    .line 1198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lcom/braintreepayments/api/models/PaymentMethod;)V
    .locals 2

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/braintreepayments/api/c;->m:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/braintreepayments/api/c;->m:Ljava/util/List;

    .line 1109
    :cond_0
    iget-object v0, p0, Lcom/braintreepayments/api/c;->m:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1110
    return-void
.end method

.method private declared-synchronized a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/braintreepayments/api/models/PaymentMethod;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1113
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1114
    new-instance v1, Lcom/braintreepayments/api/c$3;

    invoke-direct {v1, p0, v0}, Lcom/braintreepayments/api/c$3;-><init>(Lcom/braintreepayments/api/c;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/braintreepayments/api/c;->a(Lcom/braintreepayments/api/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1132
    monitor-exit p0

    return-void

    .line 1113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/braintreepayments/api/c;)Z
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/braintreepayments/api/c;->p()Z

    move-result v0

    return v0
.end method

.method protected static b(Landroid/content/Context;Ljava/lang/String;Lcom/braintreepayments/api/d;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/braintreepayments/api/d;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 180
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/braintreepayments/api/c$1;

    invoke-direct {v1, p1, p0, p2}, Lcom/braintreepayments/api/c$1;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/braintreepayments/api/d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/braintreepayments/api/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/ErrorWithResponse;,
            Lcom/braintreepayments/api/exceptions/d;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/braintreepayments/api/c;->q()V

    return-void
.end method

.method static synthetic b(Lcom/braintreepayments/api/c;Lcom/braintreepayments/api/models/PaymentMethod;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/braintreepayments/api/c;->b(Lcom/braintreepayments/api/models/PaymentMethod;)V

    return-void
.end method

.method static synthetic b(Lcom/braintreepayments/api/c;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/braintreepayments/api/c;->a(Ljava/util/List;)V

    return-void
.end method

.method private declared-synchronized b(Lcom/braintreepayments/api/models/PaymentMethod;)V
    .locals 1

    .prologue
    .line 1135
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/braintreepayments/api/c$4;

    invoke-direct {v0, p0, p1}, Lcom/braintreepayments/api/c$4;-><init>(Lcom/braintreepayments/api/c;Lcom/braintreepayments/api/models/PaymentMethod;)V

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/c;->a(Lcom/braintreepayments/api/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1153
    monitor-exit p0

    return-void

    .line 1135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1156
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/braintreepayments/api/c$5;

    invoke-direct {v0, p0, p1}, Lcom/braintreepayments/api/c$5;-><init>(Lcom/braintreepayments/api/c;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/c;->a(Lcom/braintreepayments/api/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1174
    monitor-exit p0

    return-void

    .line 1156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/braintreepayments/api/c;)Lcom/braintreepayments/api/k;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/braintreepayments/api/c;->c:Lcom/braintreepayments/api/k;

    return-object v0
.end method

.method static synthetic d(Lcom/braintreepayments/api/c;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/braintreepayments/api/c;->i:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic e(Lcom/braintreepayments/api/c;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/braintreepayments/api/c;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/braintreepayments/api/c;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/braintreepayments/api/c;->j:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic g(Lcom/braintreepayments/api/c;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/braintreepayments/api/c;->k:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic h(Lcom/braintreepayments/api/c;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/braintreepayments/api/c;->l:Ljava/util/Set;

    return-object v0
.end method

.method private p()Z
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/braintreepayments/api/c;->c:Lcom/braintreepayments/api/k;

    invoke-virtual {v0}, Lcom/braintreepayments/api/k;->a()Z

    move-result v0

    return v0
.end method

.method private q()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/ErrorWithResponse;,
            Lcom/braintreepayments/api/exceptions/d;
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/braintreepayments/api/c;->c:Lcom/braintreepayments/api/k;

    invoke-virtual {v0}, Lcom/braintreepayments/api/k;->b()V

    .line 242
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/braintreepayments/api/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 668
    invoke-static {p1}, Lcom/braintreepayments/api/a;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    const-string v0, "com.google.android.gms.wallet.EXTRA_MASKED_WALLET"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wallet/MaskedWallet;

    invoke-virtual {v0}, Lcom/google/android/gms/wallet/MaskedWallet;->b()Ljava/lang/String;

    move-result-object v0

    .line 675
    :goto_0
    return-object v0

    .line 671
    :cond_0
    invoke-static {p1}, Lcom/braintreepayments/api/a;->b(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    const-string v0, "com.google.android.gms.wallet.EXTRA_FULL_WALLET"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wallet/FullWallet;

    invoke-virtual {v0}, Lcom/google/android/gms/wallet/FullWallet;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 675
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1071
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/braintreepayments/api/c;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/braintreepayments/api/c$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/braintreepayments/api/c$2;-><init>(Lcom/braintreepayments/api/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(ILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 615
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/braintreepayments/api/c;->c:Lcom/braintreepayments/api/k;

    invoke-virtual {v0, p1, p2}, Lcom/braintreepayments/api/k;->a(ILandroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 616
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 617
    iget-object v1, p0, Lcom/braintreepayments/api/c;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/braintreepayments/api/c$9;

    invoke-direct {v2, p0, v0}, Lcom/braintreepayments/api/c$9;-><init>(Lcom/braintreepayments/api/c;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    :goto_0
    monitor-exit p0

    return-void

    .line 637
    :cond_0
    :try_start_1
    const-string v0, "venmo-app.fail"

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/c;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 615
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 408
    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Lcom/braintreepayments/api/f;

    if-eqz v0, :cond_0

    .line 409
    check-cast p1, Lcom/braintreepayments/api/f;

    invoke-virtual {p0, p1}, Lcom/braintreepayments/api/c;->a(Lcom/braintreepayments/api/f;)V

    .line 411
    :cond_0
    invoke-virtual {p0}, Lcom/braintreepayments/api/c;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    monitor-exit p0

    return-void

    .line 408
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 473
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/braintreepayments/api/c;->a(Landroid/app/Activity;ILjava/util/List;)V

    .line 474
    return-void
.end method

.method public a(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 940
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    if-eqz p4, :cond_0

    .line 941
    invoke-static {p4}, Lcom/braintreepayments/api/l;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 942
    invoke-virtual {p0, p1, p3, p4}, Lcom/braintreepayments/api/c;->a(Landroid/app/Activity;ILandroid/content/Intent;)V

    .line 953
    :cond_0
    :goto_0
    return-void

    .line 943
    :cond_1
    invoke-static {p4}, Lcom/braintreepayments/api/a;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 944
    const/4 v0, 0x0

    invoke-virtual {p0, p4}, Lcom/braintreepayments/api/c;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/braintreepayments/api/c;->a(Landroid/app/Activity;ILcom/google/android/gms/wallet/Cart;Ljava/lang/String;)V

    goto :goto_0

    .line 945
    :cond_2
    invoke-static {p4}, Lcom/braintreepayments/api/a;->b(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 946
    invoke-virtual {p0, p3, p4}, Lcom/braintreepayments/api/c;->b(ILandroid/content/Intent;)V

    goto :goto_0

    .line 947
    :cond_3
    invoke-static {p4}, Lcom/braintreepayments/api/m;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 948
    invoke-virtual {p0, p3, p4}, Lcom/braintreepayments/api/c;->a(ILandroid/content/Intent;)V

    goto :goto_0

    .line 949
    :cond_4
    invoke-static {p4}, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 950
    invoke-virtual {p0, p3, p4}, Lcom/braintreepayments/api/c;->c(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public declared-synchronized a(Landroid/app/Activity;ILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 572
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/braintreepayments/api/c;->c:Lcom/braintreepayments/api/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/braintreepayments/api/k;->a(Landroid/app/Activity;ILandroid/content/Intent;)Lcom/braintreepayments/api/models/j;

    move-result-object v0

    .line 574
    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/c;->a(Lcom/braintreepayments/api/models/l;)V
    :try_end_0
    .catch Lcom/braintreepayments/api/exceptions/f; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 577
    :catch_0
    move-exception v0

    .line 578
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/c;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 572
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/app/Activity;ILcom/google/android/gms/wallet/Cart;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 758
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/braintreepayments/api/c;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/braintreepayments/api/c$11;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/braintreepayments/api/c$11;-><init>(Lcom/braintreepayments/api/c;Landroid/app/Activity;ILcom/google/android/gms/wallet/Cart;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 769
    monitor-exit p0

    return-void

    .line 758
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/app/Activity;ILcom/google/android/gms/wallet/Cart;ZZZ)V
    .locals 9

    .prologue
    .line 707
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/braintreepayments/api/c;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/braintreepayments/api/c$10;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/braintreepayments/api/c$10;-><init>(Lcom/braintreepayments/api/c;Landroid/app/Activity;ILcom/google/android/gms/wallet/Cart;ZZZ)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 720
    monitor-exit p0

    return-void

    .line 707
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Landroid/app/Activity;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 488
    const-string v0, "add-paypal.start"

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/c;->a(Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/braintreepayments/api/c;->c:Lcom/braintreepayments/api/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/braintreepayments/api/k;->a(Landroid/app/Activity;ILjava/util/List;)V

    .line 490
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 259
    const-string v0, "com.braintreepayments.api.KEY_CLIENT_TOKEN"

    iget-object v1, p0, Lcom/braintreepayments/api/c;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v0, "com.braintreepayments.api.KEY_CONFIGURATION"

    iget-object v1, p0, Lcom/braintreepayments/api/c;->c:Lcom/braintreepayments/api/k;

    invoke-virtual {v1}, Lcom/braintreepayments/api/k;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public declared-synchronized a(Lcom/braintreepayments/api/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/braintreepayments/api/f;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 360
    monitor-enter p0

    :try_start_0
    instance-of v1, p1, Lcom/braintreepayments/api/j;

    if-eqz v1, :cond_0

    .line 361
    iget-object v2, p0, Lcom/braintreepayments/api/c;->i:Ljava/util/Set;

    move-object v0, p1

    check-cast v0, Lcom/braintreepayments/api/j;

    move-object v1, v0

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 364
    :cond_0
    instance-of v1, p1, Lcom/braintreepayments/api/h;

    if-eqz v1, :cond_1

    .line 365
    iget-object v2, p0, Lcom/braintreepayments/api/c;->j:Ljava/util/Set;

    move-object v0, p1

    check-cast v0, Lcom/braintreepayments/api/h;

    move-object v1, v0

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 368
    :cond_1
    instance-of v1, p1, Lcom/braintreepayments/api/i;

    if-eqz v1, :cond_2

    .line 369
    iget-object v2, p0, Lcom/braintreepayments/api/c;->k:Ljava/util/Set;

    move-object v0, p1

    check-cast v0, Lcom/braintreepayments/api/i;

    move-object v1, v0

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 372
    :cond_2
    instance-of v1, p1, Lcom/braintreepayments/api/e;

    if-eqz v1, :cond_3

    .line 373
    iget-object v1, p0, Lcom/braintreepayments/api/c;->l:Ljava/util/Set;

    check-cast p1, Lcom/braintreepayments/api/e;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    :cond_3
    monitor-exit p0

    return-void

    .line 360
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected a(Lcom/braintreepayments/api/g;)V
    .locals 1

    .prologue
    .line 1219
    iget-boolean v0, p0, Lcom/braintreepayments/api/c;->h:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/braintreepayments/api/g;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1220
    :cond_0
    iget-object v0, p0, Lcom/braintreepayments/api/c;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1224
    :goto_0
    return-void

    .line 1222
    :cond_1
    invoke-interface {p1}, Lcom/braintreepayments/api/g;->a()V

    goto :goto_0
.end method

.method public declared-synchronized a(Lcom/braintreepayments/api/models/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/braintreepayments/api/models/PaymentMethod;",
            ">(",
            "Lcom/braintreepayments/api/models/l",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 976
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/braintreepayments/api/c;->b(Lcom/braintreepayments/api/models/l;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 977
    monitor-exit p0

    return-void

    .line 976
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1064
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/braintreepayments/api/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/braintreepayments/api/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/braintreepayments/api/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1065
    monitor-exit p0

    return-void

    .line 1064
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 1177
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/braintreepayments/api/c$6;

    invoke-direct {v0, p0, p1}, Lcom/braintreepayments/api/c$6;-><init>(Lcom/braintreepayments/api/c;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/c;->a(Lcom/braintreepayments/api/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1195
    monitor-exit p0

    return-void

    .line 1177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/braintreepayments/api/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected declared-synchronized b(Lcom/braintreepayments/api/models/l;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/braintreepayments/api/models/PaymentMethod;",
            ">(",
            "Lcom/braintreepayments/api/models/l",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 985
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/braintreepayments/api/c;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/braintreepayments/api/c$12;

    invoke-direct {v1, p0, p1}, Lcom/braintreepayments/api/c$12;-><init>(Lcom/braintreepayments/api/c;Lcom/braintreepayments/api/models/l;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(ILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 779
    monitor-enter p0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 781
    :try_start_0
    iget-object v0, p0, Lcom/braintreepayments/api/c;->c:Lcom/braintreepayments/api/k;

    invoke-virtual {v0}, Lcom/braintreepayments/api/k;->j()V

    .line 783
    iget-object v0, p0, Lcom/braintreepayments/api/c;->c:Lcom/braintreepayments/api/k;

    invoke-virtual {v0, p2}, Lcom/braintreepayments/api/k;->a(Landroid/content/Intent;)Lcom/braintreepayments/api/models/AndroidPayCard;

    move-result-object v0

    .line 785
    if-eqz v0, :cond_0

    .line 786
    invoke-direct {p0, v0}, Lcom/braintreepayments/api/c;->a(Lcom/braintreepayments/api/models/PaymentMethod;)V

    .line 787
    invoke-direct {p0, v0}, Lcom/braintreepayments/api/c;->b(Lcom/braintreepayments/api/models/PaymentMethod;)V

    .line 788
    invoke-virtual {v0}, Lcom/braintreepayments/api/models/AndroidPayCard;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/braintreepayments/api/c;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 794
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 790
    :catch_0
    move-exception v0

    .line 791
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/c;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 779
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 424
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/braintreepayments/api/c;->n()V

    .line 425
    instance-of v0, p1, Lcom/braintreepayments/api/f;

    if-eqz v0, :cond_0

    .line 426
    check-cast p1, Lcom/braintreepayments/api/f;

    invoke-virtual {p0, p1}, Lcom/braintreepayments/api/c;->b(Lcom/braintreepayments/api/f;)V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/braintreepayments/api/c;->c:Lcom/braintreepayments/api/k;

    invoke-virtual {v0}, Lcom/braintreepayments/api/k;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    monitor-exit p0

    return-void

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Landroid/app/Activity;I)V
    .locals 2

    .prologue
    .line 591
    :try_start_0
    iget-object v0, p0, Lcom/braintreepayments/api/c;->c:Lcom/braintreepayments/api/k;

    invoke-virtual {v0, p1, p2}, Lcom/braintreepayments/api/k;->a(Landroid/app/Activity;I)V

    .line 592
    const-string v0, "add-venmo.start"

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/braintreepayments/api/exceptions/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    :goto_0
    return-void

    .line 593
    :catch_0
    move-exception v0

    .line 594
    const-string v1, "add-venmo.unavailable"

    invoke-virtual {p0, v1}, Lcom/braintreepayments/api/c;->a(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public declared-synchronized b(Lcom/braintreepayments/api/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/braintreepayments/api/f;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 383
    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Lcom/braintreepayments/api/j;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/braintreepayments/api/c;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 387
    :cond_0
    instance-of v0, p1, Lcom/braintreepayments/api/h;

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/braintreepayments/api/c;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 391
    :cond_1
    instance-of v0, p1, Lcom/braintreepayments/api/i;

    if-eqz v0, :cond_2

    .line 392
    iget-object v0, p0, Lcom/braintreepayments/api/c;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 395
    :cond_2
    instance-of v0, p1, Lcom/braintreepayments/api/e;

    if-eqz v0, :cond_3

    .line 396
    iget-object v0, p0, Lcom/braintreepayments/api/c;->l:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    :cond_3
    monitor-exit p0

    return-void

    .line 383
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 294
    const-string v0, "dropin"

    iput-object v0, p0, Lcom/braintreepayments/api/c;->d:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public declared-synchronized c(ILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 916
    monitor-enter p0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 917
    :try_start_0
    const-string v0, "com.braintreepayments.api.EXTRA_THREE_D_SECURE_RESULT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;

    .line 919
    invoke-virtual {v0}, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 920
    invoke-virtual {v0}, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;->b()Lcom/braintreepayments/api/models/Card;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/braintreepayments/api/c;->b(Lcom/braintreepayments/api/models/PaymentMethod;)V

    .line 921
    invoke-virtual {v0}, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;->b()Lcom/braintreepayments/api/models/Card;

    move-result-object v0

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/Card;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/braintreepayments/api/c;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 928
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 922
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 923
    new-instance v1, Lcom/braintreepayments/api/exceptions/d;

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/braintreepayments/api/exceptions/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/braintreepayments/api/c;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 916
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 925
    :cond_2
    :try_start_2
    new-instance v1, Lcom/braintreepayments/api/exceptions/ErrorWithResponse;

    const/16 v2, 0x1a6

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;->c()Lcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeErrors;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/braintreepayments/api/exceptions/ErrorWithResponse;-><init>(ILcom/braintreepayments/api/exceptions/ErrorWithResponse$BraintreeErrors;)V

    invoke-direct {p0, v1}, Lcom/braintreepayments/api/c;->a(Lcom/braintreepayments/api/exceptions/ErrorWithResponse;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/braintreepayments/api/c;->c:Lcom/braintreepayments/api/k;

    invoke-virtual {v0}, Lcom/braintreepayments/api/k;->d()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/braintreepayments/api/c;->c:Lcom/braintreepayments/api/k;

    invoke-virtual {v0}, Lcom/braintreepayments/api/k;->e()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/braintreepayments/api/c;->c:Lcom/braintreepayments/api/k;

    invoke-virtual {v0}, Lcom/braintreepayments/api/k;->f()Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/braintreepayments/api/c;->c:Lcom/braintreepayments/api/k;

    invoke-virtual {v0}, Lcom/braintreepayments/api/k;->g()Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/braintreepayments/api/c;->c:Lcom/braintreepayments/api/k;

    invoke-virtual {v0}, Lcom/braintreepayments/api/k;->h()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized i()V
    .locals 1

    .prologue
    .line 441
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/braintreepayments/api/c;->j()Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    monitor-exit p0

    return-void

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized j()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 448
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/braintreepayments/api/c;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/braintreepayments/api/c$8;

    invoke-direct {v1, p0}, Lcom/braintreepayments/api/c$8;-><init>(Lcom/braintreepayments/api/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public k()Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/braintreepayments/api/c;->c:Lcom/braintreepayments/api/k;

    invoke-virtual {v0}, Lcom/braintreepayments/api/k;->i()Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized l()Z
    .locals 1

    .prologue
    .line 1232
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/braintreepayments/api/c;->m:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/braintreepayments/api/models/PaymentMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1240
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/braintreepayments/api/c;->m:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1241
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1243
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/braintreepayments/api/c;->m:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized n()V
    .locals 1

    .prologue
    .line 1257
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/braintreepayments/api/c;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1258
    monitor-exit p0

    return-void

    .line 1257
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized o()V
    .locals 3

    .prologue
    .line 1266
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/braintreepayments/api/c;->h:Z

    .line 1267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1268
    iget-object v1, p0, Lcom/braintreepayments/api/c;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1269
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/g;

    .line 1270
    invoke-interface {v0}, Lcom/braintreepayments/api/g;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1271
    invoke-interface {v0}, Lcom/braintreepayments/api/g;->a()V

    .line 1272
    iget-object v2, p0, Lcom/braintreepayments/api/c;->g:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1266
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1275
    :cond_1
    monitor-exit p0

    return-void
.end method
