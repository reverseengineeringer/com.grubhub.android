.class final Lcom/taplytics/kd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Landroid/view/ViewGroup;

.field final synthetic d:I

.field final synthetic e:Lorg/json/JSONObject;

.field final synthetic f:Z


# direct methods
.method constructor <init>(ZILandroid/view/ViewGroup;ILorg/json/JSONObject;Z)V
    .locals 0

    .prologue
    .line 671
    iput-boolean p1, p0, Lcom/taplytics/kd;->a:Z

    iput p2, p0, Lcom/taplytics/kd;->b:I

    iput-object p3, p0, Lcom/taplytics/kd;->c:Landroid/view/ViewGroup;

    iput p4, p0, Lcom/taplytics/kd;->d:I

    iput-object p5, p0, Lcom/taplytics/kd;->e:Lorg/json/JSONObject;

    iput-boolean p6, p0, Lcom/taplytics/kd;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 674
    iget-boolean v0, p0, Lcom/taplytics/kd;->a:Z

    if-eqz v0, :cond_0

    .line 675
    iget v0, p0, Lcom/taplytics/kd;->b:I

    iget-object v1, p0, Lcom/taplytics/kd;->c:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/taplytics/kd;->d:I

    iget-object v3, p0, Lcom/taplytics/kd;->e:Lorg/json/JSONObject;

    iget-boolean v4, p0, Lcom/taplytics/kd;->f:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/taplytics/jk;->a(ILandroid/view/ViewGroup;ILorg/json/JSONObject;Z)V

    .line 679
    :goto_0
    return-void

    .line 677
    :cond_0
    iget v0, p0, Lcom/taplytics/kd;->b:I

    iget-object v1, p0, Lcom/taplytics/kd;->c:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/taplytics/kd;->d:I

    iget-object v3, p0, Lcom/taplytics/kd;->e:Lorg/json/JSONObject;

    iget-boolean v4, p0, Lcom/taplytics/kd;->f:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/taplytics/jk;->b(ILandroid/view/ViewGroup;ILorg/json/JSONObject;Z)V

    goto :goto_0
.end method
