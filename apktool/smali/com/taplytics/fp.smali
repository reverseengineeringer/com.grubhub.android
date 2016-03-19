.class Lcom/taplytics/fp;
.super Lcom/taplytics/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taplytics/h",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/taplytics/fk;


# direct methods
.method constructor <init>(Lcom/taplytics/fk;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/taplytics/fp;->a:Lcom/taplytics/fk;

    invoke-direct {p0}, Lcom/taplytics/h;-><init>()V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 181
    invoke-static {}, Lcom/taplytics/fy;->e()Lcom/taplytics/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taplytics/fy;->q()Landroid/app/Activity;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 184
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 185
    invoke-virtual {v0, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 186
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 187
    invoke-virtual {v0, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 189
    invoke-super {p0}, Lcom/taplytics/h;->e()V

    .line 190
    return-void
.end method
