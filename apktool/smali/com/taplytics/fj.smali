.class Lcom/taplytics/fj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taplytics/fi;


# direct methods
.method constructor <init>(Lcom/taplytics/fi;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/taplytics/fj;->a:Lcom/taplytics/fi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 61
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "Show Experiments"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string v2, "Clear"

    aput-object v2, v1, v0

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/taplytics/gq;->h()Lcom/taplytics/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/gq;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Disable"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " Borders"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 64
    :try_start_0
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

    .line 65
    iget-object v0, p0, Lcom/taplytics/fj;->a:Lcom/taplytics/fi;

    const-string v2, "Taplytics"

    new-instance v3, Lcom/taplytics/fk;

    invoke-direct {v3, p0}, Lcom/taplytics/fk;-><init>(Lcom/taplytics/fj;)V

    invoke-static {v2, v1, v3}, Lcom/taplytics/jk;->a(Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/taplytics/fi;->a:Landroid/app/AlertDialog;

    .line 216
    iget-object v0, p0, Lcom/taplytics/fj;->a:Lcom/taplytics/fi;

    iget-object v0, v0, Lcom/taplytics/fi;->a:Landroid/app/AlertDialog;

    const/16 v1, 0x50

    invoke-static {v0, v1}, Lcom/taplytics/jk;->a(Landroid/app/AlertDialog;I)V

    .line 217
    iget-object v0, p0, Lcom/taplytics/fj;->a:Lcom/taplytics/fi;

    iget-object v0, v0, Lcom/taplytics/fi;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 218
    iget-object v0, p0, Lcom/taplytics/fj;->a:Lcom/taplytics/fi;

    iget-object v0, v0, Lcom/taplytics/fi;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 221
    iget-object v0, p0, Lcom/taplytics/fj;->a:Lcom/taplytics/fi;

    invoke-static {v0}, Lcom/taplytics/fi;->a(Lcom/taplytics/fi;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_0
    :goto_1
    return-void

    .line 61
    :cond_1
    const-string v0, "Enable"

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    const-string v1, "dialog err"

    invoke-static {v1, v0}, Lcom/taplytics/ck;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method
