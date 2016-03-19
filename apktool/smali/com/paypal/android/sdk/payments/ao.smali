.class final Lcom/paypal/android/sdk/payments/ao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/cz;


# instance fields
.field private synthetic a:Lcom/paypal/android/sdk/payments/PayPalService;


# direct methods
.method private constructor <init>(Lcom/paypal/android/sdk/payments/PayPalService;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/paypal/android/sdk/payments/PayPalService;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/paypal/android/sdk/payments/ao;-><init>(Lcom/paypal/android/sdk/payments/PayPalService;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;J)Lcom/paypal/android/sdk/bL;
    .locals 8

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long v4, v2, v0

    new-instance v1, Lcom/paypal/android/sdk/bL;

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/paypal/android/sdk/bL;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    return-object v1
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->v()Ljava/lang/String;

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/fc;)V
    .locals 4

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->v()Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/ej;->d:Lcom/paypal/android/sdk/ej;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fc;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fc;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/ej;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->i()V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/af;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/sdk/payments/by;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/af;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/af;->a()V

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/fe;)V
    .locals 3

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->v()Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/ej;->p:Lcom/paypal/android/sdk/ej;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fe;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/ej;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/af;

    move-result-object v0

    iget-object v1, p1, Lcom/paypal/android/sdk/fe;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/af;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/af;->a()V

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/ff;)V
    .locals 1

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->v()Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/af;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/payments/af;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/af;->a()V

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/fg;)V
    .locals 4

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->v()Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/ej;->d:Lcom/paypal/android/sdk/ej;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fg;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fg;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/ej;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/af;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/sdk/payments/by;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/af;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->q()V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/af;->a()V

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/fh;)V
    .locals 3

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fh;->q()Lcom/paypal/android/sdk/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/al;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->v()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DeleteCreditCardRequest Error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "paypal.sdk"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/fj;)V
    .locals 1

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->v()Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/af;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/payments/af;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/af;->a()V

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/fk;)V
    .locals 2

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->v()Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/cm;

    move-result-object v0

    iget-object v1, p1, Lcom/paypal/android/sdk/fk;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/paypal/android/sdk/cm;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/af;->a()V

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/fl;)V
    .locals 5

    const-wide/16 v0, 0x348

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->v()Ljava/lang/String;

    iget-wide v2, p1, Lcom/paypal/android/sdk/fl;->f:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_3

    :goto_0
    iget-object v2, p1, Lcom/paypal/android/sdk/fl;->c:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/cm;

    move-result-object v2

    iget-object v3, p1, Lcom/paypal/android/sdk/fl;->d:Ljava/lang/String;

    iget-object v4, p1, Lcom/paypal/android/sdk/fl;->e:Ljava/lang/String;

    invoke-static {v3, v4, v0, v1}, Lcom/paypal/android/sdk/payments/ao;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/paypal/android/sdk/bL;

    move-result-object v0

    iput-object v0, v2, Lcom/paypal/android/sdk/cm;->h:Lcom/paypal/android/sdk/bL;

    :goto_1
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/cm;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/paypal/android/sdk/cm;->g:Lcom/paypal/android/sdk/cy;

    new-instance v0, Lcom/paypal/android/sdk/bE;

    invoke-direct {v0}, Lcom/paypal/android/sdk/bE;-><init>()V

    iget-object v1, p1, Lcom/paypal/android/sdk/fl;->a:Lcom/paypal/android/sdk/ca;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/ca;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/paypal/android/sdk/fl;->a:Lcom/paypal/android/sdk/ca;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/ca;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/bE;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/paypal/android/sdk/cq;->a:Lcom/paypal/android/sdk/cq;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/bE;->a(Lcom/paypal/android/sdk/cq;)V

    :goto_2
    iget-object v1, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/cm;

    move-result-object v1

    iput-object v0, v1, Lcom/paypal/android/sdk/cm;->e:Lcom/paypal/android/sdk/bE;

    iget-object v0, p1, Lcom/paypal/android/sdk/fl;->a:Lcom/paypal/android/sdk/ca;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ca;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/cm;

    move-result-object v0

    iget-object v1, p1, Lcom/paypal/android/sdk/fl;->a:Lcom/paypal/android/sdk/ca;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/ca;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/paypal/android/sdk/cm;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/ej;->f:Lcom/paypal/android/sdk/ej;

    iget-boolean v2, p1, Lcom/paypal/android/sdk/fl;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fl;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/ej;Ljava/lang/Boolean;Ljava/lang/String;)V

    :goto_3
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/af;->a()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/cm;

    move-result-object v0

    iget-object v1, p1, Lcom/paypal/android/sdk/fl;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/paypal/android/sdk/cm;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/cm;

    move-result-object v0

    new-instance v1, Lcom/paypal/android/sdk/bN;

    iget-object v2, p1, Lcom/paypal/android/sdk/fl;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/paypal/android/sdk/fl;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/paypal/android/sdk/bN;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/paypal/android/sdk/cm;->f:Lcom/paypal/android/sdk/bN;

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lcom/paypal/android/sdk/fl;->a:Lcom/paypal/android/sdk/ca;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/ca;->d()Lcom/paypal/android/sdk/cg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/bE;->a(Lcom/paypal/android/sdk/cg;)V

    sget-object v1, Lcom/paypal/android/sdk/cq;->b:Lcom/paypal/android/sdk/cq;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/bE;->a(Lcom/paypal/android/sdk/cq;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/cm;

    move-result-object v0

    iget-object v1, p1, Lcom/paypal/android/sdk/fl;->a:Lcom/paypal/android/sdk/ca;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/ca;->d()Lcom/paypal/android/sdk/cg;

    move-result-object v1

    invoke-static {}, Lcom/paypal/android/sdk/ed;->a()Lcom/paypal/android/sdk/ed;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/sdk/cg;->a(Lcom/paypal/android/sdk/ez;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/paypal/android/sdk/cm;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/ej;->g:Lcom/paypal/android/sdk/ej;

    iget-boolean v2, p1, Lcom/paypal/android/sdk/fl;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fl;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/ej;Ljava/lang/Boolean;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move-wide v0, v2

    goto/16 :goto_0
.end method

.method public final a(Lcom/paypal/android/sdk/fp;)V
    .locals 6

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->v()Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/ej;->b:Lcom/paypal/android/sdk/ej;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fp;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/ej;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/cm;

    move-result-object v0

    iget-object v1, p1, Lcom/paypal/android/sdk/fp;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/fp;->b:Ljava/lang/String;

    iget-wide v4, p1, Lcom/paypal/android/sdk/fp;->c:J

    invoke-static {v1, v2, v4, v5}, Lcom/paypal/android/sdk/payments/ao;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/paypal/android/sdk/bL;

    move-result-object v1

    iput-object v1, v0, Lcom/paypal/android/sdk/cm;->c:Lcom/paypal/android/sdk/bL;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/cm;

    move-result-object v0

    iget-boolean v1, p1, Lcom/paypal/android/sdk/fp;->d:Z

    iput-boolean v1, v0, Lcom/paypal/android/sdk/cm;->i:Z

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/PayPalService;Z)Z

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/am;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->v()Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/am;

    move-result-object v0

    invoke-interface {v0}, Lcom/paypal/android/sdk/payments/am;->a()V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/payments/am;)Lcom/paypal/android/sdk/payments/am;

    :cond_0
    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/fr;)V
    .locals 9

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->v()Ljava/lang/String;

    new-instance v0, Lcom/paypal/android/sdk/bI;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->f(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/ck;

    move-result-object v1

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fr;->u()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/paypal/android/sdk/fr;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fr;->w()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fr;->v()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fr;->x()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fr;->y()I

    move-result v7

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fr;->z()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/paypal/android/sdk/bI;-><init>(Lcom/paypal/android/sdk/ck;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;II)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->d(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/co;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v2}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/paypal/android/sdk/co;->a(Lcom/paypal/android/sdk/bI;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/af;->a()V

    return-void
.end method

.method public final b(Lcom/paypal/android/sdk/fc;)V
    .locals 3

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fc;->q()Lcom/paypal/android/sdk/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/al;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->v()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ApproveAndExecuteSfoPaymentRequest Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->c(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/dz;)V

    return-void
.end method

.method public final b(Lcom/paypal/android/sdk/fe;)V
    .locals 3

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fe;->q()Lcom/paypal/android/sdk/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/al;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->v()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ConsentRequest Error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "paypal.sdk"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/af;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v1, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/dz;)Lcom/paypal/android/sdk/payments/an;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/af;->a(Lcom/paypal/android/sdk/payments/an;)V

    return-void
.end method

.method public final b(Lcom/paypal/android/sdk/ff;)V
    .locals 3

    invoke-virtual {p1}, Lcom/paypal/android/sdk/ff;->q()Lcom/paypal/android/sdk/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/al;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->v()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CreateSfoPaymentRequest Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "paypal.sdk"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/af;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v1, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/dz;)Lcom/paypal/android/sdk/payments/an;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/af;->a(Lcom/paypal/android/sdk/payments/an;)V

    return-void
