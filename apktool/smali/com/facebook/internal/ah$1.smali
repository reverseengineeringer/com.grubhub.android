.class Lcom/facebook/internal/ah$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/ah;-><init>(Landroid/content/Context;IIILjava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/ah;


# direct methods
.method constructor <init>(Lcom/facebook/internal/ah;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/facebook/internal/ah$1;->a:Lcom/facebook/internal/ah;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/internal/ah$1;->a:Lcom/facebook/internal/ah;

    invoke-virtual {v0, p1}, Lcom/facebook/internal/ah;->a(Landroid/os/Message;)V

    .line 63
    return-void
.end method
