.class Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 128
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$2;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$2;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->a(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 133
    const-wide/16 v0, 0x0

    .line 134
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$2;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->b(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    const-wide/16 v0, 0x15e

    .line 136
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$2;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->c(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)V

    :cond_0
    move-wide v2, v0

    .line 139
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 140
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$2;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$2$1;

    invoke-direct {v4, p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$2$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$2;Ljava/lang/String;)V

    invoke-virtual {v1, v4, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 148
    return-void
.end method
