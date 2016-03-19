.class Lcom/taplytics/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/taplytics/n;


# direct methods
.method constructor <init>(Lcom/taplytics/n;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/taplytics/s;->b:Lcom/taplytics/n;

    iput-object p2, p0, Lcom/taplytics/s;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 120
    :try_start_0
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const-string v0, "Activity Paused"

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/taplytics/s;->b:Lcom/taplytics/n;

    new-instance v1, Lcom/taplytics/c;

    invoke-direct {v1}, Lcom/taplytics/c;-><init>()V

    invoke-static {v0, v1}, Lcom/taplytics/n;->a(Lcom/taplytics/n;Lcom/taplytics/c;)Lcom/taplytics/c;

    .line 126
    iget-object v0, p0, Lcom/taplytics/s;->b:Lcom/taplytics/n;

    invoke-static {v0}, Lcom/taplytics/n;->b(Lcom/taplytics/n;)Lcom/taplytics/c;

    move-result-object v0

    new-instance v1, Lcom/taplytics/v;

    invoke-direct {v1, p0}, Lcom/taplytics/v;-><init>(Lcom/taplytics/s;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/c;->a(Lcom/taplytics/h;)Lcom/taplytics/h;

    .line 150
    invoke-static {}, Lcom/taplytics/fi;->a()Lcom/taplytics/fi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fi;->c()V

    .line 154
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->q()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->q()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/s;->a:Landroid/app/Activity;

    if-ne v0, v1, :cond_1

    .line 155
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->c(Z)V

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/taplytics/s;->b:Lcom/taplytics/n;

    invoke-static {v0}, Lcom/taplytics/n;->b(Lcom/taplytics/n;)Lcom/taplytics/c;

    move-result-object v0

    const/16 v1, 0x320

    invoke-virtual {v0, v1}, Lcom/taplytics/c;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    const-string v1, "Error pausing: "

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
