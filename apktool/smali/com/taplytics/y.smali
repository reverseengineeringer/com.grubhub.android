.class Lcom/taplytics/y;
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
    .line 173
    iput-object p1, p0, Lcom/taplytics/y;->b:Lcom/taplytics/n;

    iput-object p2, p0, Lcom/taplytics/y;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 177
    :try_start_0
    invoke-static {}, Lcom/taplytics/ck;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity Resumed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/y;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taplytics/ck;->a(Ljava/lang/String;)V

    .line 180
    :cond_0
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->q()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->q()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/y;->a:Landroid/app/Activity;

    if-ne v0, v1, :cond_1

    .line 181
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->c(Z)V

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/taplytics/y;->b:Lcom/taplytics/n;

    invoke-static {v0}, Lcom/taplytics/n;->b(Lcom/taplytics/n;)Lcom/taplytics/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/c;->a()V

    .line 187
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/gq;->j()V

    .line 192
    :cond_2
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/y;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/taplytics/fy;->b(Landroid/app/Activity;)V

    .line 198
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->y()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 203
    iget-object v0, p0, Lcom/taplytics/y;->b:Lcom/taplytics/n;

    invoke-static {v0}, Lcom/taplytics/n;->c(Lcom/taplytics/n;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/taplytics/y;->b:Lcom/taplytics/n;

    invoke-static {v0}, Lcom/taplytics/n;->d(Lcom/taplytics/n;)Lcom/taplytics/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/c;->c()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/taplytics/y;->b:Lcom/taplytics/n;

    invoke-static {v0}, Lcom/taplytics/n;->d(Lcom/taplytics/n;)Lcom/taplytics/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/c;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 205
    :cond_3
    iget-object v0, p0, Lcom/taplytics/y;->b:Lcom/taplytics/n;

    invoke-static {v0}, Lcom/taplytics/n;->c(Lcom/taplytics/n;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 206
    iget-object v0, p0, Lcom/taplytics/y;->b:Lcom/taplytics/n;

    invoke-static {v0}, Lcom/taplytics/n;->c(Lcom/taplytics/n;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/y;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v0, p0, Lcom/taplytics/y;->b:Lcom/taplytics/n;

    new-instance v1, Lcom/taplytics/c;

    invoke-direct {v1}, Lcom/taplytics/c;-><init>()V

    invoke-static {v0, v1}, Lcom/taplytics/n;->b(Lcom/taplytics/n;Lcom/taplytics/c;)Lcom/taplytics/c;

    .line 208
    iget-object v0, p0, Lcom/taplytics/y;->b:Lcom/taplytics/n;

    invoke-static {v0}, Lcom/taplytics/n;->d(Lcom/taplytics/n;)Lcom/taplytics/c;

    move-result-object v0

    new-instance v1, Lcom/taplytics/aj;

    invoke-direct {v1, p0}, Lcom/taplytics/aj;-><init>(Lcom/taplytics/y;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/c;->a(Lcom/taplytics/h;)Lcom/taplytics/h;

    .line 215
    iget-object v0, p0, Lcom/taplytics/y;->b:Lcom/taplytics/n;

    invoke-static {v0}, Lcom/taplytics/n;->d(Lcom/taplytics/n;)Lcom/taplytics/c;

    move-result-object v0

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lcom/taplytics/c;->a(I)V

    .line 239
    :cond_4
    :goto_0
    return-void

    .line 218
    :cond_5
    iget-object v0, p0, Lcom/taplytics/y;->b:Lcom/taplytics/n;

    invoke-static {v0}, Lcom/taplytics/n;->c(Lcom/taplytics/n;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/taplytics/y;->b:Lcom/taplytics/n;

    invoke-static {v1}, Lcom/taplytics/n;->c(Lcom/taplytics/n;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 220
    iget-object v1, p0, Lcom/taplytics/y;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 223
    if-eq v1, v0, :cond_4

    .line 225
    iget-object v0, p0, Lcom/taplytics/y;->b:Lcom/taplytics/n;

    invoke-static {v0}, Lcom/taplytics/n;->c(Lcom/taplytics/n;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v0, p0, Lcom/taplytics/y;->b:Lcom/taplytics/n;

    invoke-static {v0}, Lcom/taplytics/n;->c(Lcom/taplytics/n;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_4

    .line 228
    invoke-static {}, Lcom/taplytics/fi;->a()Lcom/taplytics/fi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fi;->b()V

    .line 230
    iget-object v0, p0, Lcom/taplytics/y;->b:Lcom/taplytics/n;

    invoke-static {v0}, Lcom/taplytics/n;->d(Lcom/taplytics/n;)Lcom/taplytics/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/c;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    const-string v1, "Error resuming"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
