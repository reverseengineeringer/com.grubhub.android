.class final Lcom/facebook/a/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/a/j;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1475
    invoke-static {}, Lcom/facebook/a/a;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/a/j;->a(Landroid/content/Context;)V

    .line 1476
    return-void
.end method
