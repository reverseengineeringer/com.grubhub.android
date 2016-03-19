.class Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity$3;->a:Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 164
    const-string v0, "com.grubhub.AppBaseLibrary.android.utils.BROADCAST"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity$3;->a:Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;->a(Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;Z)Z

    .line 166
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity$3;->a:Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;->d(Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;)V

    .line 168
    :cond_0
    return-void
.end method
