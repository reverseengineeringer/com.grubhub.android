.class Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    .line 68
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 70
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "enter address"

    const-string v3, "typed full address"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;->f:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;->f:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 81
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
