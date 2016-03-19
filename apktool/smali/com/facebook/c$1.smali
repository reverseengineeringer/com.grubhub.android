.class Lcom/facebook/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/c;->e()V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/c;


# direct methods
.method constructor <init>(Lcom/facebook/c;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/facebook/c$1;->a:Lcom/facebook/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/facebook/c$1;->a:Lcom/facebook/c;

    invoke-static {v0}, Lcom/facebook/c;->a(Lcom/facebook/c;)V

    .line 206
    return-void
.end method
