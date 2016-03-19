.class Lcom/flurry/sdk/ia$3;
.super Lcom/flurry/sdk/jp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ia;->a(Lcom/flurry/sdk/jq;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/jq;

.field final synthetic b:Lcom/flurry/sdk/ia;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ia;Lcom/flurry/sdk/jq;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/flurry/sdk/ia$3;->b:Lcom/flurry/sdk/ia;

    iput-object p2, p0, Lcom/flurry/sdk/ia$3;->a:Lcom/flurry/sdk/jq;

    invoke-direct {p0}, Lcom/flurry/sdk/jp;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/flurry/sdk/ia$3;->a:Lcom/flurry/sdk/jq;

    invoke-virtual {v0}, Lcom/flurry/sdk/jq;->i()V

    .line 176
    return-void
.end method
