.class Lcom/taplytics/fl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/taplytics/eo;

.field final synthetic b:Lcom/taplytics/fk;


# direct methods
.method constructor <init>(Lcom/taplytics/fk;Lcom/taplytics/eo;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/taplytics/fl;->b:Lcom/taplytics/fk;

    iput-object p2, p0, Lcom/taplytics/fl;->a:Lcom/taplytics/eo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/taplytics/fl;->b:Lcom/taplytics/fk;

    iget-object v0, v0, Lcom/taplytics/fk;->a:Lcom/taplytics/fj;

    iget-object v0, v0, Lcom/taplytics/fj;->a:Lcom/taplytics/fi;

    iget-object v0, v0, Lcom/taplytics/fi;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, " \\(draft\\)"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " \\(active\\)"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/taplytics/fl;->b:Lcom/taplytics/fk;

    iget-object v1, v1, Lcom/taplytics/fk;->a:Lcom/taplytics/fj;

    iget-object v1, v1, Lcom/taplytics/fj;->a:Lcom/taplytics/fi;

    const-string v2, "Variation"

    iget-object v3, p0, Lcom/taplytics/fl;->a:Lcom/taplytics/eo;

    invoke-virtual {v3, v0}, Lcom/taplytics/eo;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/taplytics/fn;

    invoke-direct {v4, p0, v0}, Lcom/taplytics/fn;-><init>(Lcom/taplytics/fl;Ljava/lang/String;)V

    invoke-static {v2, v3, v4}, Lcom/taplytics/jk;->a(Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v1, Lcom/taplytics/fi;->c:Landroid/app/AlertDialog;

    .line 120
    iget-object v0, p0, Lcom/taplytics/fl;->b:Lcom/taplytics/fk;

    iget-object v0, v0, Lcom/taplytics/fk;->a:Lcom/taplytics/fj;

    iget-object v0, v0, Lcom/taplytics/fj;->a:Lcom/taplytics/fi;

    iget-object v0, v0, Lcom/taplytics/fi;->c:Landroid/app/AlertDialog;

    new-instance v1, Lcom/taplytics/fo;

    invoke-direct {v1, p0}, Lcom/taplytics/fo;-><init>(Lcom/taplytics/fl;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 135
    iget-object v0, p0, Lcom/taplytics/fl;->b:Lcom/taplytics/fk;

    iget-object v0, v0, Lcom/taplytics/fk;->a:Lcom/taplytics/fj;

    iget-object v0, v0, Lcom/taplytics/fj;->a:Lcom/taplytics/fi;

    iget-object v0, v0, Lcom/taplytics/fi;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 136
    iget-object v0, p0, Lcom/taplytics/fl;->b:Lcom/taplytics/fk;

    iget-object v0, v0, Lcom/taplytics/fk;->a:Lcom/taplytics/fj;

    iget-object v0, v0, Lcom/taplytics/fj;->a:Lcom/taplytics/fi;

    iget-object v0, v0, Lcom/taplytics/fi;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 137
    iget-object v0, p0, Lcom/taplytics/fl;->b:Lcom/taplytics/fk;

    iget-object v0, v0, Lcom/taplytics/fk;->a:Lcom/taplytics/fj;

    iget-object v0, v0, Lcom/taplytics/fj;->a:Lcom/taplytics/fi;

    iget-object v0, v0, Lcom/taplytics/fi;->c:Landroid/app/AlertDialog;

    const/16 v1, 0x50

    invoke-static {v0, v1}, Lcom/taplytics/jk;->a(Landroid/app/AlertDialog;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    iget-object v1, p0, Lcom/taplytics/fl;->b:Lcom/taplytics/fk;

    iget-object v1, v1, Lcom/taplytics/fk;->a:Lcom/taplytics/fj;

    iget-object v1, v1, Lcom/taplytics/fj;->a:Lcom/taplytics/fi;

    const-string v2, "second"

    invoke-static {v1, v2, v0}, Lcom/taplytics/fi;->a(Lcom/taplytics/fi;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
