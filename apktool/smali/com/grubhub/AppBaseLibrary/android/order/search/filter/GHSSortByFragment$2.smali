.class Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 120
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 123
    const v0, 0x7f0f0288

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 126
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->d(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->e(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 128
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;Z)Z

    .line 131
    const v1, 0x7f0200b2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->e(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;)Landroid/widget/ListView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 134
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment$2;->a:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;

    invoke-static {v1, v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSSortByFragment;Z)Z

    .line 137
    const v1, 0x7f0200e4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
