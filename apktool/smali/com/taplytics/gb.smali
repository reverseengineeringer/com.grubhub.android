.class Lcom/taplytics/gb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/taplytics/fz;


# direct methods
.method constructor <init>(Lcom/taplytics/fz;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lcom/taplytics/gb;->a:Lcom/taplytics/fz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 441
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 442
    const-string v1, "https://github.com/taplytics/Taplytics-Android-SDK/blob/master/Sockets.md"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 443
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 444
    iget-object v1, p0, Lcom/taplytics/gb;->a:Lcom/taplytics/fz;

    iget-object v1, v1, Lcom/taplytics/fz;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 445
    return-void
.end method
