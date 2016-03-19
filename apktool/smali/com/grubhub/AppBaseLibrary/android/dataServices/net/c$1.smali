.class Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;->a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e",
        "<",
        "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

.field final synthetic d:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;Ljava/lang/String;Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V
    .locals 0

    .prologue
    .line 1293
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c$1;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c$1;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V
    .locals 3

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;->getSession()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/a/a;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel$GHSISession;Ljava/util/Date;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1298
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/order/cart/i;->a()V

    .line 1299
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c$1;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSMainActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1300
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1301
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c$1;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1308
    :cond_0
    :goto_0
    return-void

    .line 1304
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c$1;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    if-eqz v0, :cond_0

    .line 1305
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c$1;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c$1;->d:Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c;)Lcom/grubhub/AppBaseLibrary/android/b/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;->a(Lcom/grubhub/AppBaseLibrary/android/b/b;)V

    goto :goto_0
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1293
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/net/c$1;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V

    return-void
.end method
