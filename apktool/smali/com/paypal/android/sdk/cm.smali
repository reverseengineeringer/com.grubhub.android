.class public final Lcom/paypal/android/sdk/cm;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/paypal/android/sdk/bQ;

.field public b:Lcom/paypal/android/sdk/cA;

.field public c:Lcom/paypal/android/sdk/bL;

.field public d:Ljava/lang/String;

.field public e:Lcom/paypal/android/sdk/bE;

.field public f:Lcom/paypal/android/sdk/bN;

.field public g:Lcom/paypal/android/sdk/cy;

.field public h:Lcom/paypal/android/sdk/bL;

.field public i:Z

.field public j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/paypal/android/sdk/bQ;

    invoke-direct {v0}, Lcom/paypal/android/sdk/bQ;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/cm;->a:Lcom/paypal/android/sdk/bQ;

    new-instance v0, Lcom/paypal/android/sdk/cA;

    invoke-direct {v0}, Lcom/paypal/android/sdk/cA;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/cm;->b:Lcom/paypal/android/sdk/cA;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/cm;->c:Lcom/paypal/android/sdk/bL;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/cm;->c:Lcom/paypal/android/sdk/bL;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bL;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BackendState(accessTokenState:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/cm;->c:Lcom/paypal/android/sdk/bL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " loginAccessToken:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/cm;->h:Lcom/paypal/android/sdk/bL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
