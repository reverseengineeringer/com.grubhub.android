.class Lcom/flurry/sdk/im$3;
.super Lcom/flurry/sdk/jp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/im;-><init>()V
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/im;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/im;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/flurry/sdk/im$3;->a:Lcom/flurry/sdk/im;

    invoke-direct {p0}, Lcom/flurry/sdk/jp;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/flurry/sdk/im$3;->a:Lcom/flurry/sdk/im;

    iget-object v1, p0, Lcom/flurry/sdk/im$3;->a:Lcom/flurry/sdk/im;

    invoke-static {v1}, Lcom/flurry/sdk/im;->b(Lcom/flurry/sdk/im;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/im;->a(Lcom/flurry/sdk/im;Ljava/util/List;)V

    .line 64
    iget-object v0, p0, Lcom/flurry/sdk/im$3;->a:Lcom/flurry/sdk/im;

    invoke-static {v0}, Lcom/flurry/sdk/im;->a(Lcom/flurry/sdk/im;)V

    .line 65
    return-void
.end method
