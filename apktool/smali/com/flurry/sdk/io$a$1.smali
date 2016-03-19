.class Lcom/flurry/sdk/io$a$1;
.super Ljava/io/DataOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/io$a;->a(Ljava/io/OutputStream;Lcom/flurry/sdk/io;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/io$a;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/io$a;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/flurry/sdk/io$a$1;->a:Lcom/flurry/sdk/io$a;

    invoke-direct {p0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method
