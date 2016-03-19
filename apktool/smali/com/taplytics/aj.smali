.class Lcom/taplytics/aj;
.super Lcom/taplytics/h;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/taplytics/y;


# direct methods
.method constructor <init>(Lcom/taplytics/y;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/taplytics/aj;->a:Lcom/taplytics/y;

    invoke-direct {p0}, Lcom/taplytics/h;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/taplytics/aj;->a:Lcom/taplytics/y;

    iget-object v0, v0, Lcom/taplytics/y;->b:Lcom/taplytics/n;

    invoke-static {v0}, Lcom/taplytics/n;->c(Lcom/taplytics/n;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 212
    return-void
.end method
