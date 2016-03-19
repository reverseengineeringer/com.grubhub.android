.class Lcom/flurry/sdk/gy$5$1;
.super Lcom/flurry/sdk/jp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/gy$5;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gy$5;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gy$5;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/flurry/sdk/gy$5$1;->a:Lcom/flurry/sdk/gy$5;

    invoke-direct {p0}, Lcom/flurry/sdk/jp;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 348
    invoke-static {}, Lcom/flurry/sdk/fu;->a()Lcom/flurry/sdk/fu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/fu;->e()Lcom/flurry/sdk/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gq;->d()V

    .line 349
    return-void
.end method
