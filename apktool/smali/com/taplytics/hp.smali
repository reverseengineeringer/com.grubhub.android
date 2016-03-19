.class Lcom/taplytics/hp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/taplytics/ik;

.field final synthetic c:Lcom/taplytics/hn;


# direct methods
.method constructor <init>(Lcom/taplytics/hn;Ljava/lang/String;Lcom/taplytics/ik;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/taplytics/hp;->c:Lcom/taplytics/hn;

    iput-object p2, p0, Lcom/taplytics/hp;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/taplytics/hp;->b:Lcom/taplytics/ik;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/taplytics/hp;->a:Ljava/lang/String;

    const-string v1, "Resetting App User"

    invoke-static {v0, v1, p1}, Lcom/taplytics/ck;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 463
    iget-object v0, p0, Lcom/taplytics/hp;->b:Lcom/taplytics/ik;

    invoke-interface {v0, p1}, Lcom/taplytics/ik;->a(Ljava/lang/Exception;)V

    .line 464
    return-void
.end method
