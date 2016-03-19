.class Lcom/flurry/sdk/gy$2;
.super Lcom/flurry/sdk/jp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/gy;->b(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/flurry/sdk/gy;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gy;J)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/flurry/sdk/gy$2;->b:Lcom/flurry/sdk/gy;

    iput-wide p2, p0, Lcom/flurry/sdk/gy$2;->a:J

    invoke-direct {p0}, Lcom/flurry/sdk/jp;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 300
    invoke-static {}, Lcom/flurry/sdk/fu;->a()Lcom/flurry/sdk/fu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/fu;->c()Lcom/flurry/sdk/gm;

    move-result-object v0

    iget-wide v2, p0, Lcom/flurry/sdk/gy$2;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/flurry/sdk/gm;->a(J)V

    .line 301
    return-void
.end method
