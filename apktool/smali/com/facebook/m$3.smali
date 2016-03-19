.class final Lcom/facebook/m$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/m;->a(Landroid/content/Context;Lcom/facebook/n;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/n;


# direct methods
.method constructor <init>(Lcom/facebook/n;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/facebook/m$3;->a:Lcom/facebook/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 223
    invoke-static {}, Lcom/facebook/c;->a()Lcom/facebook/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/c;->c()Z

    .line 224
    invoke-static {}, Lcom/facebook/af;->a()Lcom/facebook/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/af;->c()Z

    .line 225
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    invoke-static {}, Lcom/facebook/Profile;->a()Lcom/facebook/Profile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 229
    invoke-static {}, Lcom/facebook/Profile;->b()V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/facebook/m$3;->a:Lcom/facebook/n;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/facebook/m$3;->a:Lcom/facebook/n;

    invoke-interface {v0}, Lcom/facebook/n;->a()V

    .line 235
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/facebook/m$3;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
