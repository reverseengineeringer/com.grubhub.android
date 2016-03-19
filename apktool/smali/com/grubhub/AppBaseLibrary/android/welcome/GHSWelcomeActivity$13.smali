.class Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->o()V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$13;->b:Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$13;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 404
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$13;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$13;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 405
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity$13;->b:Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;

    const/16 v2, 0x64

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;->b(Lcom/grubhub/AppBaseLibrary/android/welcome/GHSWelcomeActivity;Z)Z

    .line 406
    return-void

    .line 405
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
