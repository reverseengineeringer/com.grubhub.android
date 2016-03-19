.class Lcom/taplytics/gs;
.super Lcom/taplytics/h;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/taplytics/gq;


# direct methods
.method constructor <init>(Lcom/taplytics/gq;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/taplytics/gs;->a:Lcom/taplytics/gq;

    invoke-direct {p0}, Lcom/taplytics/h;-><init>()V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/taplytics/gs;->a:Lcom/taplytics/gq;

    invoke-virtual {v0}, Lcom/taplytics/gq;->j()V

    .line 276
    invoke-super {p0}, Lcom/taplytics/h;->e()V

    .line 277
    return-void
.end method
