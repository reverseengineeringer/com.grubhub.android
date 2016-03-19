.class Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;->j()V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity$5;->a:Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity$5;->a:Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;->f(Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;Z)Z

    .line 413
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity$5;->a:Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;->a(Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/c/b;

    .line 414
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity$5;->a:Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;->d(Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;)V

    .line 415
    return-void
.end method
