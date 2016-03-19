.class Lcom/flurry/sdk/iu$2;
.super Ljava/io/DataInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/iu;->a(Ljava/io/InputStream;)Ljava/util/List;
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/iu;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/iu;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/flurry/sdk/iu$2;->a:Lcom/flurry/sdk/iu;

    invoke-direct {p0, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method
