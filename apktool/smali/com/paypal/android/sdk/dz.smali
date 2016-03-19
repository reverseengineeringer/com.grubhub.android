.class public abstract Lcom/paypal/android/sdk/dz;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static j:J


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Map;

.field private final e:Lcom/paypal/android/sdk/ea;

.field private final f:Lcom/paypal/android/sdk/ef;

.field private g:Lcom/paypal/android/sdk/dx;

.field private h:Ljava/lang/String;

.field private i:Lcom/paypal/android/sdk/al;

.field private k:J

.field private l:Ljava/lang/Integer;

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/paypal/android/sdk/dz;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/dz;->a:Ljava/lang/String;

    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/paypal/android/sdk/dz;->j:J

    return-void
.end method

.method public constructor <init>(Lcom/paypal/android/sdk/dx;Lcom/paypal/android/sdk/ea;Lcom/paypal/android/sdk/ef;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/paypal/android/sdk/dz;-><init>(Lcom/paypal/android/sdk/dx;Lcom/paypal/android/sdk/ea;Lcom/paypal/android/sdk/ef;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/paypal/android/sdk/dx;Lcom/paypal/android/sdk/ea;Lcom/paypal/android/sdk/ef;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-wide v0, Lcom/paypal/android/sdk/dz;->j:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/paypal/android/sdk/dz;->j:J

    iput-wide v0, p0, Lcom/paypal/android/sdk/dz;->k:J

    iput-object p1, p0, Lcom/paypal/android/sdk/dz;->g:Lcom/paypal/android/sdk/dx;

    iput-object p4, p0, Lcom/paypal/android/sdk/dz;->h:Ljava/lang/String;

    iput-object p2, p0, Lcom/paypal/android/sdk/dz;->e:Lcom/paypal/android/sdk/ea;

    iput-object p3, p0, Lcom/paypal/android/sdk/dz;->f:Lcom/paypal/android/sdk/ef;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/dz;->d:Ljava/util/Map;

    return-void
.end method

.method public static l()V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(Lcom/paypal/android/sdk/dx;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/paypal/android/sdk/dz;->e:Lcom/paypal/android/sdk/ea;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/ea;->a(Lcom/paypal/android/sdk/dx;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/paypal/android/sdk/dz;->h:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/dz;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "API "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no record for server "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/dz;->e:Lcom/paypal/android/sdk/ea;

    invoke-interface {v2}, Lcom/paypal/android/sdk/ea;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/paypal/android/sdk/al;)V
    .locals 4

    iget-object v0, p0, Lcom/paypal/android/sdk/dz;->i:Lcom/paypal/android/sdk/al;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multiple exceptions reported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/paypal/android/sdk/dz;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "first error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/paypal/android/sdk/dz;->i:Lcom/paypal/android/sdk/al;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/paypal/android/sdk/dz;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "second error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/paypal/android/sdk/dz;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/paypal/android/sdk/dz;->i:Lcom/paypal/android/sdk/al;

    return-void
.end method

.method public final a(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/dz;->l:Ljava/lang/Integer;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/dz;->b:Ljava/lang/String;

    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/dz;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/paypal/android/sdk/an;

    invoke-direct {v0, p1, p2, p3}, Lcom/paypal/android/sdk/an;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/dz;->a(Lcom/paypal/android/sdk/al;)V

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/dz;->c:Ljava/lang/String;

    return-void
.end method

.method public abstract c()V
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/dz;->m:Ljava/lang/String;

    return-void
.end method

.method public abstract d()V
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public final f()Lcom/paypal/android/sdk/ef;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/dz;->f:Lcom/paypal/android/sdk/ef;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/dz;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/dz;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Lcom/paypal/android/sdk/dx;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/dz;->g:Lcom/paypal/android/sdk/dx;

    return-object v0
.end method

.method public final j()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/dz;->d:Ljava/util/Map;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/dz;->m:Ljava/lang/String;

    return-object v0
.end method

.method public m()V
    .locals 0

    return-void
.end method

.method protected final n()Lorg/json/JSONObject;
    .locals 5

    iget-object v1, p0, Lcom/paypal/android/sdk/dz;->c:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lorg/json/JSONObject;

    if-nez v2, :cond_0

    new-instance v2, Lorg/json/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "could not parse:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\nnextValue:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/paypal/android/sdk/dz;->k:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final p()J
    .locals 2

    iget-wide v0, p0, Lcom/paypal/android/sdk/dz;->k:J

    return-wide v0
.end method

.method public final q()Lcom/paypal/android/sdk/al;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/dz;->i:Lcom/paypal/android/sdk/al;

    return-object v0
.end method

.method public final r()Z
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/dz;->i:Lcom/paypal/android/sdk/al;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final s()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/dz;->l:Ljava/lang/Integer;

    return-object v0
.end method

.method public final t()Lcom/paypal/android/sdk/ea;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/dz;->e:Lcom/paypal/android/sdk/ea;

    return-object v0
.end method
