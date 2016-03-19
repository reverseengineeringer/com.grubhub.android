.class Lcom/taplytics/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taplytics/c;


# direct methods
.method constructor <init>(Lcom/taplytics/c;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/taplytics/d;->a:Lcom/taplytics/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/taplytics/d;->a:Lcom/taplytics/c;

    invoke-static {v0}, Lcom/taplytics/c;->a(Lcom/taplytics/c;)Lcom/taplytics/c;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-virtual {v0, v1}, Lcom/taplytics/c;->a(Ljava/lang/Exception;)V

    .line 150
    return-void
.end method
