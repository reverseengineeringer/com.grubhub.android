.class Lcom/flurry/sdk/in$4;
.super Lcom/flurry/sdk/jp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/in;->a(Lcom/flurry/sdk/in$a;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/in$a;

.field final synthetic b:Lcom/flurry/sdk/in;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/in;Lcom/flurry/sdk/in$a;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/flurry/sdk/in$4;->b:Lcom/flurry/sdk/in;

    iput-object p2, p0, Lcom/flurry/sdk/in$4;->a:Lcom/flurry/sdk/in$a;

    invoke-direct {p0}, Lcom/flurry/sdk/jp;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/flurry/sdk/in$4;->b:Lcom/flurry/sdk/in;

    invoke-virtual {v0}, Lcom/flurry/sdk/in;->g()V

    .line 130
    iget-object v0, p0, Lcom/flurry/sdk/in$4;->a:Lcom/flurry/sdk/in$a;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/flurry/sdk/in$4;->a:Lcom/flurry/sdk/in$a;

    invoke-interface {v0}, Lcom/flurry/sdk/in$a;->a()V

    .line 133
    :cond_0
    return-void
.end method
