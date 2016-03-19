.class public Lcom/paypal/android/sdk/dp;
.super Lcom/paypal/android/sdk/dk;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/paypal/android/sdk/ck;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/paypal/android/sdk/ea;

.field private final e:Lcom/paypal/android/sdk/as;

.field private final f:Lcom/paypal/android/sdk/as;

.field private final g:Lcom/paypal/android/sdk/ef;

.field private final h:Ljava/util/concurrent/ScheduledExecutorService;

.field private final i:Ljava/util/concurrent/ConcurrentLinkedQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/dp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/dp;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/paypal/android/sdk/ck;Ljava/lang/String;Lcom/paypal/android/sdk/ef;Lcom/paypal/android/sdk/ea;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const v5, 0x15f90

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/paypal/android/sdk/dk;-><init>()V

    iput-object p1, p0, Lcom/paypal/android/sdk/dp;->b:Lcom/paypal/android/sdk/ck;

    iput-object p2, p0, Lcom/paypal/android/sdk/dp;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/paypal/android/sdk/dp;->g:Lcom/paypal/android/sdk/ef;

    iput-object p4, p0, Lcom/paypal/android/sdk/dp;->d:Lcom/paypal/android/sdk/ea;

    invoke-static {}, Lcom/paypal/android/sdk/dl;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    invoke-static {p2}, Lcom/paypal/android/sdk/cj;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez p8, :cond_0

    move v2, v0

    :goto_0
    if-nez v4, :cond_1

    :goto_1
    invoke-static {v5, v2, v0, p6}, Lcom/paypal/android/sdk/ao;->a(IZZLjava/lang/String;)Lcom/paypal/android/sdk/as;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/dp;->e:Lcom/paypal/android/sdk/as;

    iget-object v0, p0, Lcom/paypal/android/sdk/dp;->e:Lcom/paypal/android/sdk/as;

    invoke-virtual {v0, v3}, Lcom/paypal/android/sdk/as;->a(Ljava/util/concurrent/ThreadPoolExecutor;)V

    invoke-static {v5, v1, v1, p7}, Lcom/paypal/android/sdk/ao;->a(IZZLjava/lang/String;)Lcom/paypal/android/sdk/as;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/dp;->f:Lcom/paypal/android/sdk/as;

    iget-object v0, p0, Lcom/paypal/android/sdk/dp;->f:Lcom/paypal/android/sdk/as;

    invoke-virtual {v0, v3}, Lcom/paypal/android/sdk/as;->a(Ljava/util/concurrent/ThreadPoolExecutor;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/dp;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/dp;->i:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/paypal/android/sdk/dp;)Lcom/paypal/android/sdk/ea;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/dp;->d:Lcom/paypal/android/sdk/ea;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method static synthetic a(Lcom/paypal/android/sdk/dp;Lcom/paypal/android/sdk/dz;Ljava/io/IOException;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/dz;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failure."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v0, p2, Lorg/apache/http/client/HttpResponseException;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lorg/apache/http/client/HttpResponseException;

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v0

    const-string v1, "paypal.sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request failure with http statusCode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v0}, Lcom/paypal/android/sdk/dp;->a(Lcom/paypal/android/sdk/dz;I)V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/dz;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/paypal/android/sdk/am;->a:Lcom/paypal/android/sdk/am;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/am;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " http response received.  Response not parsable."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lcom/paypal/android/sdk/dz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const-string v0, "paypal.sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request failed with server response:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/dz;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/paypal/android/sdk/dp;->d:Lcom/paypal/android/sdk/ea;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/ea;->a(Lcom/paypal/android/sdk/dz;)V

    return-void

    :cond_1
    new-instance v0, Lcom/paypal/android/sdk/an;

    sget-object v1, Lcom/paypal/android/sdk/am;->b:Lcom/paypal/android/sdk/am;

    invoke-direct {v0, v1, p2}, Lcom/paypal/android/sdk/an;-><init>(Lcom/paypal/android/sdk/am;Ljava/lang/Exception;)V

    invoke-virtual {p1, v0}, Lcom/paypal/android/sdk/dz;->a(Lcom/paypal/android/sdk/al;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/paypal/android/sdk/dp;Lcom/paypal/android/sdk/dz;Ljava/lang/String;Lcom/paypal/android/sdk/as;Lcom/paypal/android/sdk/ax;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/paypal/android/sdk/dp;->a(Lcom/paypal/android/sdk/dz;Ljava/lang/String;Lcom/paypal/android/sdk/as;Lcom/paypal/android/sdk/ax;)V

    return-void
.end method

.method private a(Lcom/paypal/android/sdk/dz;Ljava/lang/String;Lcom/paypal/android/sdk/as;Lcom/paypal/android/sdk/ax;)V
    .locals 7

    sget-object v0, Lcom/paypal/android/sdk/ds;->a:[I

    invoke-virtual {p1}, Lcom/paypal/android/sdk/dz;->i()Lcom/paypal/android/sdk/dx;

    move-result-object v1

    invoke-interface {v1}, Lcom/paypal/android/sdk/dx;->b()Lcom/paypal/android/sdk/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/ap;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/dz;->i()Lcom/paypal/android/sdk/dx;

    move-result-object v2

    invoke-interface {v2}, Lcom/paypal/android/sdk/dx;->b()Lcom/paypal/android/sdk/ap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/paypal/android/sdk/dp;->b:Lcom/paypal/android/sdk/ck;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ck;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/paypal/android/sdk/dz;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/paypal/android/sdk/dp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/paypal/android/sdk/dp;->a(Lcom/paypal/android/sdk/dz;Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/paypal/android/sdk/as;->a(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/paypal/android/sdk/ba;Lcom/paypal/android/sdk/ax;)V

    :goto_0
    return-void

    :pswitch_1
    invoke-virtual {p1}, Lcom/paypal/android/sdk/dz;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lorg/apache/http/entity/StringEntity;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/dp;->b:Lcom/paypal/android/sdk/ck;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/ck;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, p1, v0}, Lcom/paypal/android/sdk/dp;->a(Lcom/paypal/android/sdk/dz;Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p3

    move-object v2, p2

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/paypal/android/sdk/as;->a(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/paypal/android/sdk/ax;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/paypal/android/sdk/dp;->e:Lcom/paypal/android/sdk/as;

    iget-object v1, p0, Lcom/paypal/android/sdk/dp;->b:Lcom/paypal/android/sdk/ck;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/ck;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/paypal/android/sdk/dz;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/paypal/android/sdk/dp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/paypal/android/sdk/dp;->a(Lcom/paypal/android/sdk/dz;Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    new-instance v4, Lcom/paypal/android/sdk/dt;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p1, v5}, Lcom/paypal/android/sdk/dt;-><init>(Lcom/paypal/android/sdk/dp;Lcom/paypal/android/sdk/dz;B)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/paypal/android/sdk/as;->a(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/paypal/android/sdk/ax;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/paypal/android/sdk/dz;Ljava/lang/String;)[Lorg/apache/http/Header;
    .locals 6

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/dz;->j()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v5, Lorg/apache/http/message/BasicHeader;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v5, v1, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/paypal/android/sdk/dp;->g:Lcom/paypal/android/sdk/ef;

    invoke-interface {v0}, Lcom/paypal/android/sdk/ef;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, p2}, Lcom/paypal/android/sdk/ft;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    new-array v0, v2, [Lorg/apache/http/Header;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/Header;

    array-length v3, v0

    move v1, v2

    :goto_2
    if-ge v1, v3, :cond_3

    aget-object v2, v0, v1

    invoke-virtual {p1}, Lcom/paypal/android/sdk/dz;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/dz;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " header: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/dz;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " header: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method static synthetic b(Lcom/paypal/android/sdk/dp;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/dp;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/paypal/android/sdk/dp;)Lcom/paypal/android/sdk/ef;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/dp;->g:Lcom/paypal/android/sdk/ef;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/paypal/android/sdk/dp;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/paypal/android/sdk/dp;)Lcom/paypal/android/sdk/as;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/dp;->e:Lcom/paypal/android/sdk/as;

    return-object v0
.end method

.method static synthetic e(Lcom/paypal/android/sdk/dp;)Lcom/paypal/android/sdk/as;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/dp;->f:Lcom/paypal/android/sdk/as;

    return-object v0
.end method

.method static synthetic f(Lcom/paypal/android/sdk/dp;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/dp;->i:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/paypal/android/sdk/dp;->e:Lcom/paypal/android/sdk/as;

    iget-object v1, p0, Lcom/paypal/android/sdk/dp;->b:Lcom/paypal/android/sdk/ck;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/ck;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/sdk/as;->a(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/dp;->f:Lcom/paypal/android/sdk/as;

    iget-object v1, p0, Lcom/paypal/android/sdk/dp;->b:Lcom/paypal/android/sdk/ck;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/ck;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/sdk/as;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method final b()V
    .locals 4

    const-wide/16 v2, 0x1

    iget-object v0, p0, Lcom/paypal/android/sdk/dp;->e:Lcom/paypal/android/sdk/as;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/as;->a()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/dp;->f:Lcom/paypal/android/sdk/as;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/as;->a()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public final b(Lcom/paypal/android/sdk/dz;)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/paypal/android/sdk/dp;->b:Lcom/paypal/android/sdk/ck;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/ck;->a()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/paypal/android/sdk/an;

    sget-object v2, Lcom/paypal/android/sdk/am;->b:Lcom/paypal/android/sdk/am;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/am;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/paypal/android/sdk/an;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/paypal/android/sdk/dz;->a(Lcom/paypal/android/sdk/al;)V

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/paypal/android/sdk/dz;->l()V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/dz;->i()Lcom/paypal/android/sdk/dx;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/paypal/android/sdk/dz;->a(Lcom/paypal/android/sdk/dx;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/paypal/android/sdk/dz;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/dz;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " endpoint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/dz;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/paypal/android/sdk/dz;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lcom/paypal/android/sdk/dz;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/paypal/android/sdk/dp;->i:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v3, Lcom/paypal/android/sdk/dq;

    invoke-direct {v3, p0, p1, v1}, Lcom/paypal/android/sdk/dq;-><init>(Lcom/paypal/android/sdk/dp;Lcom/paypal/android/sdk/dz;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0xbe

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Delaying tracking execution for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/paypal/android/sdk/dp;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/paypal/android/sdk/dr;

    invoke-direct {v3, p0}, Lcom/paypal/android/sdk/dr;-><init>(Lcom/paypal/android/sdk/dp;)V

    int-to-long v4, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/dz;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " endpoint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/dz;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/paypal/android/sdk/dz;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/paypal/android/sdk/dp;->e:Lcom/paypal/android/sdk/as;

    new-instance v3, Lcom/paypal/android/sdk/dt;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v4}, Lcom/paypal/android/sdk/dt;-><init>(Lcom/paypal/android/sdk/dp;Lcom/paypal/android/sdk/dz;B)V

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/paypal/android/sdk/dp;->a(Lcom/paypal/android/sdk/dz;Ljava/lang/String;Lcom/paypal/android/sdk/as;Lcom/paypal/android/sdk/ax;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    new-instance v2, Lcom/paypal/android/sdk/an;

    sget-object v3, Lcom/paypal/android/sdk/am;->d:Lcom/paypal/android/sdk/am;

    invoke-direct {v2, v3, v1}, Lcom/paypal/android/sdk/an;-><init>(Lcom/paypal/android/sdk/am;Ljava/lang/Exception;)V

    invoke-virtual {p1, v2}, Lcom/paypal/android/sdk/dz;->a(Lcom/paypal/android/sdk/al;)V

    goto/16 :goto_0
.end method
