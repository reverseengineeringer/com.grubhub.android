.class Lcom/flurry/sdk/gm$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/hw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gm;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/hw",
        "<",
        "Lcom/flurry/sdk/hg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gm;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gm;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/flurry/sdk/gm$8;->a:Lcom/flurry/sdk/gm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/hg;)V
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p1, Lcom/flurry/sdk/hg;->a:Z

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/flurry/sdk/gm$8;->a:Lcom/flurry/sdk/gm;

    invoke-static {v0}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/gm;)V

    .line 125
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Lcom/flurry/sdk/hv;)V
    .locals 0

    .prologue
    .line 119
    check-cast p1, Lcom/flurry/sdk/hg;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/gm$8;->a(Lcom/flurry/sdk/hg;)V

    return-void
.end method
