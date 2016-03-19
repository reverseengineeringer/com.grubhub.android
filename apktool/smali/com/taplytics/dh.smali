.class Lcom/taplytics/dh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taplytics/dg;


# direct methods
.method constructor <init>(Lcom/taplytics/dg;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/taplytics/dh;->a:Lcom/taplytics/dg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/taplytics/dh;->a:Lcom/taplytics/dg;

    invoke-static {v0}, Lcom/taplytics/dg;->e(Lcom/taplytics/dg;)V

    .line 398
    return-void
.end method
