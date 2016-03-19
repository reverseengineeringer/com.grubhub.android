.class public final Lcom/taplytics/bs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taplytics/sdk/a;


# direct methods
.method public constructor <init>(Lcom/taplytics/sdk/a;)V
    .locals 0

    .prologue
    .line 561
    iput-object p1, p0, Lcom/taplytics/bs;->a:Lcom/taplytics/sdk/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 564
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/bs;->a:Lcom/taplytics/sdk/a;

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->a(Lcom/taplytics/sdk/a;)V

    .line 565
    return-void
.end method