.end method

.method public final b(Lcom/paypal/android/sdk/fg;)V
    .locals 3

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fg;->q()Lcom/paypal/android/sdk/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/al;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->v()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CreditCardPaymentRequest Error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->c(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/dz;)V

    return-void
.end method

.method public final b(Lcom/paypal/android/sdk/fj;)V
    .locals 3

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fj;->q()Lcom/paypal/android/sdk/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/al;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->v()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetAppInfoRequest Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "paypal.sdk"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/af;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v1, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/dz;)Lcom/paypal/android/sdk/payments/an;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/af;->a(Lcom/paypal/android/sdk/payments/an;)V

    return-void
.end method

.method public final b(Lcom/paypal/android/sdk/fk;)V
    .locals 3

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fk;->q()Lcom/paypal/android/sdk/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/al;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->v()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LoginChallengeRequest Error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "paypal.sdk"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/af;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v1, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/dz;)Lcom/paypal/android/sdk/payments/an;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/af;->a(Lcom/paypal/android/sdk/payments/an;)V

    return-void
.end method

.method public final b(Lcom/paypal/android/sdk/fl;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fl;->q()Lcom/paypal/android/sdk/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/al;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->v()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LoginRequest Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "paypal.sdk"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->i()V

    iget-object v0, p1, Lcom/paypal/android/sdk/fl;->a:Lcom/paypal/android/sdk/ca;

    iget-boolean v2, p1, Lcom/paypal/android/sdk/fl;->b:Z

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ca;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/ej;->f:Lcom/paypal/android/sdk/ej;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fl;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/ej;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->d(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/co;->a()V

    iget-boolean v0, p1, Lcom/paypal/android/sdk/fl;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/cm;

    move-result-object v0

    iget-object v1, p1, Lcom/paypal/android/sdk/fl;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/paypal/android/sdk/cm;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/cm;

    move-result-object v0

    new-instance v1, Lcom/paypal/android/sdk/cy;

    iget-object v2, p1, Lcom/paypal/android/sdk/fl;->i:Ljava/util/Map;

    invoke-direct {v1, v2}, Lcom/paypal/android/sdk/cy;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/paypal/android/sdk/cm;->g:Lcom/paypal/android/sdk/cy;

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/af;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v1, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/dz;)Lcom/paypal/android/sdk/payments/an;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/af;->a(Lcom/paypal/android/sdk/payments/an;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/ej;->g:Lcom/paypal/android/sdk/ej;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fl;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/ej;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Lcom/paypal/android/sdk/fp;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/PayPalService;Lcom/paypal/android/sdk/dz;)V

    return-void
.end method

.method public final b(Lcom/paypal/android/sdk/fr;)V
    .locals 3

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fr;->q()Lcom/paypal/android/sdk/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/al;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/sdk/payments/PayPalService;->v()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TokenizeCreditCardRequest Error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "paypal.sdk"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/ao;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->e(Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/af;->a()V

    return-void
.end method
