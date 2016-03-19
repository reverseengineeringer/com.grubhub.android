.class Lcom/facebook/ap$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ap;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/u;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lcom/facebook/ap;


# direct methods
.method constructor <init>(Lcom/facebook/ap;Lcom/facebook/u;JJ)V
    .locals 1

    .prologue
    .line 72
    iput-object p1, p0, Lcom/facebook/ap$1;->d:Lcom/facebook/ap;

    iput-object p2, p0, Lcom/facebook/ap$1;->a:Lcom/facebook/u;

    iput-wide p3, p0, Lcom/facebook/ap$1;->b:J

    iput-wide p5, p0, Lcom/facebook/ap$1;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 75
    iget-object v0, p0, Lcom/facebook/ap$1;->a:Lcom/facebook/u;

    iget-wide v2, p0, Lcom/facebook/ap$1;->b:J

    iget-wide v4, p0, Lcom/facebook/ap$1;->c:J

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/facebook/u;->a(JJ)V

    .line 76
    return-void
.end method
