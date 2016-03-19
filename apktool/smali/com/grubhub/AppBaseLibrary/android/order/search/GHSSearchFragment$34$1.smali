.class Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$34$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$34;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$34;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$34;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$34$1;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$34;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$34$1;->a:Landroid/view/View;

    iput p3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$34$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 532
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$34$1;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$34;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$34;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$34$1;->a:Landroid/view/View;

    iget v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment$34$1;->b:I

    invoke-static {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/GHSSearchFragment;Landroid/view/View;I)V

    .line 533
    return-void
.end method
