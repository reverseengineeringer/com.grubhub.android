.class Lcom/flurry/sdk/gn$1;
.super Ljava/io/DataOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/gn;->a(Ljava/io/OutputStream;Lcom/flurry/sdk/gb;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gn;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gn;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/flurry/sdk/gn$1;->a:Lcom/flurry/sdk/gn;

    invoke-direct {p0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method
