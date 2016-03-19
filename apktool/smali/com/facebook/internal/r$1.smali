.class Lcom/facebook/internal/r$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/r;->cancel()V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/r;


# direct methods
.method constructor <init>(Lcom/facebook/internal/r;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/facebook/internal/r$1;->a:Lcom/facebook/internal/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/facebook/internal/r$1;->a:Lcom/facebook/internal/r;

    invoke-static {v0}, Lcom/facebook/internal/r;->a(Lcom/facebook/internal/r;)V

    .line 145
    return-void
.end method
