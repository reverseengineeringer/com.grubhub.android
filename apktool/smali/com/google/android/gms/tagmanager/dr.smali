.class Lcom/google/android/gms/tagmanager/dr;
.super Lcom/google/android/gms/tagmanager/ab;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# instance fields
.field private final d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/d/a;->zzbG:Lcom/google/android/gms/d/a;

    invoke-virtual {v0}, Lcom/google/android/gms/d/a;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/dr;->a:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/d/b;->zzdY:Lcom/google/android/gms/d/b;

    invoke-virtual {v0}, Lcom/google/android/gms/d/b;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/dr;->b:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/d/b;->zzeb:Lcom/google/android/gms/d/b;

    invoke-virtual {v0}, Lcom/google/android/gms/d/b;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/dr;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    sget-object v0, Lcom/google/android/gms/tagmanager/dr;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/tagmanager/dr;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/ab;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/dr;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Lcom/google/android/gms/d/o;
    .locals 3
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

    sget-object v0, Lcom/google/android/gms/tagmanager/dr;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/d/o;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/dm;->f()Lcom/google/android/gms/d/o;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dm;->a(Lcom/google/android/gms/d/o;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/google/android/gms/tagmanager/dr;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/d/o;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dm;->a(Lcom/google/android/gms/d/o;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/dr;->d:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/tagmanager/ao;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dm;->e(Ljava/lang/Object;)Lcom/google/android/gms/d/o;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/google/android/gms/tagmanager/dm;->f()Lcom/google/android/gms/d/o;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
