.class public final Lcom/taplytics/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/taplytics/bf;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 373
    invoke-static {}, Lcom/taplytics/fy;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    invoke-static {}, Lcom/taplytics/im;->a()Lcom/taplytics/im;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/bf;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taplytics/im;->a(Ljava/lang/String;)V

    .line 375
    :cond_0
    return-void
.end method
