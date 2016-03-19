.class final Lcom/facebook/share/internal/a$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/d;Lcom/facebook/share/internal/a;Lcom/facebook/h;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/share/internal/d;

.field final synthetic b:Lcom/facebook/share/internal/a;

.field final synthetic c:Lcom/facebook/h;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/d;Lcom/facebook/share/internal/a;Lcom/facebook/h;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/facebook/share/internal/a$6;->a:Lcom/facebook/share/internal/d;

    iput-object p2, p0, Lcom/facebook/share/internal/a$6;->b:Lcom/facebook/share/internal/a;

    iput-object p3, p0, Lcom/facebook/share/internal/a$6;->c:Lcom/facebook/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 335
    iget-object v0, p0, Lcom/facebook/share/internal/a$6;->a:Lcom/facebook/share/internal/d;

    iget-object v1, p0, Lcom/facebook/share/internal/a$6;->b:Lcom/facebook/share/internal/a;

    iget-object v2, p0, Lcom/facebook/share/internal/a$6;->c:Lcom/facebook/h;

    invoke-interface {v0, v1, v2}, Lcom/facebook/share/internal/d;->a(Lcom/facebook/share/internal/a;Lcom/facebook/h;)V

    .line 336
    return-void
.end method
