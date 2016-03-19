.class Lcom/flurry/sdk/jb$4;
.super Lcom/flurry/sdk/jp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/jb;->i()V
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/iz;

.field final synthetic b:Lcom/flurry/sdk/jb;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/jb;Lcom/flurry/sdk/iz;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/flurry/sdk/jb$4;->b:Lcom/flurry/sdk/jb;

    iput-object p2, p0, Lcom/flurry/sdk/jb$4;->a:Lcom/flurry/sdk/iz;

    invoke-direct {p0}, Lcom/flurry/sdk/jp;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/flurry/sdk/jb$4;->b:Lcom/flurry/sdk/jb;

    iget-object v1, p0, Lcom/flurry/sdk/jb$4;->a:Lcom/flurry/sdk/iz;

    invoke-static {v0, v1}, Lcom/flurry/sdk/jb;->a(Lcom/flurry/sdk/jb;Lcom/flurry/sdk/iz;)V

    .line 313
    return-void
.end method
