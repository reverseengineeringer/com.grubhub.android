.class public final Lcom/taplytics/bm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taplytics/sdk/TaplyticsPushTokenListener;


# direct methods
.method public constructor <init>(Lcom/taplytics/sdk/TaplyticsPushTokenListener;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/taplytics/bm;->a:Lcom/taplytics/sdk/TaplyticsPushTokenListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 507
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/bm;->a:Lcom/taplytics/sdk/TaplyticsPushTokenListener;

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->a(Lcom/taplytics/sdk/TaplyticsPushTokenListener;)V

    .line 508
    return-void
.end method
