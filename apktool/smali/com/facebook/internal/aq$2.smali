.class Lcom/facebook/internal/aq$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/aq;->e()V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/aq;


# direct methods
.method constructor <init>(Lcom/facebook/internal/aq;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/facebook/internal/aq$2;->a:Lcom/facebook/internal/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/facebook/internal/aq$2;->a:Lcom/facebook/internal/aq;

    invoke-virtual {v0}, Lcom/facebook/internal/aq;->cancel()V

    .line 375
    return-void
.end method
