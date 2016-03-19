.class Lcom/google/android/gms/tagmanager/ca;
.super Lcom/google/android/gms/tagmanager/ab;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/d/a;->zzby:Lcom/google/android/gms/d/a;

    invoke-virtual {v0}, Lcom/google/android/gms/d/a;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/ca;->a:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/d/b;->zzfM:Lcom/google/android/gms/d/b;

    invoke-virtual {v0}, Lcom/google/android/gms/d/b;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/ca;->b:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/d/b;->zzfK:Lcom/google/android/gms/d/b;

    invoke-virtual {v0}, Lcom/google/android/gms/d/b;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/ca;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/tagmanager/ca;->a:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/ab;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Lcom/google/android/gms/d/o;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/d/o;",
            ">;)",
            "Lcom/google/android/gms/d/o;"
        }
    .end annotation

    const-wide/16 v6, 0x0

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    sget-object v0, Lcom/google/android/gms/tagmanager/ca;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/d/o;

    sget-object v1, Lcom/google/android/gms/tagmanager/ca;->c:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/d/o;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/dm;->f()Lcom/google/android/gms/d/o;

    move-result-object v4

    if-eq v0, v4, :cond_0

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/dm;->f()Lcom/google/android/gms/d/o;

    move-result-object v4

    if-eq v1, v4, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dm;->b(Lcom/google/android/gms/d/o;)Lcom/google/android/gms/tagmanager/dl;

    move-result-object v0

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/dm;->b(Lcom/google/android/gms/d/o;)Lcom/google/android/gms/tagmanager/dl;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/tagmanager/dm;->d()Lcom/google/android/gms/tagmanager/dl;

    move-result-object v4

    if-eq v0, v4, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/dm;->d()Lcom/google/android/gms/tagmanager/dl;

    move-result-object v4

    if-eq v1, v4, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/dl;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/dl;->doubleValue()D

    move-result-wide v0

    cmpg-double v8, v4, v0

    if-gtz v8, :cond_0

    move-wide v2, v4

    :goto_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    sub-double/2addr v0, v2

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dm;->e(Ljava/lang/Object;)Lcom/google/android/gms/d/o;

    move-result-object v0

    return-object v0

    :cond_0
    move-wide v0, v2

    move-wide v2, v6

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
