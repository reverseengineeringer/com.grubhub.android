.class Lcom/taplytics/goat;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/taplytics/dg;


# direct methods
.method constructor <init>(Lcom/taplytics/dg;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/taplytics/goat;->a:Lcom/taplytics/dg;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/taplytics/goat;->a:Lcom/taplytics/dg;

    invoke-virtual {v0}, Lcom/taplytics/dg;->o()V

    .line 482
    return-void
.end method
