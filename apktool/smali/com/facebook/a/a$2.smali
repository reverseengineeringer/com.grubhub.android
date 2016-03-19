.class final Lcom/facebook/a/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/a;->h()V
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 694
    invoke-static {}, Lcom/facebook/a/a;->a()Lcom/facebook/a/f;

    move-result-object v0

    sget-object v1, Lcom/facebook/a/f;->EXPLICIT_ONLY:Lcom/facebook/a/f;

    if-eq v0, v1, :cond_0

    .line 695
    sget-object v0, Lcom/facebook/a/g;->TIMER:Lcom/facebook/a/g;

    invoke-static {v0}, Lcom/facebook/a/a;->a(Lcom/facebook/a/g;)V

    .line 697
    :cond_0
    return-void
.end method
