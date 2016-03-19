.class Lcom/facebook/share/internal/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1739
    iput-object p1, p0, Lcom/facebook/share/internal/p;->a:Ljava/lang/String;

    .line 1740
    iput-object p2, p0, Lcom/facebook/share/internal/p;->b:Ljava/lang/String;

    .line 1741
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1745
    iget-object v0, p0, Lcom/facebook/share/internal/p;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/share/internal/p;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/share/internal/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1746
    return-void
.end method
