.class Lcom/flurry/sdk/ip$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/iy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ip;->b(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/iy",
        "<",
        "Lcom/flurry/sdk/io;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ip;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ip;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/flurry/sdk/ip$2;->a:Lcom/flurry/sdk/ip;

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
            "Lcom/flurry/sdk/io;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    new-instance v0, Lcom/flurry/sdk/io$a;

    invoke-direct {v0}, Lcom/flurry/sdk/io$a;-><init>()V

    return-object v0
.end method
