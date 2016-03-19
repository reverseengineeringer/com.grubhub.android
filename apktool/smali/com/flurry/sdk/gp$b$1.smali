.class Lcom/flurry/sdk/gp$b$1;
.super Ljava/io/DataInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/gp$b;->a(Ljava/io/InputStream;)Lcom/flurry/sdk/gp;
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gp$b;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gp$b;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/flurry/sdk/gp$b$1;->a:Lcom/flurry/sdk/gp$b;

    invoke-direct {p0, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method
