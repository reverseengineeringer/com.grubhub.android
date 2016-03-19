.class Lcom/flurry/sdk/iq$a$2;
.super Ljava/io/DataInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/iq$a;->a(Ljava/io/InputStream;)Lcom/flurry/sdk/iq;
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/iq$a;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/iq$a;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/flurry/sdk/iq$a$2;->a:Lcom/flurry/sdk/iq$a;

    invoke-direct {p0, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method
