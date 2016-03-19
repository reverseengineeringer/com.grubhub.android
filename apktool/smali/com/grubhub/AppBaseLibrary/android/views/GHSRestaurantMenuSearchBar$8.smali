.class Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 252
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$8;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$8;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->d(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)Lcom/grubhub/AppBaseLibrary/android/views/s;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$8;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->d(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)Lcom/grubhub/AppBaseLibrary/android/views/s;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/views/s;->u()V

    .line 258
    :cond_0
    return-void
.end method
