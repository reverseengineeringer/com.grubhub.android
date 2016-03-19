.class final Lcom/facebook/a/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/a;->a(Landroid/content/Context;Lcom/facebook/a/d;Lcom/facebook/a/b;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/facebook/a/b;

.field final synthetic c:Lcom/facebook/a/d;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/facebook/a/b;Lcom/facebook/a/d;)V
    .locals 0

    .prologue
    .line 747
    iput-object p1, p0, Lcom/facebook/a/a$4;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/a/a$4;->b:Lcom/facebook/a/b;

    iput-object p3, p0, Lcom/facebook/a/a$4;->c:Lcom/facebook/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 750
    iget-object v0, p0, Lcom/facebook/a/a$4;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/a/a$4;->b:Lcom/facebook/a/b;

    invoke-static {v0, v1}, Lcom/facebook/a/a;->a(Landroid/content/Context;Lcom/facebook/a/b;)Lcom/facebook/a/l;

    move-result-object v0

    .line 751
    iget-object v1, p0, Lcom/facebook/a/a$4;->c:Lcom/facebook/a/d;

    invoke-virtual {v0, v1}, Lcom/facebook/a/l;->a(Lcom/facebook/a/d;)V

    .line 752
    invoke-static {}, Lcom/facebook/a/a;->d()V

    .line 753
    return-void
.end method
