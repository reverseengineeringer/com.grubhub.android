.class Lcom/flurry/sdk/jb$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/hw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/jb;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/hw",
        "<",
        "Lcom/flurry/sdk/jd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/jb;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/jb;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/flurry/sdk/jb$1;->a:Lcom/flurry/sdk/jb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/flurry/sdk/hv;)V
    .locals 0

    .prologue
    .line 60
    check-cast p1, Lcom/flurry/sdk/jd;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/jb$1;->a(Lcom/flurry/sdk/jd;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/jd;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/flurry/sdk/jb$1;->a:Lcom/flurry/sdk/jb;

    invoke-static {v0}, Lcom/flurry/sdk/jb;->a(Lcom/flurry/sdk/jb;)V

    .line 64
    return-void
.end method
