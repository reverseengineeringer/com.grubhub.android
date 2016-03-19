.class Lcom/taplytics/fn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/taplytics/fl;


# direct methods
.method constructor <init>(Lcom/taplytics/fl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/taplytics/fn;->b:Lcom/taplytics/fl;

    iput-object p2, p0, Lcom/taplytics/fn;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 89
    :try_start_0
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/gq;->d()Lcom/taplytics/b;

    move-result-object v0

    sget-object v1, Lcom/taplytics/b;->ape:Lcom/taplytics/b;

    invoke-virtual {v0, v1}, Lcom/taplytics/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/taplytics/fn;->b:Lcom/taplytics/fl;

    iget-object v0, v0, Lcom/taplytics/fl;->a:Lcom/taplytics/eo;

    iget-object v1, p0, Lcom/taplytics/fn;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taplytics/eo;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/taplytics/fn;->b:Lcom/taplytics/fl;

    iget-object v1, v1, Lcom/taplytics/fl;->b:Lcom/taplytics/fk;

    iget-object v1, v1, Lcom/taplytics/fk;->a:Lcom/taplytics/fj;

    iget-object v1, v1, Lcom/taplytics/fj;->a:Lcom/taplytics/fi;

    iget-object v1, v1, Lcom/taplytics/fi;->c:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    iget-object v2, p0, Lcom/taplytics/fn;->b:Lcom/taplytics/fl;

    iget-object v2, v2, Lcom/taplytics/fl;->a:Lcom/taplytics/eo;

    invoke-virtual {v2, v0, v1}, Lcom/taplytics/eo;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 97
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "baseline"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/taplytics/fn;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v0, v2, v1}, Lcom/taplytics/fy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    :goto_1
    return-void

    .line 97
    :cond_1
    const-string v0, "_id"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_2
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->q()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->q()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "No connection to Taplytics. Please check your internet connection or restart the app."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 108
    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x102000b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 109
    if-eqz v0, :cond_3

    .line 110
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 111
    :cond_3
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    iget-object v1, p0, Lcom/taplytics/fn;->b:Lcom/taplytics/fl;

    iget-object v1, v1, Lcom/taplytics/fl;->b:Lcom/taplytics/fk;

    iget-object v1, v1, Lcom/taplytics/fk;->a:Lcom/taplytics/fj;

    iget-object v1, v1, Lcom/taplytics/fj;->a:Lcom/taplytics/fi;

    const-string v2, "third"

    invoke-static {v1, v2, v0}, Lcom/taplytics/fi;->a(Lcom/taplytics/fi;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method
