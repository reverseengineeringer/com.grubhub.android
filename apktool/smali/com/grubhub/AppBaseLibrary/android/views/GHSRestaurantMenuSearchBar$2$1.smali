.class Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$2;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$2$1;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$2;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$2$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$2$1;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$2;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$2;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->d(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)Lcom/grubhub/AppBaseLibrary/android/views/s;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$2$1;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$2;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$2;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->d(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)Lcom/grubhub/AppBaseLibrary/android/views/s;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$2$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/s;->b(Ljava/lang/String;)V

    .line 146
    :cond_0
    return-void
.end method
