.class Lcom/flurry/sdk/hx$1;
.super Lcom/flurry/sdk/jp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/hx;->a(Lcom/flurry/sdk/hv;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/hw;

.field final synthetic b:Lcom/flurry/sdk/hv;

.field final synthetic c:Lcom/flurry/sdk/hx;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/hx;Lcom/flurry/sdk/hw;Lcom/flurry/sdk/hv;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/flurry/sdk/hx$1;->c:Lcom/flurry/sdk/hx;

    iput-object p2, p0, Lcom/flurry/sdk/hx$1;->a:Lcom/flurry/sdk/hw;

    iput-object p3, p0, Lcom/flurry/sdk/hx$1;->b:Lcom/flurry/sdk/hv;

    invoke-direct {p0}, Lcom/flurry/sdk/jp;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/flurry/sdk/hx$1;->a:Lcom/flurry/sdk/hw;

    iget-object v1, p0, Lcom/flurry/sdk/hx$1;->b:Lcom/flurry/sdk/hv;

    invoke-interface {v0, v1}, Lcom/flurry/sdk/hw;->a(Lcom/flurry/sdk/hv;)V

    .line 139
    return-void
.end method
