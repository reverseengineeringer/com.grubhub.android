.class Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 231
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$4;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$4;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->d(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)Lcom/grubhub/AppBaseLibrary/android/views/y;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$4;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->d(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;)Lcom/grubhub/AppBaseLibrary/android/views/y;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/views/y;->i()V

    .line 237
    :cond_0
    return-void
.end method
