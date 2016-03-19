.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$12$1;
.super Lcom/grubhub/AppBaseLibrary/android/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$12;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$12;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$12;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;)V
    .locals 0

    .prologue
    .line 1335
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$12$1;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$12;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$12$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;

    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$12$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 1341
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1343
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$12$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;->isWebView()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1344
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$12$1;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$12;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$12;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$12$1;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$12;

    iget-object v2, v2, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$12;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v2

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$12$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;

    invoke-interface {v3}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->startActivity(Landroid/content/Intent;)V

    .line 1357
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$12$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;->isRepeat()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1358
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$12$1;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$12;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$12;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$12$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;->getETag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Ljava/lang/String;Z)V

    .line 1360
    :cond_1
    return-void

    .line 1348
    :cond_2
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1349
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$12$1;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$12;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$12;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1350
    :catch_0
    move-exception v0

    .line 1351
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public b(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$12$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;->isRepeat()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1366
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$12$1;->b:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$12;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$12;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$12$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;

    invoke-interface {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;->getETag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->a(Ljava/lang/String;Z)V

    .line 1368
    :cond_0
    return-void
.end method
