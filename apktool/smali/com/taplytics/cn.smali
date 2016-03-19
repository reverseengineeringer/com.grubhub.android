.class Lcom/taplytics/cn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taplytics/eq;

.field final synthetic b:Lcom/taplytics/cl;


# direct methods
.method constructor <init>(Lcom/taplytics/cl;Lcom/taplytics/eq;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/taplytics/cn;->b:Lcom/taplytics/cl;

    iput-object p2, p0, Lcom/taplytics/cn;->a:Lcom/taplytics/eq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/taplytics/cn;->b:Lcom/taplytics/cl;

    iget-object v1, p0, Lcom/taplytics/cn;->a:Lcom/taplytics/eq;

    invoke-static {v0, v1}, Lcom/taplytics/cl;->a(Lcom/taplytics/cl;Lcom/taplytics/eq;)V

    .line 149
    return-void
.end method
