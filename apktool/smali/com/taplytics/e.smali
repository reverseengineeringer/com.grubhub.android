.class Lcom/taplytics/e;
.super Lcom/taplytics/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taplytics/h",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/ScheduledFuture;

.field final synthetic b:Lcom/taplytics/c;


# direct methods
.method constructor <init>(Lcom/taplytics/c;Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/taplytics/e;->b:Lcom/taplytics/c;

    iput-object p2, p0, Lcom/taplytics/e;->a:Ljava/util/concurrent/ScheduledFuture;

    invoke-direct {p0}, Lcom/taplytics/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/taplytics/e;->a:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 157
    return-void
.end method
