.class Lcom/flurry/sdk/gy$6;
.super Lcom/flurry/sdk/jp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/gy;->a(J)V
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/flurry/sdk/gy;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gy;J)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/flurry/sdk/gy$6;->b:Lcom/flurry/sdk/gy;

    iput-wide p2, p0, Lcom/flurry/sdk/gy$6;->a:J

    invoke-direct {p0}, Lcom/flurry/sdk/jp;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 360
    iget-object v0, p0, Lcom/flurry/sdk/gy$6;->b:Lcom/flurry/sdk/gy;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/flurry/sdk/gy$6;->a:J

    invoke-static {v0, v1, v2, v3}, Lcom/flurry/sdk/gy;->a(Lcom/flurry/sdk/gy;ZJ)V

    .line 361
    return-void
.end method
