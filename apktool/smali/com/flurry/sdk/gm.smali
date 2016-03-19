.class public Lcom/flurry/sdk/gm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/jf$a;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# instance fields
.field private final c:Ljava/lang/Runnable;

.field private final d:Lcom/flurry/sdk/hw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/hw",
            "<",
            "Lcom/flurry/sdk/hc;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/flurry/sdk/hw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/hw",
            "<",
            "Lcom/flurry/sdk/ja;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/flurry/sdk/hw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/hw",
            "<",
            "Lcom/flurry/sdk/hd;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/flurry/sdk/hw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/hw",
            "<",
            "Lcom/flurry/sdk/hg;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/flurry/sdk/if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/if",
            "<",
            "Lcom/flurry/sdk/gb;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/flurry/sdk/if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/if",
            "<",
            "Lcom/flurry/sdk/gc;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/flurry/sdk/hu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/hu",
            "<",
            "Lcom/flurry/sdk/gk;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/flurry/sdk/hu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/hu",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/gp;",
            ">;>;"
        }
    .end annotation
.end field

.field private final l:Lcom/flurry/sdk/gl;

.field private final m:Lcom/flurry/sdk/hs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/hs",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/fz;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/gp;",
            ">;"
        }
    .end annotation
.end field

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:J

.field private s:J

.field private t:Z

