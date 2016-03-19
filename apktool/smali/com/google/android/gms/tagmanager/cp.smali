.class Lcom/google/android/gms/tagmanager/cp;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/android/gms/tagmanager/bq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/bq",
            "<",
            "Lcom/google/android/gms/d/o;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/google/android/gms/d/cs;

.field private final c:Lcom/google/android/gms/tagmanager/y;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/ab;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/ab;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/ab;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/tagmanager/dz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/dz",
            "<",
            "Lcom/google/android/gms/d/cq;",
            "Lcom/google/android/gms/tagmanager/bq",
            "<",
            "Lcom/google/android/gms/d/o;",
            ">;>;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/android/gms/tagmanager/dz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/dz",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/cr;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/d/cu;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/google/android/gms/tagmanager/h;

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/cs;",
            ">;"
        }
    .end annotation
.end field

.field private volatile l:Ljava/lang/String;

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/tagmanager/bq;

    invoke-static {}, Lcom/google/android/gms/tagmanager/dm;->f()Lcom/google/android/gms/d/o;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/bq;-><init>(Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/android/gms/tagmanager/cp;->a:Lcom/google/android/gms/tagmanager/bq;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/d/cs;Lcom/google/android/gms/tagmanager/h;Lcom/google/android/gms/tagmanager/er;Lcom/google/android/gms/tagmanager/er;Lcom/google/android/gms/tagmanager/y;)V
    .locals 8

    const/high16 v2, 0x100000

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "resource cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/cp;->b:Lcom/google/android/gms/d/cs;

    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p2}, Lcom/google/android/gms/d/cs;->b()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->i:Ljava/util/Set;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/cp;->j:Lcom/google/android/gms/tagmanager/h;

    iput-object p6, p0, Lcom/google/android/gms/tagmanager/cp;->c:Lcom/google/android/gms/tagmanager/y;

    new-instance v0, Lcom/google/android/gms/tagmanager/cp$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/cp$1;-><init>(Lcom/google/android/gms/tagmanager/cp;)V

    new-instance v1, Lcom/google/android/gms/tagmanager/ea;

    invoke-direct {v1}, Lcom/google/android/gms/tagmanager/ea;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/tagmanager/ea;->a(ILcom/google/android/gms/tagmanager/eb;)Lcom/google/android/gms/tagmanager/dz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->g:Lcom/google/android/gms/tagmanager/dz;

    new-instance v0, Lcom/google/android/gms/tagmanager/cp$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/cp$2;-><init>(Lcom/google/android/gms/tagmanager/cp;)V

    new-instance v1, Lcom/google/android/gms/tagmanager/ea;

    invoke-direct {v1}, Lcom/google/android/gms/tagmanager/ea;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/tagmanager/ea;->a(ILcom/google/android/gms/tagmanager/eb;)Lcom/google/android/gms/tagmanager/dz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->h:Lcom/google/android/gms/tagmanager/dz;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->d:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/tagmanager/dw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/dw;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->b(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/eq;

    invoke-direct {v0, p5}, Lcom/google/android/gms/tagmanager/eq;-><init>(Lcom/google/android/gms/tagmanager/er;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->b(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/ex;

    invoke-direct {v0, p3}, Lcom/google/android/gms/tagmanager/ex;-><init>(Lcom/google/android/gms/tagmanager/h;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->b(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/dn;

    invoke-direct {v0, p1, p3}, Lcom/google/android/gms/tagmanager/dn;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/h;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->b(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/dg;

    invoke-direct {v0, p1, p3}, Lcom/google/android/gms/tagmanager/dg;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/h;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->b(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->e:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/tagmanager/eo;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/eo;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->c(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/v;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/v;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->c(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/w;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/w;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->c(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/ad;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/ad;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->c(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/ae;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/ae;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->c(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/av;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/av;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->c(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/aw;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/aw;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->c(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/cd;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/cd;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->c(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/dc;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/dc;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->c(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->f:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/tagmanager/as;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/as;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/bw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/bw;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/dr;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/dr;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/ds;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/ds;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/dt;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/dt;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/du;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/du;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/dv;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/dv;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/ec;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/ec;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/en;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cp;->b:Lcom/google/android/gms/d/cs;

    invoke-virtual {v1}, Lcom/google/android/gms/d/cs;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/tagmanager/en;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/eq;

    invoke-direct {v0, p4}, Lcom/google/android/gms/tagmanager/eq;-><init>(Lcom/google/android/gms/tagmanager/er;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/et;

    invoke-direct {v0, p3}, Lcom/google/android/gms/tagmanager/et;-><init>(Lcom/google/android/gms/tagmanager/h;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/r;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/r;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/s;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/s;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/u;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/u;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/z;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/z;-><init>(Lcom/google/android/gms/tagmanager/cp;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/af;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/af;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/ag;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/ag;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/an;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/an;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/ap;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/ap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/au;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/au;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/bc;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/bc;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/be;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/be;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/br;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/br;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/bv;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/bv;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/ca;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/ca;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/cc;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/cc;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/ce;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/ce;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/ct;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/ct;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/cu;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/cu;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/df;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/df;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/do;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/do;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/tagmanager/ab;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->k:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/d/cu;

    invoke-interface {p6}, Lcom/google/android/gms/tagmanager/y;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/d/cu;->f()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/d/cu;->g()Ljava/util/List;

    move-result-object v2

    const-string v3, "add macro"

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/tagmanager/cp;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/d/cu;->k()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/d/cu;->h()Ljava/util/List;

    move-result-object v2

    const-string v3, "remove macro"

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/tagmanager/cp;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/d/cu;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/d/cu;->i()Ljava/util/List;

    move-result-object v2

    const-string v3, "add tag"

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/tagmanager/cp;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/d/cu;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/d/cu;->j()Ljava/util/List;

    move-result-object v2

    const-string v3, "remove tag"

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/tagmanager/cp;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    :cond_2
    move v3, v4

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/d/cu;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/d/cu;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/d/cq;

    const-string v2, "Unknown"

    invoke-interface {p6}, Lcom/google/android/gms/tagmanager/y;->a()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/d/cu;->g()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/d/cu;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_3
    iget-object v6, p0, Lcom/google/android/gms/tagmanager/cp;->k:Ljava/util/Map;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/d/cq;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/gms/tagmanager/cp;->a(Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tagmanager/cs;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/android/gms/tagmanager/cs;->a(Lcom/google/android/gms/d/cu;)V

    invoke-virtual {v6, v0, v1}, Lcom/google/android/gms/tagmanager/cs;->a(Lcom/google/android/gms/d/cu;Lcom/google/android/gms/d/cq;)V

    invoke-virtual {v6, v0, v2}, Lcom/google/android/gms/tagmanager/cs;->a(Lcom/google/android/gms/d/cu;Ljava/lang/String;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_4
    move v3, v4

    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/d/cu;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/d/cu;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/d/cq;

    const-string v2, "Unknown"

    invoke-interface {p6}, Lcom/google/android/gms/tagmanager/y;->a()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/d/cu;->h()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/d/cu;->h()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_5
    iget-object v6, p0, Lcom/google/android/gms/tagmanager/cp;->k:Ljava/util/Map;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/d/cq;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/gms/tagmanager/cp;->a(Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tagmanager/cs;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/android/gms/tagmanager/cs;->a(Lcom/google/android/gms/d/cu;)V

    invoke-virtual {v6, v0, v1}, Lcom/google/android/gms/tagmanager/cs;->b(Lcom/google/android/gms/d/cu;Lcom/google/android/gms/d/cq;)V

    invoke-virtual {v6, v0, v2}, Lcom/google/android/gms/tagmanager/cs;->b(Lcom/google/android/gms/d/cu;Ljava/lang/String;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->b:Lcom/google/android/gms/d/cs;

    invoke-virtual {v0}, Lcom/google/android/gms/d/cs;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/d/cq;

    invoke-virtual {v1}, Lcom/google/android/gms/d/cq;->b()Ljava/util/Map;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/d/b;->zzfT:Lcom/google/android/gms/d/b;

    invoke-virtual {v5}, Lcom/google/android/gms/d/b;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/d/o;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/dm;->d(Lcom/google/android/gms/d/o;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v5, p0, Lcom/google/android/gms/tagmanager/cp;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/google/android/gms/tagmanager/cp;->a(Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tagmanager/cs;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/tagmanager/cs;->a(Lcom/google/android/gms/d/cq;)V

    goto :goto_2

    :cond_9
    return-void
.end method

.method private a(Lcom/google/android/gms/d/o;Ljava/util/Set;Lcom/google/android/gms/tagmanager/dp;)Lcom/google/android/gms/tagmanager/bq;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/d/o;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/tagmanager/dp;",
            ")",
            "Lcom/google/android/gms/tagmanager/bq",
            "<",
            "Lcom/google/android/gms/d/o;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-boolean v0, p1, Lcom/google/android/gms/d/o;->l:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/tagmanager/bq;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/tagmanager/bq;-><init>(Ljava/lang/Object;Z)V

    :goto_0
    return-object v0

    :cond_0
    iget v0, p1, Lcom/google/android/gms/d/o;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/google/android/gms/d/o;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/tagmanager/cp;->a:Lcom/google/android/gms/tagmanager/bq;

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lcom/google/android/gms/d/cp;->a(Lcom/google/android/gms/d/o;)Lcom/google/android/gms/d/o;

    move-result-object v3

    iget-object v0, p1, Lcom/google/android/gms/d/o;->c:[Lcom/google/android/gms/d/o;

    array-length v0, v0

    new-array v0, v0, [Lcom/google/android/gms/d/o;

    iput-object v0, v3, Lcom/google/android/gms/d/o;->c:[Lcom/google/android/gms/d/o;

    move v1, v2

    :goto_1
    iget-object v0, p1, Lcom/google/android/gms/d/o;->c:[Lcom/google/android/gms/d/o;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/d/o;->c:[Lcom/google/android/gms/d/o;

    aget-object v0, v0, v1

    invoke-interface {p3, v1}, Lcom/google/android/gms/tagmanager/dp;->a(I)Lcom/google/android/gms/tagmanager/dp;

    move-result-object v4

    invoke-direct {p0, v0, p2, v4}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/d/o;Ljava/util/Set;Lcom/google/android/gms/tagmanager/dp;)Lcom/google/android/gms/tagmanager/bq;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/tagmanager/cp;->a:Lcom/google/android/gms/tagmanager/bq;

    if-ne v0, v4, :cond_1

    sget-object v0, Lcom/google/android/gms/tagmanager/cp;->a:Lcom/google/android/gms/tagmanager/bq;

    goto :goto_0

    :cond_1
    iget-object v4, v3, Lcom/google/android/gms/d/o;->c:[Lcom/google/android/gms/d/o;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/bq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/d/o;

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/google/android/gms/tagmanager/bq;

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/tagmanager/bq;-><init>(Ljava/lang/Object;Z)V

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Lcom/google/android/gms/d/cp;->a(Lcom/google/android/gms/d/o;)Lcom/google/android/gms/d/o;

    move-result-object v3

    iget-object v0, p1, Lcom/google/android/gms/d/o;->d:[Lcom/google/android/gms/d/o;

    array-length v0, v0

    iget-object v1, p1, Lcom/google/android/gms/d/o;->e:[Lcom/google/android/gms/d/o;

    array-length v1, v1

    if-eq v0, v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid serving value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/d/o;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/tagmanager/cp;->a:Lcom/google/android/gms/tagmanager/bq;

    goto/16 :goto_0

    :cond_3
    iget-object v0, p1, Lcom/google/android/gms/d/o;->d:[Lcom/google/android/gms/d/o;

    array-length v0, v0

    new-array v0, v0, [Lcom/google/android/gms/d/o;

    iput-object v0, v3, Lcom/google/android/gms/d/o;->d:[Lcom/google/android/gms/d/o;

    iget-object v0, p1, Lcom/google/android/gms/d/o;->d:[Lcom/google/android/gms/d/o;

    array-length v0, v0

    new-array v0, v0, [Lcom/google/android/gms/d/o;

    iput-object v0, v3, Lcom/google/android/gms/d/o;->e:[Lcom/google/android/gms/d/o;

    move v1, v2

    :goto_2
    iget-object v0, p1, Lcom/google/android/gms/d/o;->d:[Lcom/google/android/gms/d/o;

    array-length v0, v0

    if-ge v1, v0, :cond_6

    iget-object v0, p1, Lcom/google/android/gms/d/o;->d:[Lcom/google/android/gms/d/o;

    aget-object v0, v0, v1

    invoke-interface {p3, v1}, Lcom/google/android/gms/tagmanager/dp;->b(I)Lcom/google/android/gms/tagmanager/dp;

    move-result-object v4

    invoke-direct {p0, v0, p2, v4}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/d/o;Ljava/util/Set;Lcom/google/android/gms/tagmanager/dp;)Lcom/google/android/gms/tagmanager/bq;

    move-result-object v0

    iget-object v4, p1, Lcom/google/android/gms/d/o;->e:[Lcom/google/android/gms/d/o;

    aget-object v4, v4, v1

    invoke-interface {p3, v1}, Lcom/google/android/gms/tagmanager/dp;->c(I)Lcom/google/android/gms/tagmanager/dp;

    move-result-object v5

    invoke-direct {p0, v4, p2, v5}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/d/o;Ljava/util/Set;Lcom/google/android/gms/tagmanager/dp;)Lcom/google/android/gms/tagmanager/bq;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/tagmanager/cp;->a:Lcom/google/android/gms/tagmanager/bq;

    if-eq v0, v5, :cond_4

    sget-object v5, Lcom/google/android/gms/tagmanager/cp;->a:Lcom/google/android/gms/tagmanager/bq;

    if-ne v4, v5, :cond_5

    :cond_4
    sget-object v0, Lcom/google/android/gms/tagmanager/cp;->a:Lcom/google/android/gms/tagmanager/bq;

    goto/16 :goto_0

    :cond_5
    iget-object v5, v3, Lcom/google/android/gms/d/o;->d:[Lcom/google/android/gms/d/o;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/bq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/d/o;

    aput-object v0, v5, v1

    iget-object v5, v3, Lcom/google/android/gms/d/o;->e:[Lcom/google/android/gms/d/o;

    invoke-virtual {v4}, Lcom/google/android/gms/tagmanager/bq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/d/o;

    aput-object v0, v5, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_6
    new-instance v0, Lcom/google/android/gms/tagmanager/bq;

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/tagmanager/bq;-><init>(Ljava/lang/Object;Z)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p1, Lcom/google/android/gms/d/o;->f:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Macro cycle detected.  Current macro reference: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/d/o;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  Previous macro references: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/tagmanager/cp;->a:Lcom/google/android/gms/tagmanager/bq;

    goto/16 :goto_0

    :cond_7
    iget-object v0, p1, Lcom/google/android/gms/d/o;->f:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/google/android/gms/d/o;->f:Ljava/lang/String;

    invoke-interface {p3}, Lcom/google/android/gms/tagmanager/dp;->a()Lcom/google/android/gms/tagmanager/bd;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/google/android/gms/tagmanager/cp;->a(Ljava/lang/String;Ljava/util/Set;Lcom/google/android/gms/tagmanager/bd;)Lcom/google/android/gms/tagmanager/bq;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/d/o;->k:[I

    invoke-static {v0, v1}, Lcom/google/android/gms/tagmanager/dq;->a(Lcom/google/android/gms/tagmanager/bq;[I)Lcom/google/android/gms/tagmanager/bq;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/d/o;->f:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_4
    invoke-static {p1}, Lcom/google/android/gms/d/cp;->a(Lcom/google/android/gms/d/o;)Lcom/google/android/gms/d/o;

    move-result-object v3

    iget-object v0, p1, Lcom/google/android/gms/d/o;->j:[Lcom/google/android/gms/d/o;

    array-length v0, v0

    new-array v0, v0, [Lcom/google/android/gms/d/o;

    iput-object v0, v3, Lcom/google/android/gms/d/o;->j:[Lcom/google/android/gms/d/o;

    move v1, v2

    :goto_3
    iget-object v0, p1, Lcom/google/android/gms/d/o;->j:[Lcom/google/android/gms/d/o;

    array-length v0, v0

    if-ge v1, v0, :cond_9

    iget-object v0, p1, Lcom/google/android/gms/d/o;->j:[Lcom/google/android/gms/d/o;

    aget-object v0, v0, v1

    invoke-interface {p3, v1}, Lcom/google/android/gms/tagmanager/dp;->d(I)Lcom/google/android/gms/tagmanager/dp;

    move-result-object v4

    invoke-direct {p0, v0, p2, v4}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/d/o;Ljava/util/Set;Lcom/google/android/gms/tagmanager/dp;)Lcom/google/android/gms/tagmanager/bq;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/tagmanager/cp;->a:Lcom/google/android/gms/tagmanager/bq;

    if-ne v0, v4, :cond_8

    sget-object v0, Lcom/google/android/gms/tagmanager/cp;->a:Lcom/google/android/gms/tagmanager/bq;

    goto/16 :goto_0

    :cond_8
    iget-object v4, v3, Lcom/google/android/gms/d/o;->j:[Lcom/google/android/gms/d/o;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/bq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/d/o;

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_9
    new-instance v0, Lcom/google/android/gms/tagmanager/bq;

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/tagmanager/bq;-><init>(Ljava/lang/Object;Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Ljava/util/Set;Lcom/google/android/gms/tagmanager/bd;)Lcom/google/android/gms/tagmanager/bq;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/tagmanager/bd;",
            ")",
            "Lcom/google/android/gms/tagmanager/bq",
            "<",
            "Lcom/google/android/gms/d/o;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x1

    iget v0, p0, Lcom/google/android/gms/tagmanager/cp;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/tagmanager/cp;->m:I

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->h:Lcom/google/android/gms/tagmanager/dz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/dz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/cr;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cp;->c:Lcom/google/android/gms/tagmanager/y;

    invoke-interface {v1}, Lcom/google/android/gms/tagmanager/y;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cr;->b()Lcom/google/android/gms/d/o;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/d/o;Ljava/util/Set;)V

    iget v1, p0, Lcom/google/android/gms/tagmanager/cp;->m:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/tagmanager/cp;->m:I

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cr;->a()Lcom/google/android/gms/tagmanager/bq;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/google/android/gms/tagmanager/cs;

    if-nez v9, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/cp;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Invalid macro: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/tagmanager/cp;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/tagmanager/cp;->m:I

    sget-object v0, Lcom/google/android/gms/tagmanager/cp;->a:Lcom/google/android/gms/tagmanager/bq;

    goto :goto_0

    :cond_1
    invoke-virtual {v9}, Lcom/google/android/gms/tagmanager/cs;->a()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v9}, Lcom/google/android/gms/tagmanager/cs;->b()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v9}, Lcom/google/android/gms/tagmanager/cs;->c()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v9}, Lcom/google/android/gms/tagmanager/cs;->e()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v9}, Lcom/google/android/gms/tagmanager/cs;->d()Ljava/util/Map;

    move-result-object v6

    invoke-interface {p3}, Lcom/google/android/gms/tagmanager/bd;->b()Lcom/google/android/gms/tagmanager/co;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/tagmanager/cp;->a(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Lcom/google/android/gms/tagmanager/co;)Lcom/google/android/gms/tagmanager/bq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/bq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v9}, Lcom/google/android/gms/tagmanager/cs;->f()Lcom/google/android/gms/d/cq;

    move-result-object v0

    move-object v2, v0

    :goto_1
    if-nez v2, :cond_4

    iget v0, p0, Lcom/google/android/gms/tagmanager/cp;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/tagmanager/cp;->m:I

    sget-object v0, Lcom/google/android/gms/tagmanager/cp;->a:Lcom/google/android/gms/tagmanager/bq;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/bq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-le v0, v10, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/cp;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Multiple macros active for macroName "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->b(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/bq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/d/cq;

    move-object v2, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->f:Ljava/util/Map;

    invoke-interface {p3}, Lcom/google/android/gms/tagmanager/bd;->a()Lcom/google/android/gms/tagmanager/cf;

    move-result-object v3

    invoke-direct {p0, v0, v2, p2, v3}, Lcom/google/android/gms/tagmanager/cp;->a(Ljava/util/Map;Lcom/google/android/gms/d/cq;Ljava/util/Set;Lcom/google/android/gms/tagmanager/cf;)Lcom/google/android/gms/tagmanager/bq;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/bq;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Lcom/google/android/gms/tagmanager/bq;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v10

    :goto_2
    sget-object v1, Lcom/google/android/gms/tagmanager/cp;->a:Lcom/google/android/gms/tagmanager/bq;

    if-ne v3, v1, :cond_7

    sget-object v0, Lcom/google/android/gms/tagmanager/cp;->a:Lcom/google/android/gms/tagmanager/bq;

    :goto_3
    invoke-virtual {v2}, Lcom/google/android/gms/d/cq;->c()Lcom/google/android/gms/d/o;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/bq;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/cp;->h:Lcom/google/android/gms/tagmanager/dz;

    new-instance v3, Lcom/google/android/gms/tagmanager/cr;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/tagmanager/cr;-><init>(Lcom/google/android/gms/tagmanager/bq;Lcom/google/android/gms/d/o;)V

    invoke-interface {v2, p1, v3}, Lcom/google/android/gms/tagmanager/dz;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    invoke-direct {p0, v1, p2}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/d/o;Ljava/util/Set;)V

    iget v1, p0, Lcom/google/android/gms/tagmanager/cp;->m:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/tagmanager/cp;->m:I

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    new-instance v1, Lcom/google/android/gms/tagmanager/bq;

    invoke-virtual {v3}, Lcom/google/android/gms/tagmanager/bq;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/google/android/gms/tagmanager/bq;-><init>(Ljava/lang/Object;Z)V

    move-object v0, v1

    goto :goto_3
.end method

.method private a(Ljava/util/Map;Lcom/google/android/gms/d/cq;Ljava/util/Set;Lcom/google/android/gms/tagmanager/cf;)Lcom/google/android/gms/tagmanager/bq;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/ab;",
            ">;",
            "Lcom/google/android/gms/d/cq;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/tagmanager/cf;",
            ")",
            "Lcom/google/android/gms/tagmanager/bq",
            "<",
            "Lcom/google/android/gms/d/o;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Lcom/google/android/gms/d/cq;->b()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/d/b;->zzfg:Lcom/google/android/gms/d/b;

    invoke-virtual {v1}, Lcom/google/android/gms/d/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/d/o;

    if-nez v0, :cond_1

    const-string v0, "No function id in properties"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/tagmanager/cp;->a:Lcom/google/android/gms/tagmanager/bq;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v7, v0, Lcom/google/android/gms/d/o;->g:Ljava/lang/String;

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/ab;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has no backing implementation."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/tagmanager/cp;->a:Lcom/google/android/gms/tagmanager/bq;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cp;->g:Lcom/google/android/gms/tagmanager/dz;

    invoke-interface {v1, p2}, Lcom/google/android/gms/tagmanager/dz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tagmanager/bq;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/cp;->c:Lcom/google/android/gms/tagmanager/y;

    invoke-interface {v2}, Lcom/google/android/gms/tagmanager/y;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/d/cq;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v4, v5

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p4, v2}, Lcom/google/android/gms/tagmanager/cf;->a(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/ch;

    move-result-object v10

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/d/o;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/d/o;

    invoke-interface {v10, v3}, Lcom/google/android/gms/tagmanager/ch;->a(Lcom/google/android/gms/d/o;)Lcom/google/android/gms/tagmanager/dp;

    move-result-object v3

    invoke-direct {p0, v2, p3, v3}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/d/o;Ljava/util/Set;Lcom/google/android/gms/tagmanager/dp;)Lcom/google/android/gms/tagmanager/bq;

    move-result-object v10

    sget-object v2, Lcom/google/android/gms/tagmanager/cp;->a:Lcom/google/android/gms/tagmanager/bq;

    if-ne v10, v2, :cond_4

    sget-object v1, Lcom/google/android/gms/tagmanager/cp;->a:Lcom/google/android/gms/tagmanager/bq;

    goto :goto_0

    :cond_4
    invoke-virtual {v10}, Lcom/google/android/gms/tagmanager/bq;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v10}, Lcom/google/android/gms/tagmanager/bq;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/d/o;

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/d/cq;->a(Ljava/lang/String;Lcom/google/android/gms/d/o;)V

    move v2, v4

    :goto_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10}, Lcom/google/android/gms/tagmanager/bq;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v8, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v2

    goto :goto_1

    :cond_5
    move v2, v6

    goto :goto_2

    :cond_6
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/ab;->a(Ljava/util/Set;)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect keys for function "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " required "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/ab;->c()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " had "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/tagmanager/cp;->a:Lcom/google/android/gms/tagmanager/bq;

    goto/16 :goto_0

    :cond_7
    if-eqz v4, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/ab;->a()Z

    move-result v1

    if-eqz v1, :cond_9

    :goto_3
    new-instance v1, Lcom/google/android/gms/tagmanager/bq;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/tagmanager/ab;->a(Ljava/util/Map;)Lcom/google/android/gms/d/o;

    move-result-object v0

    invoke-direct {v1, v0, v5}, Lcom/google/android/gms/tagmanager/bq;-><init>(Ljava/lang/Object;Z)V

    if-eqz v5, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->g:Lcom/google/android/gms/tagmanager/dz;

    invoke-interface {v0, p2, v1}, Lcom/google/android/gms/tagmanager/dz;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/bq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/d/o;

    invoke-interface {p4, v0}, Lcom/google/android/gms/tagmanager/cf;->a(Lcom/google/android/gms/d/o;)V

    goto/16 :goto_0

    :cond_9
    move v5, v6

    goto :goto_3
.end method

.method private a(Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/cq;Lcom/google/android/gms/tagmanager/co;)Lcom/google/android/gms/tagmanager/bq;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/d/cu;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/tagmanager/cq;",
            "Lcom/google/android/gms/tagmanager/co;",
            ")",
            "Lcom/google/android/gms/tagmanager/bq",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/d/cq;",
            ">;>;"
        }
    .end annotation

    const/4 v3, 0x1

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/d/cu;

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/co;->a()Lcom/google/android/gms/tagmanager/ci;

    move-result-object v7

    invoke-virtual {p0, v0, p2, v7}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/d/cu;Ljava/util/Set;Lcom/google/android/gms/tagmanager/ci;)Lcom/google/android/gms/tagmanager/bq;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/tagmanager/bq;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3, v0, v4, v5, v7}, Lcom/google/android/gms/tagmanager/cq;->a(Lcom/google/android/gms/d/cu;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/ci;)V

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v8}, Lcom/google/android/gms/tagmanager/bq;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {p4, v4}, Lcom/google/android/gms/tagmanager/co;->a(Ljava/util/Set;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/bq;

    invoke-direct {v0, v4, v2}, Lcom/google/android/gms/tagmanager/bq;-><init>(Ljava/lang/Object;Z)V

    return-object v0
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tagmanager/cs;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/cs;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tagmanager/cs;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/cs;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/tagmanager/cs;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/cs;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private static a(Lcom/google/android/gms/d/cq;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/d/cq;->b()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/d/b;->zzfr:Lcom/google/android/gms/d/b;

    invoke-virtual {v1}, Lcom/google/android/gms/d/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/d/o;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dm;->a(Lcom/google/android/gms/d/o;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/android/gms/d/o;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/d/o;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/tagmanager/bo;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/bo;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/d/o;Ljava/util/Set;Lcom/google/android/gms/tagmanager/dp;)Lcom/google/android/gms/tagmanager/bq;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/tagmanager/cp;->a:Lcom/google/android/gms/tagmanager/bq;

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/bq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/d/o;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dm;->e(Lcom/google/android/gms/d/o;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cp;->j:Lcom/google/android/gms/tagmanager/h;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tagmanager/h;->a(Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_3

    check-cast v0, Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/cp;->j:Lcom/google/android/gms/tagmanager/h;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/tagmanager/h;->a(Ljava/util/Map;)V

    goto :goto_1

    :cond_3
    const-string v0, "pushAfterEvaluate: value not a Map"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v0, "pushAfterEvaluate: value not a Map or List"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/d/cq;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid resource: imbalance of rule names of functions for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " operation. Using default rule name instead"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/Map;Lcom/google/android/gms/tagmanager/ab;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/ab;",
            ">;",
            "Lcom/google/android/gms/tagmanager/ab;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/ab;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate function type name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/ab;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/ab;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/tagmanager/cp;->m:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/google/android/gms/tagmanager/cp;->m:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    :goto_1
    iget v2, p0, Lcom/google/android/gms/tagmanager/cp;->m:I

    if-ge v0, v2, :cond_1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/google/android/gms/d/cq;Ljava/util/Set;Lcom/google/android/gms/tagmanager/cf;)Lcom/google/android/gms/tagmanager/bq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/d/cq;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/tagmanager/cf;",
            ")",
            "Lcom/google/android/gms/tagmanager/bq",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->e:Ljava/util/Map;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/tagmanager/cp;->a(Ljava/util/Map;Lcom/google/android/gms/d/cq;Ljava/util/Set;Lcom/google/android/gms/tagmanager/cf;)Lcom/google/android/gms/tagmanager/bq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/bq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/d/o;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dm;->d(Lcom/google/android/gms/d/o;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dm;->e(Ljava/lang/Object;)Lcom/google/android/gms/d/o;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/google/android/gms/tagmanager/cf;->a(Lcom/google/android/gms/d/o;)V

    new-instance v2, Lcom/google/android/gms/tagmanager/bq;

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/bq;->b()Z

    move-result v1

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/tagmanager/bq;-><init>(Ljava/lang/Object;Z)V

    return-object v2
.end method

.method a(Lcom/google/android/gms/d/cu;Ljava/util/Set;Lcom/google/android/gms/tagmanager/ci;)Lcom/google/android/gms/tagmanager/bq;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/d/cu;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/tagmanager/ci;",
            ")",
            "Lcom/google/android/gms/tagmanager/bq",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/d/cu;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/d/cq;

    invoke-interface {p3}, Lcom/google/android/gms/tagmanager/ci;->a()Lcom/google/android/gms/tagmanager/cf;

    move-result-object v5

    invoke-virtual {p0, v0, p2, v5}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/d/cq;Ljava/util/Set;Lcom/google/android/gms/tagmanager/cf;)Lcom/google/android/gms/tagmanager/bq;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/tagmanager/bq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dm;->e(Ljava/lang/Object;)Lcom/google/android/gms/d/o;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/google/android/gms/tagmanager/ci;->a(Lcom/google/android/gms/d/o;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/bq;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5}, Lcom/google/android/gms/tagmanager/bq;->b()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/bq;-><init>(Ljava/lang/Object;Z)V

    :goto_1
    return-object v0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v5}, Lcom/google/android/gms/tagmanager/bq;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/d/cu;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/d/cq;

    invoke-interface {p3}, Lcom/google/android/gms/tagmanager/ci;->b()Lcom/google/android/gms/tagmanager/cf;

    move-result-object v5

    invoke-virtual {p0, v0, p2, v5}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/d/cq;Ljava/util/Set;Lcom/google/android/gms/tagmanager/cf;)Lcom/google/android/gms/tagmanager/bq;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/tagmanager/bq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dm;->e(Ljava/lang/Object;)Lcom/google/android/gms/d/o;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/google/android/gms/tagmanager/ci;->a(Lcom/google/android/gms/d/o;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/bq;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5}, Lcom/google/android/gms/tagmanager/bq;->b()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/bq;-><init>(Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v5}, Lcom/google/android/gms/tagmanager/bq;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v2

    goto :goto_3

    :cond_4
    move v1, v3

    goto :goto_3

    :cond_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dm;->e(Ljava/lang/Object;)Lcom/google/android/gms/d/o;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/google/android/gms/tagmanager/ci;->a(Lcom/google/android/gms/d/o;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/bq;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/tagmanager/bq;-><init>(Ljava/lang/Object;Z)V

    goto :goto_1
.end method

.method a(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Lcom/google/android/gms/tagmanager/co;)Lcom/google/android/gms/tagmanager/bq;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/d/cu;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/d/cu;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/d/cq;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/d/cu;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/d/cu;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/d/cq;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/d/cu;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/tagmanager/co;",
            ")",
            "Lcom/google/android/gms/tagmanager/bq",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/d/cq;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/tagmanager/cp$3;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/tagmanager/cp$3;-><init>(Lcom/google/android/gms/tagmanager/cp;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    invoke-direct {p0, p2, p7, v0, p8}, Lcom/google/android/gms/tagmanager/cp;->a(Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/cq;Lcom/google/android/gms/tagmanager/co;)Lcom/google/android/gms/tagmanager/bq;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/util/Set;Lcom/google/android/gms/tagmanager/co;)Lcom/google/android/gms/tagmanager/bq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/d/cu;",
            ">;",
            "Lcom/google/android/gms/tagmanager/co;",
            ")",
            "Lcom/google/android/gms/tagmanager/bq",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/d/cq;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Lcom/google/android/gms/tagmanager/cp$4;

    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/cp$4;-><init>(Lcom/google/android/gms/tagmanager/cp;)V

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/gms/tagmanager/cp;->a(Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/cq;Lcom/google/android/gms/tagmanager/co;)Lcom/google/android/gms/tagmanager/bq;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized a()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->l:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Lcom/google/android/gms/tagmanager/ab;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->f:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/android/gms/tagmanager/cp;->a(Ljava/util/Map;Lcom/google/android/gms/tagmanager/ab;)V

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/cp;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->c:Lcom/google/android/gms/tagmanager/y;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/y;->b(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/tagmanager/x;->b()Lcom/google/android/gms/tagmanager/es;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->i:Ljava/util/Set;

    invoke-interface {v2}, Lcom/google/android/gms/tagmanager/es;->b()Lcom/google/android/gms/tagmanager/co;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/tagmanager/cp;->a(Ljava/util/Set;Lcom/google/android/gms/tagmanager/co;)Lcom/google/android/gms/tagmanager/bq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/bq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/d/cq;

    iget-object v4, p0, Lcom/google/android/gms/tagmanager/cp;->d:Ljava/util/Map;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2}, Lcom/google/android/gms/tagmanager/es;->a()Lcom/google/android/gms/tagmanager/cf;

    move-result-object v6

    invoke-direct {p0, v4, v0, v5, v6}, Lcom/google/android/gms/tagmanager/cp;->a(Ljava/util/Map;Lcom/google/android/gms/d/cq;Ljava/util/Set;Lcom/google/android/gms/tagmanager/cf;)Lcom/google/android/gms/tagmanager/bq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/android/gms/tagmanager/x;->c()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/d/l;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/d/l;

    iget-object v2, v0, Lcom/google/android/gms/d/l;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/d/l;->a:Ljava/lang/String;

    const-string v3, "gaExperiment:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignored supplemental: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/cp;->j:Lcom/google/android/gms/tagmanager/h;

    invoke-static {v2, v0}, Lcom/google/android/gms/tagmanager/aa;->a(Lcom/google/android/gms/tagmanager/h;Lcom/google/android/gms/d/l;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/bq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tagmanager/bq",
            "<",
            "Lcom/google/android/gms/d/o;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/tagmanager/cp;->m:I

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->c:Lcom/google/android/gms/tagmanager/y;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/y;->a(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/x;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/x;->a()Lcom/google/android/gms/tagmanager/bd;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/tagmanager/cp;->a(Ljava/lang/String;Ljava/util/Set;Lcom/google/android/gms/tagmanager/bd;)Lcom/google/android/gms/tagmanager/bq;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/x;->c()V

    return-object v1
.end method

.method b(Lcom/google/android/gms/tagmanager/ab;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->d:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/android/gms/tagmanager/cp;->a(Ljava/util/Map;Lcom/google/android/gms/tagmanager/ab;)V

    return-void
.end method

.method c(Lcom/google/android/gms/tagmanager/ab;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->e:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/android/gms/tagmanager/cp;->a(Ljava/util/Map;Lcom/google/android/gms/tagmanager/ab;)V

    return-void
.end method

.method declared-synchronized c(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cp;->l:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
