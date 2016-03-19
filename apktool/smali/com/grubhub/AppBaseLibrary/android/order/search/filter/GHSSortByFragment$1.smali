.class Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 104
    const v0, 0x7f0f010e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0f0287

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;)Lcom/grubhub/AppBaseLibrary/android/c/a/e;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/grubhub/AppBaseLibrary/android/c/a/e;->a(I)V

    .line 113
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->c(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 115
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;Z)Z

    .line 116
    return-void
.end method
