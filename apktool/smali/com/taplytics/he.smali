.class Lcom/taplytics/he;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taplytics/gq;


# direct methods
.method constructor <init>(Lcom/taplytics/gq;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/taplytics/he;->a:Lcom/taplytics/gq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/taplytics/he;->a:Lcom/taplytics/gq;

    invoke-static {v0}, Lcom/taplytics/gq;->a(Lcom/taplytics/gq;)V

    .line 286
    return-void
.end method
