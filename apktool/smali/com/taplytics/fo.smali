.class Lcom/taplytics/fo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/taplytics/fl;


# direct methods
.method constructor <init>(Lcom/taplytics/fl;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/taplytics/fo;->a:Lcom/taplytics/fl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/taplytics/fo;->a:Lcom/taplytics/fl;

    iget-object v0, v0, Lcom/taplytics/fl;->b:Lcom/taplytics/fk;

    iget-object v0, v0, Lcom/taplytics/fk;->a:Lcom/taplytics/fj;

    iget-object v0, v0, Lcom/taplytics/fj;->a:Lcom/taplytics/fi;

    iget-object v0, v0, Lcom/taplytics/fi;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 127
    iget-object v0, p0, Lcom/taplytics/fo;->a:Lcom/taplytics/fl;

    iget-object v0, v0, Lcom/taplytics/fl;->b:Lcom/taplytics/fk;

    iget-object v0, v0, Lcom/taplytics/fk;->a:Lcom/taplytics/fj;

    iget-object v0, v0, Lcom/taplytics/fj;->a:Lcom/taplytics/fi;

    iget-object v0, v0, Lcom/taplytics/fi;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    const-string v0, "Error clicking dialog"

    invoke-static {v0}, Lcom/taplytics/ck;->c(Ljava/lang/String;)V

    goto :goto_0
.end method
