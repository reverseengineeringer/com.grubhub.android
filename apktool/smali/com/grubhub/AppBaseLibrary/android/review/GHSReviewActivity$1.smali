.class Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$1;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 87
    const-string v2, "com.grubhub.service.GHSReviewService.ORDER_ID"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    if-eqz v0, :cond_0

    const-string v3, "com.grubhub.service.GHSReviewService.BROADCAST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$1;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->a(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "com.grubhub.service.GHSReviewService.STATUS_CODE"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    .line 94
    :goto_0
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$1;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->b(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 95
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$1;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;

    invoke-virtual {v2, v1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->a(Z)V

    .line 97
    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$1;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_UNKNOWN:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-static {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->a(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    .line 109
    :goto_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$1;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->a(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;Z)Z

    .line 111
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 92
    goto :goto_0

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$1;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->c(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$1;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->d(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;)V

    goto :goto_1

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$1;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->finish()V

    goto :goto_1

    .line 106
    :cond_4
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$1;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/review/b;->ERROR:Lcom/grubhub/AppBaseLibrary/android/review/b;

    :goto_2
    invoke-static {v2, v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->a(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;Lcom/grubhub/AppBaseLibrary/android/review/b;)Lcom/grubhub/AppBaseLibrary/android/review/b;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity$1;->a:Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;->c(Lcom/grubhub/AppBaseLibrary/android/review/GHSReviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/review/b;->SURVEY_COMPLETE:Lcom/grubhub/AppBaseLibrary/android/review/b;

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/review/b;->QUIT:Lcom/grubhub/AppBaseLibrary/android/review/b;

    goto :goto_2
.end method
