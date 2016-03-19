.class public Lcom/taplytics/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/taplytics/sdk/TLBootReceiver;


# direct methods
.method public constructor <init>(Lcom/taplytics/sdk/TLBootReceiver;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/taplytics/am;->b:Lcom/taplytics/sdk/TLBootReceiver;

    iput-object p2, p0, Lcom/taplytics/am;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Lcom/taplytics/cs;->a()Lcom/taplytics/cs;

    move-result-object v0

    new-instance v1, Lcom/taplytics/aq;

    invoke-direct {v1, p0}, Lcom/taplytics/aq;-><init>(Lcom/taplytics/am;)V

    invoke-virtual {v0, v1}, Lcom/taplytics/cs;->a(Lcom/taplytics/gr;)V

    .line 52
    return-void
.end method