.field private u:Lcom/flurry/sdk/gc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/flurry/sdk/gm;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/gm;->a:Ljava/lang/String;

    .line 63
    const-string v0, "https://proton.flurry.com:443/sdk/v1/config"

    sput-object v0, Lcom/flurry/sdk/gm;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/flurry/sdk/gm$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/gm$1;-><init>(Lcom/flurry/sdk/gm;)V

    iput-object v0, p0, Lcom/flurry/sdk/gm;->c:Ljava/lang/Runnable;

    .line 80
    new-instance v0, Lcom/flurry/sdk/gm$5;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/gm$5;-><init>(Lcom/flurry/sdk/gm;)V

    iput-object v0, p0, Lcom/flurry/sdk/gm;->d:Lcom/flurry/sdk/hw;

    .line 87
    new-instance v0, Lcom/flurry/sdk/gm$6;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/gm$6;-><init>(Lcom/flurry/sdk/gm;)V

    iput-object v0, p0, Lcom/flurry/sdk/gm;->e:Lcom/flurry/sdk/hw;

    .line 112
    new-instance v0, Lcom/flurry/sdk/gm$7;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/gm$7;-><init>(Lcom/flurry/sdk/gm;)V

    iput-object v0, p0, Lcom/flurry/sdk/gm;->f:Lcom/flurry/sdk/hw;

    .line 119
    new-instance v0, Lcom/flurry/sdk/gm$8;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/gm$8;-><init>(Lcom/flurry/sdk/gm;)V

    iput-object v0, p0, Lcom/flurry/sdk/gm;->g:Lcom/flurry/sdk/hw;

    .line 130
    new-instance v0, Lcom/flurry/sdk/if;

    const-string v1, "proton config request"

    new-instance v2, Lcom/flurry/sdk/gn;

    invoke-direct {v2}, Lcom/flurry/sdk/gn;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/if;-><init>(Ljava/lang/String;Lcom/flurry/sdk/iv;)V

    iput-object v0, p0, Lcom/flurry/sdk/gm;->h:Lcom/flurry/sdk/if;

    .line 131
    new-instance v0, Lcom/flurry/sdk/if;

    const-string v1, "proton config response"

    new-instance v2, Lcom/flurry/sdk/go;

    invoke-direct {v2}, Lcom/flurry/sdk/go;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/if;-><init>(Ljava/lang/String;Lcom/flurry/sdk/iv;)V

    iput-object v0, p0, Lcom/flurry/sdk/gm;->i:Lcom/flurry/sdk/if;

    .line 136
    new-instance v0, Lcom/flurry/sdk/gl;

    invoke-direct {v0}, Lcom/flurry/sdk/gl;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/gm;->l:Lcom/flurry/sdk/gl;

    .line 137
    new-instance v0, Lcom/flurry/sdk/hs;

    invoke-direct {v0}, Lcom/flurry/sdk/hs;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/gm;->m:Lcom/flurry/sdk/hs;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/gm;->n:Ljava/util/List;

    .line 146
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/flurry/sdk/gm;->r:J

    .line 153
    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v1

    .line 155
    const-string v0, "ProtonEnabled"

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/jf;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/gm;->o:Z

    .line 156
    const-string v0, "ProtonEnabled"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/jf;->a(Ljava/lang/String;Lcom/flurry/sdk/jf$a;)V

    .line 157
    sget-object v0, Lcom/flurry/sdk/gm;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSettings, protonEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/flurry/sdk/gm;->o:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v0, v2}, Lcom/flurry/sdk/ib;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v0, "ProtonConfigUrl"

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/jf;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/sdk/gm;->p:Ljava/lang/String;

    .line 160
    const-string v0, "ProtonConfigUrl"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/jf;->a(Ljava/lang/String;Lcom/flurry/sdk/jf$a;)V

    .line 161
    sget-object v0, Lcom/flurry/sdk/gm;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSettings, protonConfigUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/gm;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/flurry/sdk/ib;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.IdProviderFinishedEvent"

    iget-object v2, p0, Lcom/flurry/sdk/gm;->d:Lcom/flurry/sdk/hw;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/hx;->a(Ljava/lang/String;Lcom/flurry/sdk/hw;)V

    .line 164
    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.IdProviderUpdatedAdvertisingId"

    iget-object v2, p0, Lcom/flurry/sdk/gm;->f:Lcom/flurry/sdk/hw;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/hx;->a(Ljava/lang/String;Lcom/flurry/sdk/hw;)V

    .line 165
    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.NetworkStateEvent"

    iget-object v2, p0, Lcom/flurry/sdk/gm;->g:Lcom/flurry/sdk/hw;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/hx;->a(Ljava/lang/String;Lcom/flurry/sdk/hw;)V

    .line 168
    new-instance v0, Lcom/flurry/sdk/hu;

    invoke-static {}, Lcom/flurry/sdk/hn;->a()Lcom/flurry/sdk/hn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/hn;->c()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/flurry/sdk/gm;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, ".yflurryprotonconfig."

    new-instance v3, Lcom/flurry/sdk/gm$9;

    invoke-direct {v3, p0}, Lcom/flurry/sdk/gm$9;-><init>(Lcom/flurry/sdk/gm;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/flurry/sdk/hu;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/iy;)V

    iput-object v0, p0, Lcom/flurry/sdk/gm;->j:Lcom/flurry/sdk/hu;

    .line 175
    new-instance v0, Lcom/flurry/sdk/hu;

    invoke-static {}, Lcom/flurry/sdk/hn;->a()Lcom/flurry/sdk/hn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/hn;->c()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/flurry/sdk/gm;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, ".yflurryprotonreport."

    new-instance v3, Lcom/flurry/sdk/gm$10;

    invoke-direct {v3, p0}, Lcom/flurry/sdk/gm$10;-><init>(Lcom/flurry/sdk/gm;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/flurry/sdk/hu;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/iy;)V

    iput-object v0, p0, Lcom/flurry/sdk/gm;->k:Lcom/flurry/sdk/hu;

    .line 183
    invoke-static {}, Lcom/flurry/sdk/hn;->a()Lcom/flurry/sdk/hn;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/gm$11;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/gm$11;-><init>(Lcom/flurry/sdk/gm;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/hn;->b(Ljava/lang/Runnable;)V

    .line 191
    invoke-static {}, Lcom/flurry/sdk/hn;->a()Lcom/flurry/sdk/hn;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/gm$12;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/gm$12;-><init>(Lcom/flurry/sdk/gm;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/hn;->b(Ljava/lang/Runnable;)V

    .line 197
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/gm;J)J
    .locals 1

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/flurry/sdk/gm;->r:J

    return-wide p1
.end method

.method static synthetic a(Lcom/flurry/sdk/gm;Lcom/flurry/sdk/gc;)Lcom/flurry/sdk/gc;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/flurry/sdk/gm;->u:Lcom/flurry/sdk/gc;

    return-object p1
.end method

.method private declared-synchronized a(JZ[B)V
    .locals 3

    .prologue
    .line 572
    monitor-enter p0

    if-nez p4, :cond_0

    .line 584
    :goto_0
    monitor-exit p0

    return-void

    .line 576
    :cond_0
    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/gm;->a:Ljava/lang/String;

    const-string v2, "Saving proton config response"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ib;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 578
    new-instance v0, Lcom/flurry/sdk/gk;

    invoke-direct {v0}, Lcom/flurry/sdk/gk;-><init>()V

    .line 579
    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/gk;->a(J)V

    .line 580
    invoke-virtual {v0, p3}, Lcom/flurry/sdk/gk;->a(Z)V

    .line 581
    invoke-virtual {v0, p4}, Lcom/flurry/sdk/gk;->a([B)V

    .line 583
    iget-object v1, p0, Lcom/flurry/sdk/gm;->j:Lcom/flurry/sdk/hu;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/hu;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 572
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/flurry/sdk/gm;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/flurry/sdk/gm;->f()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/gm;JZ[B)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/sdk/gm;->a(JZ[B)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 497
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    :cond_0
    monitor-exit p0

    return-void

    .line 501
    :cond_1
    const/4 v0, 0x3

    :try_start_1
    sget-object v1, Lcom/flurry/sdk/gm;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Firing Proton callbacks for event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ib;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/flurry/sdk/gm;->m:Lcom/flurry/sdk/hs;

    const-string v1, "flurry.session_end"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/hs;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 504
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fz;

    .line 506
    sget-object v1, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gj;

    iget-object v2, v0, Lcom/flurry/sdk/fz;->c:Lcom/flurry/sdk/gj;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/gj;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 512
    iget-object v1, p0, Lcom/flurry/sdk/gm;->l:Lcom/flurry/sdk/gl;

    iget-object v0, v0, Lcom/flurry/sdk/fz;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/gl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 513
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xf731400

    add-long v6, v0, v2

    .line 516
    new-instance v1, Lcom/flurry/sdk/gp;

    invoke-static {}, Lcom/flurry/sdk/ha;->a()Lcom/flurry/sdk/ha;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ha;->d()J

    move-result-wide v2

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/flurry/sdk/gp;-><init>(JLjava/lang/String;Ljava/lang/String;J)V

    .line 517
    const-string v0, "flurry.session_end"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 518
    iget-object v0, p0, Lcom/flurry/sdk/gm;->n:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 497
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 520
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/flurry/sdk/fu;->a()Lcom/flurry/sdk/fu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/fu;->e()Lcom/flurry/sdk/gq;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gq;->b(Lcom/flurry/sdk/il;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/sdk/gm;Z)Z
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/flurry/sdk/gm;->t:Z

    return p1
.end method

.method static synthetic b(Lcom/flurry/sdk/gm;J)J
    .locals 1

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/flurry/sdk/gm;->s:J

    return-wide p1
.end method

.method private declared-synchronized b(J)V
    .locals 5

    .prologue
    .line 526
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/gm;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 527
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 528
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/gp;

    .line 529
    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->a()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    .line 530
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 526
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 533
    :cond_1
    monitor-exit p0

    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/gm;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/flurry/sdk/gm;->h()V

    return-void
.end method

.method static synthetic c(Lcom/flurry/sdk/gm;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/flurry/sdk/gm;->j()V

    return-void
.end method

.method static synthetic d(Lcom/flurry/sdk/gm;)Lcom/flurry/sdk/if;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/flurry/sdk/gm;->i:Lcom/flurry/sdk/if;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/flurry/sdk/gm;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/flurry/sdk/gm;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/flurry/sdk/gm;->g()V

    return-void
.end method

.method static synthetic f(Lcom/flurry/sdk/gm;)J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/flurry/sdk/gm;->r:J

    return-wide v0
.end method

.method private declared-synchronized f()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    .line 283
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/gm;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 460
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 288
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/flurry/sdk/gm;->q:Z

    if-eqz v0, :cond_0

    .line 293
    invoke-static {}, Lcom/flurry/sdk/hb;->a()Lcom/flurry/sdk/hb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hb;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 299
    invoke-static {}, Lcom/flurry/sdk/hb;->a()Lcom/flurry/sdk/hb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hb;->e()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    move v2, v0

    .line 302
    :goto_1
    iget-object v0, p0, Lcom/flurry/sdk/gm;->u:Lcom/flurry/sdk/gc;

    if-eqz v0, :cond_2

    .line 304
    iget-boolean v0, p0, Lcom/flurry/sdk/gm;->t:Z

    if-eq v0, v2, :cond_4

    .line 305
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gm;->a:Ljava/lang/String;

    const-string v3, "Limit ad tracking value has changed, purging"

    invoke-static {v0, v1, v3}, Lcom/flurry/sdk/ib;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/gm;->u:Lcom/flurry/sdk/gc;

    .line 327
    :cond_2
    :goto_2
    invoke-static {}, Lcom/flurry/sdk/hl;->a()Lcom/flurry/sdk/hl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/hl;->a(Ljava/lang/Object;)V

    .line 329
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gm;->a:Ljava/lang/String;

    const-string v3, "Requesting proton config"

    invoke-static {v0, v1, v3}, Lcom/flurry/sdk/ib;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    :try_start_2
    new-instance v3, Lcom/flurry/sdk/gb;

    invoke-direct {v3}, Lcom/flurry/sdk/gb;-><init>()V

    .line 335
    invoke-static {}, Lcom/flurry/sdk/hn;->a()Lcom/flurry/sdk/hn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hn;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/flurry/sdk/gb;->a:Ljava/lang/String;

    .line 336
    invoke-static {}, Lcom/flurry/sdk/hn;->a()Lcom/flurry/sdk/hn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hn;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/jk;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/flurry/sdk/gb;->b:Ljava/lang/String;

    .line 337
    invoke-static {}, Lcom/flurry/sdk/hn;->a()Lcom/flurry/sdk/hn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hn;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/jk;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/flurry/sdk/gb;->c:Ljava/lang/String;

    .line 338
    invoke-static {}, Lcom/flurry/sdk/ho;->a()I

    move-result v0

    iput v0, v3, Lcom/flurry/sdk/gb;->d:I

    .line 339
    const/4 v0, 0x3

    iput v0, v3, Lcom/flurry/sdk/gb;->e:I

    .line 340
    invoke-static {}, Lcom/flurry/sdk/hk;->a()Lcom/flurry/sdk/hk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hk;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/flurry/sdk/gb;->f:Ljava/lang/String;

    .line 341
    iput-boolean v2, v3, Lcom/flurry/sdk/gb;->g:Z

    .line 343
    new-instance v0, Lcom/flurry/sdk/ge;

    invoke-direct {v0}, Lcom/flurry/sdk/ge;-><init>()V

    iput-object v0, v3, Lcom/flurry/sdk/gb;->h:Lcom/flurry/sdk/ge;

    .line 344
    iget-object v0, v3, Lcom/flurry/sdk/gb;->h:Lcom/flurry/sdk/ge;

    new-instance v1, Lcom/flurry/sdk/fy;

    invoke-direct {v1}, Lcom/flurry/sdk/fy;-><init>()V

    iput-object v1, v0, Lcom/flurry/sdk/ge;->a:Lcom/flurry/sdk/fy;

    .line 345
    iget-object v0, v3, Lcom/flurry/sdk/gb;->h:Lcom/flurry/sdk/ge;

    iget-object v0, v0, Lcom/flurry/sdk/ge;->a:Lcom/flurry/sdk/fy;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v0, Lcom/flurry/sdk/fy;->a:Ljava/lang/String;

    .line 346
    iget-object v0, v3, Lcom/flurry/sdk/gb;->h:Lcom/flurry/sdk/ge;

    iget-object v0, v0, Lcom/flurry/sdk/ge;->a:Lcom/flurry/sdk/fy;

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v1, v0, Lcom/flurry/sdk/fy;->b:Ljava/lang/String;

    .line 347
    iget-object v0, v3, Lcom/flurry/sdk/gb;->h:Lcom/flurry/sdk/ge;

    iget-object v0, v0, Lcom/flurry/sdk/ge;->a:Lcom/flurry/sdk/fy;

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    iput-object v1, v0, Lcom/flurry/sdk/fy;->c:Ljava/lang/String;

    .line 348
    iget-object v0, v3, Lcom/flurry/sdk/gb;->h:Lcom/flurry/sdk/ge;

    iget-object v0, v0, Lcom/flurry/sdk/ge;->a:Lcom/flurry/sdk/fy;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v1, v0, Lcom/flurry/sdk/fy;->d:Ljava/lang/String;

    .line 349
    iget-object v0, v3, Lcom/flurry/sdk/gb;->h:Lcom/flurry/sdk/ge;

    iget-object v0, v0, Lcom/flurry/sdk/ge;->a:Lcom/flurry/sdk/fy;

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    iput-object v1, v0, Lcom/flurry/sdk/fy;->e:Ljava/lang/String;

    .line 350
    iget-object v0, v3, Lcom/flurry/sdk/gb;->h:Lcom/flurry/sdk/ge;

    iget-object v0, v0, Lcom/flurry/sdk/ge;->a:Lcom/flurry/sdk/fy;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, v0, Lcom/flurry/sdk/fy;->f:Ljava/lang/String;

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v3, Lcom/flurry/sdk/gb;->i:Ljava/util/List;

    .line 354
    invoke-static {}, Lcom/flurry/sdk/hb;->a()Lcom/flurry/sdk/hb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hb;->h()Ljava/util/Map;

    move-result-object v0

    .line 355
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 356
    new-instance v7, Lcom/flurry/sdk/gd;

    invoke-direct {v7}, Lcom/flurry/sdk/gd;-><init>()V

    .line 357
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/hj;

    iget v1, v1, Lcom/flurry/sdk/hj;->d:I

    iput v1, v7, Lcom/flurry/sdk/gd;->a:I

    .line 358
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/hj;

    iget-boolean v1, v1, Lcom/flurry/sdk/hj;->e:Z

    if-eqz v1, :cond_6

    .line 359
    new-instance v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v7, Lcom/flurry/sdk/gd;->b:Ljava/lang/String;

    .line 364
    :goto_4
    iget-object v0, v3, Lcom/flurry/sdk/gb;->i:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 377
    :catch_0
    move-exception v0

    .line 378
    const/4 v1, 0x5

    :try_start_3
    sget-object v2, Lcom/flurry/sdk/gm;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proton config request failed with exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/ib;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 299
    :cond_3
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_1

    .line 311
    :cond_4
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/flurry/sdk/gm;->s:J

    iget-object v3, p0, Lcom/flurry/sdk/gm;->u:Lcom/flurry/sdk/gc;

    iget-wide v8, v3, Lcom/flurry/sdk/gc;->b:J

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    cmp-long v0, v0, v6

    if-gez v0, :cond_5

    .line 312
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gm;->a:Ljava/lang/String;

    const-string v2, "Cached Proton config valid, no need to refresh"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ib;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 319
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/flurry/sdk/gm;->s:J

    iget-object v3, p0, Lcom/flurry/sdk/gm;->u:Lcom/flurry/sdk/gc;

    iget-wide v8, v3, Lcom/flurry/sdk/gc;->c:J

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    cmp-long v0, v0, v6

    if-ltz v0, :cond_2

    .line 320
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gm;->a:Ljava/lang/String;

    const-string v3, "Cached Proton config expired, purging"

    invoke-static {v0, v1, v3}, Lcom/flurry/sdk/ib;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/gm;->u:Lcom/flurry/sdk/gc;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 362
    :cond_6
    :try_start_5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/flurry/sdk/jn;->b([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/flurry/sdk/gd;->b:Ljava/lang/String;

    goto :goto_4

    .line 367
    :cond_7
    invoke-static {}, Lcom/flurry/sdk/hf;->a()Lcom/flurry/sdk/hf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hf;->e()Landroid/location/Location;

    move-result-object v0

    .line 368
    if-eqz v0, :cond_8

    .line 369
    new-instance v1, Lcom/flurry/sdk/gg;

    invoke-direct {v1}, Lcom/flurry/sdk/gg;-><init>()V

    iput-object v1, v3, Lcom/flurry/sdk/gb;->j:Lcom/flurry/sdk/gg;

    .line 370
    iget-object v1, v3, Lcom/flurry/sdk/gb;->j:Lcom/flurry/sdk/gg;

    new-instance v6, Lcom/flurry/sdk/gf;

    invoke-direct {v6}, Lcom/flurry/sdk/gf;-><init>()V

    iput-object v6, v1, Lcom/flurry/sdk/gg;->a:Lcom/flurry/sdk/gf;

    .line 371
    iget-object v1, v3, Lcom/flurry/sdk/gb;->j:Lcom/flurry/sdk/gg;

    iget-object v1, v1, Lcom/flurry/sdk/gg;->a:Lcom/flurry/sdk/gf;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    iput-wide v6, v1, Lcom/flurry/sdk/gf;->a:D

    .line 372
    iget-object v1, v3, Lcom/flurry/sdk/gb;->j:Lcom/flurry/sdk/gg;

    iget-object v1, v1, Lcom/flurry/sdk/gg;->a:Lcom/flurry/sdk/gf;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    iput-wide v6, v1, Lcom/flurry/sdk/gf;->b:D

    .line 373
    iget-object v1, v3, Lcom/flurry/sdk/gb;->j:Lcom/flurry/sdk/gg;

    iget-object v1, v1, Lcom/flurry/sdk/gg;->a:Lcom/flurry/sdk/gf;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iput v0, v1, Lcom/flurry/sdk/gf;->c:F

    .line 376
    :cond_8
    iget-object v0, p0, Lcom/flurry/sdk/gm;->h:Lcom/flurry/sdk/if;

    invoke-virtual {v0, v3}, Lcom/flurry/sdk/if;->a(Ljava/lang/Object;)[B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    .line 383
    :try_start_6
    new-instance v3, Lcom/flurry/sdk/ii;

    invoke-direct {v3}, Lcom/flurry/sdk/ii;-><init>()V

    .line 384
    iget-object v0, p0, Lcom/flurry/sdk/gm;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/flurry/sdk/gm;->b:Ljava/lang/String;

    :goto_5
    invoke-virtual {v3, v0}, Lcom/flurry/sdk/ii;->a(Ljava/lang/String;)V

    .line 385
    const/16 v0, 0x1388

    invoke-virtual {v3, v0}, Lcom/flurry/sdk/ii;->a(I)V

    .line 386
    sget-object v0, Lcom/flurry/sdk/ij$a;->c:Lcom/flurry/sdk/ij$a;

    invoke-virtual {v3, v0}, Lcom/flurry/sdk/ii;->a(Lcom/flurry/sdk/ij$a;)V

    .line 387
    const-string v0, "Content-Type"

    const-string v6, "application/x-flurry;version=1"

    invoke-virtual {v3, v0, v6}, Lcom/flurry/sdk/ii;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const-string v0, "Accept"

    const-string v6, "application/x-flurry;version=1"

    invoke-virtual {v3, v0, v6}, Lcom/flurry/sdk/ii;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v0, "FM-Checksum"

    invoke-static {v1}, Lcom/flurry/sdk/if;->c([B)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Lcom/flurry/sdk/ii;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    new-instance v0, Lcom/flurry/sdk/ir;

    invoke-direct {v0}, Lcom/flurry/sdk/ir;-><init>()V

    invoke-virtual {v3, v0}, Lcom/flurry/sdk/ii;->a(Lcom/flurry/sdk/iv;)V

    .line 391
    new-instance v0, Lcom/flurry/sdk/ir;

    invoke-direct {v0}, Lcom/flurry/sdk/ir;-><init>()V

    invoke-virtual {v3, v0}, Lcom/flurry/sdk/ii;->b(Lcom/flurry/sdk/iv;)V

    .line 392
    invoke-virtual {v3, v1}, Lcom/flurry/sdk/ii;->a(Ljava/lang/Object;)V

    .line 393
    new-instance v0, Lcom/flurry/sdk/gm$2;

    invoke-direct {v0, p0, v4, v5, v2}, Lcom/flurry/sdk/gm$2;-><init>(Lcom/flurry/sdk/gm;JZ)V

    invoke-virtual {v3, v0}, Lcom/flurry/sdk/ii;->a(Lcom/flurry/sdk/ii$a;)V

    .line 459
    invoke-static {}, Lcom/flurry/sdk/hl;->a()Lcom/flurry/sdk/hl;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Lcom/flurry/sdk/hl;->a(Ljava/lang/Object;Lcom/flurry/sdk/jq;)V

    goto/16 :goto_0

    .line 384
    :cond_9
    iget-object v0, p0, Lcom/flurry/sdk/gm;->p:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5
.end method

.method static synthetic g(Lcom/flurry/sdk/gm;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/flurry/sdk/gm;->c:Ljava/lang/Runnable;

    return-object v0
.end method

.method private g()V
    .locals 5

    .prologue
    .line 463
    iget-object v0, p0, Lcom/flurry/sdk/gm;->u:Lcom/flurry/sdk/gc;

    if-nez v0, :cond_1

    .line 494
    :cond_0
    return-void

    .line 468
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gm;->m:Lcom/flurry/sdk/hs;

    invoke-virtual {v0}, Lcom/flurry/sdk/hs;->a()V

    .line 470
    iget-object v0, p0, Lcom/flurry/sdk/gm;->u:Lcom/flurry/sdk/gc;

    iget-object v0, v0, Lcom/flurry/sdk/gc;->e:Lcom/flurry/sdk/ga;

    .line 471
    if-eqz v0, :cond_0

    .line 475
    iget-object v0, v0, Lcom/flurry/sdk/ga;->b:Ljava/util/List;

    .line 476
    if-eqz v0, :cond_0

    .line 480
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fz;

    .line 481
    iget-object v1, v0, Lcom/flurry/sdk/fz;->b:Ljava/util/List;

    .line 482
    if-eqz v1, :cond_2

    .line 486
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 487
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 491
    iget-object v4, p0, Lcom/flurry/sdk/gm;->m:Lcom/flurry/sdk/hs;

    invoke-virtual {v4, v1, v0}, Lcom/flurry/sdk/hs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private declared-synchronized h()V
    .locals 7

    .prologue
    .line 536
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/gm;->j:Lcom/flurry/sdk/hu;

    invoke-virtual {v0}, Lcom/flurry/sdk/hu;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/gk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    if-eqz v0, :cond_0

    .line 538
    const/4 v2, 0x0

    .line 540
    :try_start_1
    iget-object v1, p0, Lcom/flurry/sdk/gm;->i:Lcom/flurry/sdk/if;

    invoke-virtual {v0}, Lcom/flurry/sdk/gk;->c()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/flurry/sdk/if;->d([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/gc;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 546
    :goto_0
    if-eqz v1, :cond_0

    .line 547
    const/4 v2, 0x4

    :try_start_2
    sget-object v3, Lcom/flurry/sdk/gm;->a:Ljava/lang/String;

    const-string v4, "Loaded saved proton config response"

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/ib;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 549
    const-wide/16 v2, 0x2710

    iput-wide v2, p0, Lcom/flurry/sdk/gm;->r:J

    .line 551
    invoke-virtual {v0}, Lcom/flurry/sdk/gk;->a()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/flurry/sdk/gm;->s:J

    .line 552
    invoke-virtual {v0}, Lcom/flurry/sdk/gk;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/gm;->t:Z

    .line 553
    iput-object v1, p0, Lcom/flurry/sdk/gm;->u:Lcom/flurry/sdk/gc;

    .line 556
    invoke-direct {p0}, Lcom/flurry/sdk/gm;->g()V

    .line 560
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/gm;->q:Z

    .line 563
    invoke-static {}, Lcom/flurry/sdk/hn;->a()Lcom/flurry/sdk/hn;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/gm$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/gm$3;-><init>(Lcom/flurry/sdk/gm;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/hn;->b(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 569
    monitor-exit p0

    return-void

    .line 541
    :catch_0
    move-exception v1

    .line 542
    const/4 v3, 0x5

    :try_start_3
    sget-object v4, Lcom/flurry/sdk/gm;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to decode saved proton config response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/flurry/sdk/ib;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 543
    iget-object v1, p0, Lcom/flurry/sdk/gm;->j:Lcom/flurry/sdk/hu;

    invoke-virtual {v1}, Lcom/flurry/sdk/hu;->b()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v2

    goto :goto_0

    .line 536
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized i()V
    .locals 4

    .prologue
    .line 587
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/gm;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/gm;->n:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " queued reports."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ib;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 589
    iget-object v0, p0, Lcom/flurry/sdk/gm;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/gp;

    .line 590
    invoke-static {}, Lcom/flurry/sdk/fu;->a()Lcom/flurry/sdk/fu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/fu;->e()Lcom/flurry/sdk/gq;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/gq;->b(Lcom/flurry/sdk/il;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 587
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 593
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/flurry/sdk/gm;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 594
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized j()V
    .locals 3

    .prologue
    .line 597
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/gm;->a:Ljava/lang/String;

    const-string v2, "Loading queued report data."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ib;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/flurry/sdk/gm;->k:Lcom/flurry/sdk/hu;

    invoke-virtual {v0}, Lcom/flurry/sdk/hu;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 600
    if-eqz v0, :cond_0

    .line 601
    iget-object v1, p0, Lcom/flurry/sdk/gm;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    :cond_0
    monitor-exit p0

    return-void

    .line 597
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized k()V
    .locals 3

    .prologue
    .line 606
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/gm;->a:Ljava/lang/String;

    const-string v2, "Saving queued report data."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ib;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 608
    iget-object v0, p0, Lcom/flurry/sdk/gm;->k:Lcom/flurry/sdk/hu;

    iget-object v1, p0, Lcom/flurry/sdk/gm;->n:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/hu;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    monitor-exit p0

    return-void

    .line 606
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized l()V
    .locals 1

    .prologue
    .line 612
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/gm;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 613
    iget-object v0, p0, Lcom/flurry/sdk/gm;->k:Lcom/flurry/sdk/hu;

    invoke-virtual {v0}, Lcom/flurry/sdk/hu;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    monitor-exit p0

    return-void

    .line 612
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private m()Ljava/lang/String;
    .locals 4

    .prologue
    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".yflurryprotonconfig."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/flurry/sdk/hn;->a()Lcom/flurry/sdk/hn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/hn;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/flurry/sdk/jn;->i(Ljava/lang/String;)J

    move-result-wide v2

    const/16 v1, 0x10

    invoke-static {v2, v3, v1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private n()Ljava/lang/String;
    .locals 4

    .prologue
    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".yflurryprotonreport."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/flurry/sdk/hn;->a()Lcom/flurry/sdk/hn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/hn;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/flurry/sdk/jn;->i(Ljava/lang/String;)J

    move-result-wide v2

    const/16 v1, 0x10

    invoke-static {v2, v3, v1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 200
    invoke-static {}, Lcom/flurry/sdk/hn;->a()Lcom/flurry/sdk/hn;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/gm;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/hn;->c(Ljava/lang/Runnable;)V

    .line 202
    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.NetworkStateEvent"

    iget-object v2, p0, Lcom/flurry/sdk/gm;->g:Lcom/flurry/sdk/hw;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/hx;->b(Ljava/lang/String;Lcom/flurry/sdk/hw;)V

    .line 203
    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.IdProviderUpdatedAdvertisingId"

    iget-object v2, p0, Lcom/flurry/sdk/gm;->f:Lcom/flurry/sdk/hw;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/hx;->b(Ljava/lang/String;Lcom/flurry/sdk/hw;)V

    .line 204
    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.IdProviderFinishedEvent"

    iget-object v2, p0, Lcom/flurry/sdk/gm;->d:Lcom/flurry/sdk/hw;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/hx;->b(Ljava/lang/String;Lcom/flurry/sdk/hw;)V

    .line 207
    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v0

    const-string v1, "ProtonEnabled"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/je;->b(Ljava/lang/String;Lcom/flurry/sdk/jf$a;)Z

    .line 209
    return-void
.end method

.method public declared-synchronized a(J)V
    .locals 1

    .prologue
    .line 254
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/gm;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 268
    :goto_0
    monitor-exit p0

    return-void

    .line 258
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/jn;->b()V

    .line 261
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/gm;->b(J)V

    .line 264
    const-string v0, "flurry.session_end"

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gm;->a(Ljava/lang/String;)V

    .line 267
    invoke-direct {p0}, Lcom/flurry/sdk/gm;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 213
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 223
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/sdk/gm;->a:Ljava/lang/String;

    const-string v2, "onSettingUpdate internal error!"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ib;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 226
    :goto_1
    return-void

    .line 213
    :sswitch_0
    const-string v1, "ProtonEnabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "ProtonConfigUrl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 215
    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/gm;->o:Z

    .line 216
    sget-object v0, Lcom/flurry/sdk/gm;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingUpdate, protonEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/flurry/sdk/gm;->o:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/ib;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 219
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/flurry/sdk/gm;->p:Ljava/lang/String;

    .line 220
    sget-object v0, Lcom/flurry/sdk/gm;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingUpdate, protonConfigUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/gm;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/ib;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 213
    nop

    :sswitch_data_0
    .sparse-switch
        0x2633fcbb -> :sswitch_0
        0x5edae5c7 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized b()V
    .locals 1

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/gm;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 237
    :goto_0
    monitor-exit p0

    return-void

    .line 234
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/jn;->b()V

    .line 236
    invoke-direct {p0}, Lcom/flurry/sdk/gm;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 2

    .prologue
    .line 241
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/gm;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 250
    :goto_0
    monitor-exit p0

    return-void

    .line 245
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/jn;->b()V

    .line 248
    invoke-static {}, Lcom/flurry/sdk/ha;->a()Lcom/flurry/sdk/ha;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ha;->d()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/gm;->b(J)V

    .line 249
    invoke-direct {p0}, Lcom/flurry/sdk/gm;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 1

    .prologue
    .line 272
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/gm;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 280
    :goto_0
    monitor-exit p0

    return-void

    .line 276
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/jn;->b()V

    .line 279
    invoke-direct {p0}, Lcom/flurry/sdk/gm;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
