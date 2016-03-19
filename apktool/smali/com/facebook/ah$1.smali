.class Lcom/facebook/ah$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ah;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/z;

.field final synthetic b:Lcom/facebook/ah;


# direct methods
.method constructor <init>(Lcom/facebook/ah;Lcom/facebook/z;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/facebook/ah$1;->b:Lcom/facebook/ah;

    iput-object p2, p0, Lcom/facebook/ah$1;->a:Lcom/facebook/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/ah$1;->a:Lcom/facebook/z;

    iget-object v1, p0, Lcom/facebook/ah$1;->b:Lcom/facebook/ah;

    .line 80
    invoke-static {v1}, Lcom/facebook/ah;->a(Lcom/facebook/ah;)Lcom/facebook/x;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ah$1;->b:Lcom/facebook/ah;

    .line 81
    invoke-static {v2}, Lcom/facebook/ah;->b(Lcom/facebook/ah;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/facebook/ah$1;->b:Lcom/facebook/ah;

    .line 82
    invoke-static {v4}, Lcom/facebook/ah;->c(Lcom/facebook/ah;)J

    move-result-wide v4

    .line 79
    invoke-interface/range {v0 .. v5}, Lcom/facebook/z;->a(Lcom/facebook/x;JJ)V

    .line 83
    return-void
.end method
