.class Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity$2;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/pastOrders/GHSIPastOrderListDataModel;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity$2;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity$2;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity$2$1;->a:Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity$2$1;->a:Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity$2;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity$2;->a:Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;->e(Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;Z)Z

    .line 380
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity$2$1;->a:Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity$2;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity$2;->a:Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;->a(Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/h/b;

    .line 381
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity$2$1;->a:Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity$2;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity$2;->a:Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;->d(Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;)V

    .line 382
    return-void
.end method
