.class public Lcom/google/android/gms/d/ct;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/d/cu;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/d/cq;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/d/ct;->a:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/d/ct;->b:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/d/ct;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/d/ct;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/d/cp$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/d/ct;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/d/cs;
    .locals 6

    new-instance v0, Lcom/google/android/gms/d/cs;

    iget-object v1, p0, Lcom/google/android/gms/d/ct;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/d/ct;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/gms/d/ct;->c:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/d/ct;->d:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/d/cs;-><init>(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ILcom/google/android/gms/d/cp$1;)V

    return-object v0
.end method

.method public a(I)Lcom/google/android/gms/d/ct;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/d/ct;->d:I

    return-object p0
.end method

.method public a(Lcom/google/android/gms/d/cq;)Lcom/google/android/gms/d/ct;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/d/cq;->b()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/d/b;->zzfr:Lcom/google/android/gms/d/b;

    invoke-virtual {v1}, Lcom/google/android/gms/d/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/d/o;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dm;->a(Lcom/google/android/gms/d/o;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/d/ct;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/d/ct;->b:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Lcom/google/android/gms/d/cu;)Lcom/google/android/gms/d/ct;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/d/ct;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/android/gms/d/ct;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/d/ct;->c:Ljava/lang/String;

    return-object p0
.end method
