.class Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$5;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$5;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$5;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$5$1;->c:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$5;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$5$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;

    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$5$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 523
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$5$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;->isWebView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$5$1;->c:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$5;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$5$1;->c:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$5;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$5$1;->a:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;

    invoke-interface {v2}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIMessage;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$5$1;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/webContent/GHSWebViewActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->startActivity(Landroid/content/Intent;)V

    .line 534
    :goto_0
    return-void

    .line 528
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$5$1;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 529
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$5$1;->c:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$5;

    iget-object v1, v1, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment$5;->a:Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;

    invoke-virtual {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 530
    :catch_0
    move-exception v0

    .line 531
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginFragment;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
