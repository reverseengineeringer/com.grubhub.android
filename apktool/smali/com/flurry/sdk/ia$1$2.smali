.class Lcom/flurry/sdk/ia$1$2;
.super Lcom/flurry/sdk/jp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ia$1;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/jq;

.field final synthetic b:Lcom/flurry/sdk/ia$1;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ia$1;Lcom/flurry/sdk/jq;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/flurry/sdk/ia$1$2;->b:Lcom/flurry/sdk/ia$1;

    iput-object p2, p0, Lcom/flurry/sdk/ia$1$2;->a:Lcom/flurry/sdk/jq;

    invoke-direct {p0}, Lcom/flurry/sdk/jp;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/flurry/sdk/ia$1$2;->a:Lcom/flurry/sdk/jq;

    invoke-virtual {v0}, Lcom/flurry/sdk/jq;->l()V

    .line 87
    return-void
.end method
