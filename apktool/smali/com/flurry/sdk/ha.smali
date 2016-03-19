.class public Lcom/flurry/sdk/ha;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ie;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/flurry/sdk/ha;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/ha;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/ha;
    .locals 3

    .prologue
    .line 27
    const-class v1, Lcom/flurry/sdk/ha;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/hn;->a()Lcom/flurry/sdk/hn;

    move-result-object v0

    const-class v2, Lcom/flurry/sdk/ha;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/hn;->a(Ljava/lang/Class;)Lcom/flurry/sdk/ie;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ha;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/flurry/sdk/iz;)Lcom/flurry/sdk/hm;
    .locals 1

    .prologue
    .line 153
    if-nez p1, :cond_0

    .line 154
    const/4 v0, 0x0

    .line 157
    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcom/flurry/sdk/hm;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/iz;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/hm;

    goto :goto_0
.end method

.method private j()Lcom/flurry/sdk/hm;
    .locals 1

    .prologue
    .line 149
    invoke-static {}, Lcom/flurry/sdk/jb;->a()Lcom/flurry/sdk/jb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jb;->e()Lcom/flurry/sdk/iz;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ha;->a(Lcom/flurry/sdk/iz;)Lcom/flurry/sdk/hm;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/flurry/sdk/hm;

    invoke-static {v0}, Lcom/flurry/sdk/iz;->a(Ljava/lang/Class;)V

    .line 41
    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    .line 42
    invoke-static {}, Lcom/flurry/sdk/ji;->a()Lcom/flurry/sdk/ji;

    .line 43
    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    .line 44
    invoke-static {}, Lcom/flurry/sdk/hp;->a()Lcom/flurry/sdk/hp;

    .line 45
    invoke-static {}, Lcom/flurry/sdk/hh;->a()Lcom/flurry/sdk/hh;

    .line 46
    invoke-static {}, Lcom/flurry/sdk/hb;->a()Lcom/flurry/sdk/hb;

    .line 47
    invoke-static {}, Lcom/flurry/sdk/hi;->a()Lcom/flurry/sdk/hi;

    .line 48
    invoke-static {}, Lcom/flurry/sdk/hf;->a()Lcom/flurry/sdk/hf;

    .line 49
    invoke-static {}, Lcom/flurry/sdk/hb;->a()Lcom/flurry/sdk/hb;

    .line 50
    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    .line 51
    invoke-static {}, Lcom/flurry/sdk/he;->a()Lcom/flurry/sdk/he;

    .line 52
    invoke-static {}, Lcom/flurry/sdk/hl;->a()Lcom/flurry/sdk/hl;

    .line 53
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/flurry/sdk/hl;->b()V

    .line 59
    invoke-static {}, Lcom/flurry/sdk/he;->b()V

    .line 60
    invoke-static {}, Lcom/flurry/sdk/hk;->b()V

    .line 61
    invoke-static {}, Lcom/flurry/sdk/hb;->b()V

    .line 62
    invoke-static {}, Lcom/flurry/sdk/hf;->b()V

    .line 63
    invoke-static {}, Lcom/flurry/sdk/hi;->b()V

    .line 64
    invoke-static {}, Lcom/flurry/sdk/hb;->b()V

    .line 65
    invoke-static {}, Lcom/flurry/sdk/hh;->b()V

    .line 66
    invoke-static {}, Lcom/flurry/sdk/hp;->b()V

    .line 67
    invoke-static {}, Lcom/flurry/sdk/je;->b()V

    .line 68
    invoke-static {}, Lcom/flurry/sdk/ji;->b()V

    .line 69
    invoke-static {}, Lcom/flurry/sdk/hx;->b()V

    .line 71
    const-class v0, Lcom/flurry/sdk/hm;

    invoke-static {v0}, Lcom/flurry/sdk/iz;->b(Ljava/lang/Class;)V

    .line 72
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Lcom/flurry/sdk/ha;->j()Lcom/flurry/sdk/hm;

    move-result-object v1

    .line 78
    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v1}, Lcom/flurry/sdk/hm;->b()Ljava/lang/String;

    move-result-object v0

    .line 82
    :cond_0
    return-object v0
.end method

.method public d()J
    .locals 3

    .prologue
    .line 86
    const-wide/16 v0, 0x0

    .line 88
    invoke-direct {p0}, Lcom/flurry/sdk/ha;->j()Lcom/flurry/sdk/hm;

    move-result-object v2

    .line 89
    if-eqz v2, :cond_0

    .line 90
    invoke-virtual {v2}, Lcom/flurry/sdk/hm;->c()J

    move-result-wide v0

    .line 93
    :cond_0
    return-wide v0
.end method

.method public e()J
    .locals 3

    .prologue
    .line 97
    const-wide/16 v0, 0x0

    .line 99
    invoke-direct {p0}, Lcom/flurry/sdk/ha;->j()Lcom/flurry/sdk/hm;

    move-result-object v2

    .line 100
    if-eqz v2, :cond_0

    .line 101
    invoke-virtual {v2}, Lcom/flurry/sdk/hm;->d()J

    move-result-wide v0

    .line 104
    :cond_0
    return-wide v0
.end method

.method public f()J
    .locals 3

    .prologue
    .line 108
    const-wide/16 v0, -0x1

    .line 110
    invoke-direct {p0}, Lcom/flurry/sdk/ha;->j()Lcom/flurry/sdk/hm;

    move-result-object v2

    .line 111
    if-eqz v2, :cond_0

    .line 112
    invoke-virtual {v2}, Lcom/flurry/sdk/hm;->e()J

    move-result-wide v0

    .line 115
    :cond_0
    return-wide v0
.end method

.method public g()J
    .locals 3

    .prologue
    .line 119
    const-wide/16 v0, 0x0

    .line 121
    invoke-direct {p0}, Lcom/flurry/sdk/ha;->j()Lcom/flurry/sdk/hm;

    move-result-object v2

    .line 122
    if-eqz v2, :cond_0

    .line 123
    invoke-virtual {v2}, Lcom/flurry/sdk/hm;->g()J

    move-result-wide v0

    .line 126
    :cond_0
    return-wide v0
.end method

.method public h()J
    .locals 3

    .prologue
    .line 130
    const-wide/16 v0, 0x0

    .line 132
    invoke-direct {p0}, Lcom/flurry/sdk/ha;->j()Lcom/flurry/sdk/hm;

    move-result-object v2

    .line 133
    if-eqz v2, :cond_0

    .line 134
    invoke-virtual {v2}, Lcom/flurry/sdk/hm;->f()J

    move-result-wide v0

    .line 137
    :cond_0
    return-wide v0
.end method

.method public i()Lcom/flurry/sdk/hh$a;
    .locals 1

    .prologue
    .line 145
    invoke-static {}, Lcom/flurry/sdk/hh;->a()Lcom/flurry/sdk/hh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hh;->d()Lcom/flurry/sdk/hh$a;

    move-result-object v0

    return-object v0
.end method
