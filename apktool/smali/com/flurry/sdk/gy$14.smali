.class Lcom/flurry/sdk/gy$14;
.super Lcom/flurry/sdk/jp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/gy;->a(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gy;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gy;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/flurry/sdk/gy$14;->a:Lcom/flurry/sdk/gy;

    invoke-direct {p0}, Lcom/flurry/sdk/jp;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 271
    invoke-static {}, Lcom/flurry/sdk/fu;->a()Lcom/flurry/sdk/fu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/fu;->e()Lcom/flurry/sdk/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gq;->e()V

    .line 272
    return-void
.end method
