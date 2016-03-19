.class Lcom/taplytics/fz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/taplytics/fy;


# direct methods
.method constructor <init>(Lcom/taplytics/fy;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lcom/taplytics/fz;->b:Lcom/taplytics/fy;

    iput-object p2, p0, Lcom/taplytics/fz;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 429
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/taplytics/fz;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Taplytics has changed its socket dependency!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Please update it to ensure Taplytics works properly. Thank you!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/taplytics/gc;

    invoke-direct {v2, p0}, Lcom/taplytics/gc;-><init>(Lcom/taplytics/fz;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Read More"

    new-instance v2, Lcom/taplytics/gb;

    invoke-direct {v2, p0}, Lcom/taplytics/gb;-><init>(Lcom/taplytics/fz;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 448
    return-void
.end method
