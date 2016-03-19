.class Lcom/flurry/sdk/gy$8$1;
.super Lcom/flurry/sdk/jp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/gy$8;->a(Lcom/flurry/sdk/hc;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gy$8;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gy$8;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/flurry/sdk/gy$8$1;->a:Lcom/flurry/sdk/gy$8;

    invoke-direct {p0}, Lcom/flurry/sdk/jp;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 187
    iget-object v0, p0, Lcom/flurry/sdk/gy$8$1;->a:Lcom/flurry/sdk/gy$8;

    iget-object v0, v0, Lcom/flurry/sdk/gy$8;->a:Lcom/flurry/sdk/gy;

    const/4 v1, 0x1

    invoke-static {}, Lcom/flurry/sdk/ha;->a()Lcom/flurry/sdk/ha;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/ha;->d()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/flurry/sdk/gy;->a(Lcom/flurry/sdk/gy;ZJ)V

    .line 188
    return-void
.end method
