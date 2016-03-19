.class Lcom/facebook/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/c;->g()V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/d;

.field final synthetic b:Lcom/facebook/c;


# direct methods
.method constructor <init>(Lcom/facebook/c;Lcom/facebook/d;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/facebook/c$3;->b:Lcom/facebook/c;

    iput-object p2, p0, Lcom/facebook/c$3;->a:Lcom/facebook/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/aa;)V
    .locals 3

    .prologue
    .line 266
    invoke-virtual {p1}, Lcom/facebook/aa;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 267
    if-nez v0, :cond_0

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/facebook/c$3;->a:Lcom/facebook/d;

    const-string v2, "access_token"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/d;->a:Ljava/lang/String;

    .line 271
    iget-object v1, p0, Lcom/facebook/c$3;->a:Lcom/facebook/d;

    const-string v2, "expires_at"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/facebook/d;->b:I

    goto :goto_0
.end method
