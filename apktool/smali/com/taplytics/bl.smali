.class public final Lcom/taplytics/bl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lcom/taplytics/bl;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/taplytics/bl;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 493
    invoke-static {}, Lcom/taplytics/dg;->b()Lcom/taplytics/dg;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/bl;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/taplytics/bl;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/taplytics/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 494
    return-void
.end method
