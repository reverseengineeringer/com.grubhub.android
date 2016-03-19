.class Lcom/flurry/sdk/ia$2$1;
.super Lcom/flurry/sdk/jp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ia$2;->rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/jq;

.field final synthetic b:Lcom/flurry/sdk/ia$2;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ia$2;Lcom/flurry/sdk/jq;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/flurry/sdk/ia$2$1;->b:Lcom/flurry/sdk/ia$2;

    iput-object p2, p0, Lcom/flurry/sdk/ia$2$1;->a:Lcom/flurry/sdk/jq;

    invoke-direct {p0}, Lcom/flurry/sdk/jp;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/flurry/sdk/ia$2$1;->a:Lcom/flurry/sdk/jq;

    invoke-virtual {v0}, Lcom/flurry/sdk/jq;->m()V

    .line 127
    return-void
.end method
