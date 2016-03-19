.class Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)V
    .locals 0

    .prologue
    .line 832
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$7;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    .line 835
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 838
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$7;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->g(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 839
    const-string v0, "autocomplete-default tab search button_cta"

    .line 845
    :goto_0
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$7;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->d(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)Lcom/grubhub/AppBaseLibrary/android/views/y;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$7;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->j(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/grubhub/AppBaseLibrary/android/views/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$7;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->k(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)V

    .line 847
    const/4 v0, 0x1

    .line 849
    :goto_1
    return v0

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$7;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->i(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 841
    const-string v0, "autocomplete-food tab search button_cta"

    goto :goto_0

    .line 843
    :cond_1
    const-string v0, "autocomplete-restaurant tab search button_cta"

    goto :goto_0

    .line 849
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
