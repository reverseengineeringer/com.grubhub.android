.class final Lcom/facebook/internal/al$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/al;->a(Ljava/lang/String;Lcom/facebook/internal/ao;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/ao;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/internal/ao;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1266
    iput-object p1, p0, Lcom/facebook/internal/al$2;->a:Lcom/facebook/internal/ao;

    iput-object p2, p0, Lcom/facebook/internal/al$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/aa;)V
    .locals 2

    .prologue
    .line 1269
    invoke-virtual {p1}, Lcom/facebook/aa;->a()Lcom/facebook/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1270
    iget-object v0, p0, Lcom/facebook/internal/al$2;->a:Lcom/facebook/internal/ao;

    invoke-virtual {p1}, Lcom/facebook/aa;->a()Lcom/facebook/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/j;->f()Lcom/facebook/h;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/internal/ao;->a(Lcom/facebook/h;)V

    .line 1277
    :goto_0
    return-void

    .line 1272
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/al$2;->b:Ljava/lang/String;

    .line 1274
    invoke-virtual {p1}, Lcom/facebook/aa;->b()Lorg/json/JSONObject;

    move-result-object v1

    .line 1272
    invoke-static {v0, v1}, Lcom/facebook/internal/aj;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1275
    iget-object v0, p0, Lcom/facebook/internal/al$2;->a:Lcom/facebook/internal/ao;

    invoke-virtual {p1}, Lcom/facebook/aa;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/internal/ao;->a(Lorg/json/JSONObject;)V

    goto :goto_0
.end method
