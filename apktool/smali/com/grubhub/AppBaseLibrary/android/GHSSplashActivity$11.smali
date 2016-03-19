.class Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity$11;
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
    .line 340
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity$11;->a:Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity$11;->a:Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;->c(Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;Z)Z

    .line 344
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity$11;->a:Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;->a(Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    .line 345
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity$11;->a:Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;->d(Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;)V

    .line 346
    return-void
.end method
