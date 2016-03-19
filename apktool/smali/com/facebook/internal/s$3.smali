.class Lcom/facebook/internal/s$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/s;->c()V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/s;


# direct methods
.method constructor <init>(Lcom/facebook/internal/s;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/facebook/internal/s$3;->a:Lcom/facebook/internal/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/facebook/internal/s$3;->a:Lcom/facebook/internal/s;

    invoke-static {v0}, Lcom/facebook/internal/s;->b(Lcom/facebook/internal/s;)V

    .line 306
    return-void
.end method
