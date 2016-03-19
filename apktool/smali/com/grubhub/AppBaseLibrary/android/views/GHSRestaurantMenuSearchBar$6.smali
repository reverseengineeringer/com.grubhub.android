.class Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 208
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$6;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 221
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$6;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->d(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;Z)V

    .line 223
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$6;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->k(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)Lcom/grubhub/AppBaseLibrary/android/views/u;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/u;->removeMessages(I)V

    .line 225
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$6;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->k(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)Lcom/grubhub/AppBaseLibrary/android/views/u;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/u;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 226
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 227
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$6;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->k(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)Lcom/grubhub/AppBaseLibrary/android/views/u;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v0, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/views/u;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 229
    :cond_0
    return-void

    .line 221
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 217
    return-void
.end method
