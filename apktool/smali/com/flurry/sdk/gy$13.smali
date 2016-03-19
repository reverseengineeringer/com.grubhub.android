.class Lcom/flurry/sdk/gy$13;
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
    .line 255
    iput-object p1, p0, Lcom/flurry/sdk/gy$13;->a:Lcom/flurry/sdk/gy;

    invoke-direct {p0}, Lcom/flurry/sdk/jp;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 258
    iget-object v0, p0, Lcom/flurry/sdk/gy$13;->a:Lcom/flurry/sdk/gy;

    const/4 v1, 0x1

    invoke-static {}, Lcom/flurry/sdk/ha;->a()Lcom/flurry/sdk/ha;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/ha;->d()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/flurry/sdk/gy;->a(Lcom/flurry/sdk/gy;ZJ)V

    .line 259
    return-void
.end method
