.class Lcom/flurry/sdk/gv$2;
.super Lcom/flurry/sdk/jp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/gv;->a(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/flurry/sdk/gv;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gv;I)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/flurry/sdk/gv$2;->b:Lcom/flurry/sdk/gv;

    iput p2, p0, Lcom/flurry/sdk/gv$2;->a:I

    invoke-direct {p0}, Lcom/flurry/sdk/jp;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 168
    iget v0, p0, Lcom/flurry/sdk/gv$2;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 169
    invoke-static {}, Lcom/flurry/sdk/fu;->a()Lcom/flurry/sdk/fu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/fu;->f()V

    .line 171
    :cond_0
    return-void
.end method
