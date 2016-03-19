.class Lcom/taplytics/cg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/taplytics/cc;


# direct methods
.method constructor <init>(Lcom/taplytics/cc;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/taplytics/cg;->b:Lcom/taplytics/cc;

    iput-object p2, p0, Lcom/taplytics/cg;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/taplytics/cg;->b:Lcom/taplytics/cc;

    invoke-static {v0}, Lcom/taplytics/cc;->a(Lcom/taplytics/cc;)Lcom/taplytics/bw;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/cg;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/taplytics/bw;->a(Lorg/json/JSONObject;)V

    .line 525
    return-void
.end method
