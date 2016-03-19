.class Lcom/flurry/sdk/iu$1;
.super Ljava/io/DataOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/iu;->a(Ljava/io/OutputStream;Ljava/util/List;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/iu;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/iu;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/flurry/sdk/iu$1;->a:Lcom/flurry/sdk/iu;

    invoke-direct {p0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method
