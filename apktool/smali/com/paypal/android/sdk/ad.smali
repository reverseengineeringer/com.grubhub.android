.class public Lcom/paypal/android/sdk/ad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/ea;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/paypal/android/sdk/ck;

.field private c:Lcom/paypal/android/sdk/ae;

.field private d:Lcom/paypal/android/sdk/ac;

.field private final e:Lcom/paypal/android/sdk/ai;

.field private f:Lcom/paypal/android/sdk/dv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/ad;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/ad;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/paypal/android/sdk/ck;Lcom/paypal/android/sdk/ac;Lcom/paypal/android/sdk/ef;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/paypal/android/sdk/ad;->b:Lcom/paypal/android/sdk/ck;

    iput-object p2, p0, Lcom/paypal/android/sdk/ad;->d:Lcom/paypal/android/sdk/ac;

    new-instance v0, Lcom/paypal/android/sdk/ai;

    invoke-direct {v0}, Lcom/paypal/android/sdk/ai;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/ad;->e:Lcom/paypal/android/sdk/ai;

    new-instance v0, Lcom/paypal/android/sdk/ae;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/ae;-><init>(Lcom/paypal/android/sdk/ad;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/ad;->c:Lcom/paypal/android/sdk/ae;

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/ad;Lcom/paypal/android/sdk/dz;)V
    .locals 4

    iget-object v0, p0, Lcom/paypal/android/sdk/ad;->e:Lcom/paypal/android/sdk/ai;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v2, v3}, Lcom/paypal/android/sdk/ai;->a(Lcom/paypal/android/sdk/dz;J)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/paypal/android/sdk/dx;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "environment:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/ad;->d:Lcom/paypal/android/sdk/ac;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " environment.getEndpoints():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/ad;->d:Lcom/paypal/android/sdk/ac;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/ac;->c()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/ad;->d:Lcom/paypal/android/sdk/ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/ad;->d:Lcom/paypal/android/sdk/ac;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ac;->c()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/ad;->d:Lcom/paypal/android/sdk/ac;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ac;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/paypal/android/sdk/dx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "returning:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/ad;->f:Lcom/paypal/android/sdk/dv;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dv;->a()V

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/ak;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/ad;->e:Lcom/paypal/android/sdk/ai;

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/ai;->a(Lcom/paypal/android/sdk/ak;)V

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/dv;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/ad;->f:Lcom/paypal/android/sdk/dv;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/paypal/android/sdk/ad;->f:Lcom/paypal/android/sdk/dv;

    return-void
.end method

.method public final a(Lcom/paypal/android/sdk/dz;)V
    .locals 2

    invoke-virtual {p1}, Lcom/paypal/android/sdk/dz;->m()V

    invoke-static {}, Lcom/paypal/android/sdk/bf;->a()Lcom/paypal/android/sdk/bf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bf;->f()V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/dz;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/paypal/android/sdk/ad;->c:Lcom/paypal/android/sdk/ae;

    invoke-virtual {v1, v0}, Lcom/paypal/android/sdk/ae;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/ad;->e:Lcom/paypal/android/sdk/ai;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ai;->a()V

    return-void
.end method

.method public final b(Lcom/paypal/android/sdk/dz;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/ad;->f:Lcom/paypal/android/sdk/dv;

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/dv;->a(Lcom/paypal/android/sdk/dz;)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/ad;->d:Lcom/paypal/android/sdk/ac;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ac;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/paypal/android/sdk/ck;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/ad;->b:Lcom/paypal/android/sdk/ck;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/ad;->d:Lcom/paypal/android/sdk/ac;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ac;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
