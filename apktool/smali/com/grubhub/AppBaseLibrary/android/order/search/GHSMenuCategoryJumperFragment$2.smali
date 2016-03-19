.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 103
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;

    invoke-static {v0, p3}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSMenuCategoryJumperFragment;I)V

    .line 104
    return-void
.end method
