.class Lcom/taplytics/hb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taplytics/gq;


# direct methods
.method constructor <init>(Lcom/taplytics/gq;)V
    .locals 0

    .prologue
    .line 882
    iput-object p1, p0, Lcom/taplytics/hb;->a:Lcom/taplytics/gq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Lcom/taplytics/hb;->a:Lcom/taplytics/gq;

    invoke-static {v0}, Lcom/taplytics/gq;->m(Lcom/taplytics/gq;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 886
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    const-string v0, "executed, delay done"

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/taplytics/hb;->a:Lcom/taplytics/gq;

    invoke-virtual {v0}, Lcom/taplytics/gq;->r()V

    .line 895
    :cond_1
    :goto_0
    return-void

    .line 891
    :cond_2
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 892
    const-string v0, "DELAY VIEW NULL"

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
