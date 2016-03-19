.class Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 180
    if-nez p2, :cond_0

    .line 181
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->b(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;

    move-result-object v0

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->a(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :goto_0
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->b(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v2, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->a(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;Z)V

    .line 188
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 184
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->b(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)Lcom/grubhub/AppBaseLibrary/android/views/GHSEditText;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 187
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
