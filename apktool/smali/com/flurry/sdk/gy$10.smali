.class Lcom/flurry/sdk/gy$10;
.super Lcom/flurry/sdk/jp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/gy;->a(Lcom/flurry/sdk/iz;Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gy;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gy;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/flurry/sdk/gy$10;->a:Lcom/flurry/sdk/gy;

    invoke-direct {p0}, Lcom/flurry/sdk/jp;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 235
    invoke-static {}, Lcom/flurry/sdk/fu;->a()Lcom/flurry/sdk/fu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/fu;->c()Lcom/flurry/sdk/gm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gm;->b()V

    .line 236
    return-void
.end method
