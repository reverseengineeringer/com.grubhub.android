.class Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;->i()V
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
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity$8;->a:Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity$8;->a:Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;->a(Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;[Ljava/lang/String;)[Ljava/lang/String;

    .line 302
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->l()V

    .line 305
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity$8;->a:Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;->e(Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity;)V

    .line 306
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 297
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;

    invoke-virtual {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/GHSSplashActivity$8;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIUserAuthDataModel;)V

    return-void
.end method
