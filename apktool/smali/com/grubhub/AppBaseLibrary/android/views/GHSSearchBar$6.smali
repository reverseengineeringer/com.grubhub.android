.class Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 824
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$6;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 827
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$6;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->a(Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;I)V

    .line 828
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar$6;->a:Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSSearchBar;->c()V

    .line 829
    return-void
.end method
