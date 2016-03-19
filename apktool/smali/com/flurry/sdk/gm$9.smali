.class Lcom/flurry/sdk/gm$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/iy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/gm;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/iy",
        "<",
        "Lcom/flurry/sdk/gk;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gm;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gm;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/flurry/sdk/gm$9;->a:Lcom/flurry/sdk/gm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/flurry/sdk/iv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/flurry/sdk/iv",
            "<",
            "Lcom/flurry/sdk/gk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    new-instance v0, Lcom/flurry/sdk/gk$a;

    invoke-direct {v0}, Lcom/flurry/sdk/gk$a;-><init>()V

    return-object v0
.end method
