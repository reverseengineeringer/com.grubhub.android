.class Lcom/flurry/sdk/iq$a$1;
.super Ljava/io/DataOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/iq$a;->a(Ljava/io/OutputStream;Lcom/flurry/sdk/iq;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/iq$a;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/iq$a;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/flurry/sdk/iq$a$1;->a:Lcom/flurry/sdk/iq$a;

    invoke-direct {p0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method
