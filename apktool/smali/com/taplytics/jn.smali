.class final Lcom/taplytics/jn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:I

.field final synthetic c:Lorg/json/JSONObject;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;ILorg/json/JSONObject;Z)V
    .locals 0

    .prologue
    .line 652
    iput-object p1, p0, Lcom/taplytics/jn;->a:Landroid/view/ViewGroup;

    iput p2, p0, Lcom/taplytics/jn;->b:I

    iput-object p3, p0, Lcom/taplytics/jn;->c:Lorg/json/JSONObject;

    iput-boolean p4, p0, Lcom/taplytics/jn;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 655
    iget-object v0, p0, Lcom/taplytics/jn;->a:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/taplytics/jn;->b:I

    iget-object v2, p0, Lcom/taplytics/jn;->c:Lorg/json/JSONObject;

    iget-boolean v3, p0, Lcom/taplytics/jn;->d:Z

    invoke-static {v0, v1, v2, v3}, Lcom/taplytics/jk;->a(Landroid/view/ViewGroup;ILorg/json/JSONObject;Z)V

    .line 656
    return-void
.end method
