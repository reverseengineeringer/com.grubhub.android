.class Lcom/taplytics/jb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taplytics/ja;


# direct methods
.method constructor <init>(Lcom/taplytics/ja;)V
    .locals 0

    .prologue
    .line 621
    iput-object p1, p0, Lcom/taplytics/jb;->a:Lcom/taplytics/ja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/taplytics/jb;->a:Lcom/taplytics/ja;

    iget-object v0, v0, Lcom/taplytics/ja;->b:Lcom/taplytics/im;

    iget-object v1, p0, Lcom/taplytics/jb;->a:Lcom/taplytics/ja;

    iget-object v1, v1, Lcom/taplytics/ja;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taplytics/im;->a(Ljava/lang/String;)V

    .line 625
    return-void
.end method
