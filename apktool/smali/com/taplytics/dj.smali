.class Lcom/taplytics/dj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taplytics/di;


# direct methods
.method constructor <init>(Lcom/taplytics/di;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/taplytics/dj;->a:Lcom/taplytics/di;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/taplytics/dj;->a:Lcom/taplytics/di;

    iget-object v0, v0, Lcom/taplytics/di;->a:Lcom/taplytics/dg;

    invoke-virtual {v0}, Lcom/taplytics/dg;->t()V

    .line 461
    return-void
.end method
