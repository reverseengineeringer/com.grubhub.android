.class Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$7;
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
    .line 245
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$7;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar$7;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;->a(Lcom/grubhub/AppBaseLibrary/android/views/GHSRestaurantMenuSearchBar;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 249
    return-void
.end method
