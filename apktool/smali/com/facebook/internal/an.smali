.class public Lcom/facebook/internal/an;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/am;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Lcom/facebook/internal/q;


# direct methods
.method private constructor <init>(ZLjava/lang/String;ZLjava/util/Map;Lcom/facebook/internal/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/am;",
            ">;>;",
            "Lcom/facebook/internal/q;",
            ")V"
        }
    .end annotation

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-boolean p1, p0, Lcom/facebook/internal/an;->a:Z

    .line 145
    iput-object p2, p0, Lcom/facebook/internal/an;->b:Ljava/lang/String;

    .line 146
    iput-boolean p3, p0, Lcom/facebook/internal/an;->c:Z

    .line 147
    iput-object p4, p0, Lcom/facebook/internal/an;->d:Ljava/util/Map;

    .line 148
    iput-object p5, p0, Lcom/facebook/internal/an;->e:Lcom/facebook/internal/q;

    .line 149
    return-void
.end method

.method synthetic constructor <init>(ZLjava/lang/String;ZLjava/util/Map;Lcom/facebook/internal/q;Lcom/facebook/internal/al$1;)V
    .locals 0

    .prologue
    .line 132
    invoke-direct/range {p0 .. p5}, Lcom/facebook/internal/an;-><init>(ZLjava/lang/String;ZLjava/util/Map;Lcom/facebook/internal/q;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/facebook/internal/an;->a:Z

    return v0
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/am;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/facebook/internal/an;->d:Ljava/util/Map;

    return-object v0
.end method

.method public c()Lcom/facebook/internal/q;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/facebook/internal/an;->e:Lcom/facebook/internal/q;

    return-object v0
.end method
