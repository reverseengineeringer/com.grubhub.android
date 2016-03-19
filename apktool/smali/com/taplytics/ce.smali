.class Lcom/taplytics/ce;
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
    .line 137
    iput-object p1, p0, Lcom/taplytics/ce;->a:Lcom/taplytics/cc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/taplytics/ce;->a:Lcom/taplytics/cc;

    invoke-static {v0}, Lcom/taplytics/cc;->a(Lcom/taplytics/cc;)Lcom/taplytics/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/bw;->a()V

    .line 144
    invoke-static {}, Lcom/taplytics/cs;->a()Lcom/taplytics/cs;

    move-result-object v0

    new-instance v1, Lcom/taplytics/cf;

    invoke-direct {v1, p0}, Lcom/taplytics/cf;-><init>(Lcom/taplytics/ce;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/cs;->a(Lcom/taplytics/gi;)V

    .line 159
    return-void
.end method
