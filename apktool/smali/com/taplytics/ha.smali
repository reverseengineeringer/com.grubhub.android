.class Lcom/taplytics/ha;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/graphics/drawable/Drawable;

.field final synthetic c:Lcom/taplytics/gq;


# direct methods
.method constructor <init>(Lcom/taplytics/gq;Landroid/view/ViewGroup;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 858
    iput-object p1, p0, Lcom/taplytics/ha;->c:Lcom/taplytics/gq;

    iput-object p2, p0, Lcom/taplytics/ha;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/taplytics/ha;->b:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 863
    :try_start_0
    iget-object v0, p0, Lcom/taplytics/ha;->a:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/taplytics/jk;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 864
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->k()Lcom/taplytics/eo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/taplytics/ha;->c:Lcom/taplytics/gq;

    iget-object v1, p0, Lcom/taplytics/ha;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Lcom/taplytics/jk;->a(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taplytics/gq;->a(Lcom/taplytics/gq;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 867
    iget-object v0, p0, Lcom/taplytics/ha;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/taplytics/ha;->c:Lcom/taplytics/gq;

    invoke-static {v1}, Lcom/taplytics/gq;->m(Lcom/taplytics/gq;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 868
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 869
    const-string v0, "delay image added"

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    :cond_0
    :goto_0
    return-void

    .line 873
    :catch_0
    move-exception v0

    .line 874
    const-string v1, "Error making splash screen"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
