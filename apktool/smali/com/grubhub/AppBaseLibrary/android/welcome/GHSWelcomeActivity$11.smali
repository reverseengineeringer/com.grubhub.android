.class Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->m()V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$11;->a:Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 379
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$11;->a:Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$11;->a:Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/login/a;->ONBOARDING:Lcom/grubhub/AppBaseLibrary/android/login/a;

    invoke-static {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginActivity;->a(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/login/a;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 380
    return-void
.end method
