.class Lcom/taplytics/cm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/taplytics/hm;


# instance fields
.field final synthetic a:Lcom/taplytics/cl;


# direct methods
.method constructor <init>(Lcom/taplytics/cl;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/taplytics/cm;->a:Lcom/taplytics/cl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 128
    if-eqz p2, :cond_1

    .line 129
    const-string v0, "Reading User Attributes from disk"

    invoke-static {v0, p2}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    if-eqz p1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/taplytics/cm;->a:Lcom/taplytics/cl;

    invoke-static {v0, p1}, Lcom/taplytics/cl;->a(Lcom/taplytics/cl;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 132
    iget-object v0, p0, Lcom/taplytics/cm;->a:Lcom/taplytics/cl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taplytics/cl;->a(Lcom/taplytics/cl;Lcom/taplytics/eq;)V

    goto :goto_0
.end method
