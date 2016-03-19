.class public final Lcom/taplytics/bn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/taplytics/sdk/CodeBlockListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/taplytics/sdk/CodeBlockListener;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/taplytics/bn;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/taplytics/bn;->b:Lcom/taplytics/sdk/CodeBlockListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 134
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/bn;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/taplytics/bn;->b:Lcom/taplytics/sdk/CodeBlockListener;

    invoke-virtual {v0, v1, v2}, Lcom/taplytics/fy;->b(Ljava/lang/String;Lcom/taplytics/sdk/CodeBlockListener;)V

    .line 135
    return-void
.end method
