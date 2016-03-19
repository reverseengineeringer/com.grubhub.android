.class Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$5;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    .line 192
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$5;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->j(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)Lcom/grubhub/AppBaseLibrary/android/views/t;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$5;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->j(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)Lcom/grubhub/AppBaseLibrary/android/views/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/t;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$5;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$5$1;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$5$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$5;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 205
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$5;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->a(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$5;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->b()V

    goto :goto_0
.end method
