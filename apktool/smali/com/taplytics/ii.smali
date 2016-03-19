.class Lcom/taplytics/ii;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# instance fields
.field final synthetic a:Lcom/taplytics/ik;

.field final synthetic b:Lcom/taplytics/ig;


# direct methods
.method constructor <init>(Lcom/taplytics/ig;Lcom/taplytics/ik;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/taplytics/ii;->b:Lcom/taplytics/ig;

    iput-object p2, p0, Lcom/taplytics/ii;->a:Lcom/taplytics/ik;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/taplytics/ii;->a:Lcom/taplytics/ik;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/taplytics/ii;->a:Lcom/taplytics/ik;

    invoke-interface {v0, p1}, Lcom/taplytics/ik;->a(Ljava/lang/Exception;)V

    .line 144
    :cond_0
    return-void
.end method
