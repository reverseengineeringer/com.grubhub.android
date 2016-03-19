.class Lcom/flurry/sdk/gm$5;
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
        "Lcom/flurry/sdk/hc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gm;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gm;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/flurry/sdk/gm$5;->a:Lcom/flurry/sdk/gm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/hc;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/flurry/sdk/gm$5;->a:Lcom/flurry/sdk/gm;

    invoke-static {v0}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/gm;)V

    .line 84
    return-void
.end method

.method public bridge synthetic a(Lcom/flurry/sdk/hv;)V
    .locals 0

    .prologue
    .line 80
    check-cast p1, Lcom/flurry/sdk/hc;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/gm$5;->a(Lcom/flurry/sdk/hc;)V

    return-void
.end method
