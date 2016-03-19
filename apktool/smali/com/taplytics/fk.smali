.class Lcom/taplytics/fk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/taplytics/fj;


# direct methods
.method constructor <init>(Lcom/taplytics/fj;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/taplytics/fk;->a:Lcom/taplytics/fj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 71
    packed-switch p2, :pswitch_data_0

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 73
    :pswitch_0
    :try_start_0
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->k()Lcom/taplytics/eo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 74
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->k()Lcom/taplytics/eo;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/taplytics/fk;->a:Lcom/taplytics/fj;

    iget-object v1, v1, Lcom/taplytics/fj;->a:Lcom/taplytics/fi;

    const-string v2, "Experiments"

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/taplytics/eo;->a(Z)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/taplytics/fl;

    invoke-direct {v4, p0, v0}, Lcom/taplytics/fl;-><init>(Lcom/taplytics/fk;Lcom/taplytics/eo;)V

    invoke-static {v2, v3, v4}, Lcom/taplytics/jk;->a(Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v1, Lcom/taplytics/fi;->b:Landroid/app/AlertDialog;

    .line 143
    iget-object v0, p0, Lcom/taplytics/fk;->a:Lcom/taplytics/fj;

    iget-object v0, v0, Lcom/taplytics/fj;->a:Lcom/taplytics/fi;

    iget-object v0, v0, Lcom/taplytics/fi;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 144
    iget-object v0, p0, Lcom/taplytics/fk;->a:Lcom/taplytics/fj;

    iget-object v0, v0, Lcom/taplytics/fj;->a:Lcom/taplytics/fi;

    iget-object v0, v0, Lcom/taplytics/fi;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 146
    iget-object v0, p0, Lcom/taplytics/fk;->a:Lcom/taplytics/fj;

    iget-object v0, v0, Lcom/taplytics/fj;->a:Lcom/taplytics/fi;

    iget-object v0, v0, Lcom/taplytics/fi;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 147
    iget-object v0, p0, Lcom/taplytics/fk;->a:Lcom/taplytics/fj;

    iget-object v0, v0, Lcom/taplytics/fj;->a:Lcom/taplytics/fi;

    iget-object v0, v0, Lcom/taplytics/fi;->b:Landroid/app/AlertDialog;

    const/16 v1, 0x50

    invoke-static {v0, v1}, Lcom/taplytics/jk;->a(Landroid/app/AlertDialog;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    iget-object v1, p0, Lcom/taplytics/fk;->a:Lcom/taplytics/fj;

    iget-object v1, v1, Lcom/taplytics/fj;->a:Lcom/taplytics/fi;

    const-string v2, "first"

    invoke-static {v1, v2, v0}, Lcom/taplytics/fi;->a(Lcom/taplytics/fi;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 150
    :cond_1
    :try_start_1
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

    .line 151
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->q()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "No experiments found. If you have created an experiment, check your api key and internet connection."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x102000b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 157
    if-eqz v0, :cond_2

    .line 158
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 159
    :cond_2
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 161
    :catch_1
    move-exception v0

    .line 162
    :try_start_2
    const-string v1, "something dialog"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 170
    :pswitch_1
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/gq;->p()V

    .line 171
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taplytics/gq;->a(Z)V

    .line 172
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->w()V

    .line 175
    new-instance v0, Lcom/taplytics/c;

    invoke-direct {v0}, Lcom/taplytics/c;-><init>()V

    .line 176
    new-instance v1, Lcom/taplytics/fp;

    invoke-direct {v1, p0}, Lcom/taplytics/fp;-><init>(Lcom/taplytics/fk;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/c;->a(Lcom/taplytics/h;)Lcom/taplytics/h;

    .line 193
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/taplytics/fy;->a(Ljava/util/Map;Lcom/taplytics/c;)V

    goto/16 :goto_0

    .line 198
    :pswitch_2
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taplytics/gq;->s()Z

    move-result v2

    if-nez v2, :cond_3

    .line 199
    :goto_1
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taplytics/gq;->b(Z)V

    .line 200
    if-nez v0, :cond_4

    .line 201
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/gq;->p()V

    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 198
    goto :goto_1

    .line 203
    :cond_4
    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/gq;->k()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
