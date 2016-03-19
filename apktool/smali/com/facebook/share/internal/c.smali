.class Lcom/facebook/share/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/facebook/share/widget/d;

.field private c:Lcom/facebook/share/internal/d;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/facebook/share/widget/d;Lcom/facebook/share/internal/d;)V
    .locals 0

    .prologue
    .line 1757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1758
    iput-object p1, p0, Lcom/facebook/share/internal/c;->a:Ljava/lang/String;

    .line 1759
    iput-object p2, p0, Lcom/facebook/share/internal/c;->b:Lcom/facebook/share/widget/d;

    .line 1760
    iput-object p3, p0, Lcom/facebook/share/internal/c;->c:Lcom/facebook/share/internal/d;

    .line 1761
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/facebook/share/internal/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/share/internal/c;->b:Lcom/facebook/share/widget/d;

    iget-object v2, p0, Lcom/facebook/share/internal/c;->c:Lcom/facebook/share/internal/d;

    invoke-static {v0, v1, v2}, Lcom/facebook/share/internal/a;->b(Ljava/lang/String;Lcom/facebook/share/widget/d;Lcom/facebook/share/internal/d;)V

    .line 1766
    return-void
.end method
