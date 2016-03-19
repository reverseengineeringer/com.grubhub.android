.class Lcom/taplytics/cj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taplytics/cc;


# direct methods
.method constructor <init>(Lcom/taplytics/cc;)V
    .locals 0

    .prologue
    .line 833
    iput-object p1, p0, Lcom/taplytics/cj;->a:Lcom/taplytics/cc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 837
    iget-object v0, p0, Lcom/taplytics/cj;->a:Lcom/taplytics/cc;

    invoke-static {v0}, Lcom/taplytics/cc;->a(Lcom/taplytics/cc;)Lcom/taplytics/bw;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/taplytics/bw;->b(I)V

    .line 838
    return-void
.end method
