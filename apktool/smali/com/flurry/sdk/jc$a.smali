.class Lcom/flurry/sdk/jc$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/flurry/sdk/jc;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/jc;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/flurry/sdk/jc$a;->a:Lcom/flurry/sdk/jc;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/flurry/sdk/jc$a;->a:Lcom/flurry/sdk/jc;

    invoke-virtual {v0}, Lcom/flurry/sdk/jc;->a()V

    .line 22
    new-instance v0, Lcom/flurry/sdk/jd;

    invoke-direct {v0}, Lcom/flurry/sdk/jd;-><init>()V

    .line 23
    invoke-virtual {v0}, Lcom/flurry/sdk/jd;->b()V

    .line 24
    return-void
.end method
