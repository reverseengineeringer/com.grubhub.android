.class Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;->a(Landroid/widget/TimePicker;Landroid/widget/ViewFlipper;Landroid/view/View;Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ViewFlipper;

.field final synthetic b:Landroid/widget/TimePicker;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroid/view/View;

.field final synthetic e:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;Landroid/widget/ViewFlipper;Landroid/widget/TimePicker;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$5;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$5;->a:Landroid/widget/ViewFlipper;

    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$5;->b:Landroid/widget/TimePicker;

    iput-object p4, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$5;->c:Landroid/view/View;

    iput-object p5, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$5;->d:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 330
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$5;->a:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$5;->a:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 348
    :goto_0
    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$5;->a:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$5;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;->c(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f040021

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 336
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$5;->a:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$5;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;->c(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f040027

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 337
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$5;->a:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 341
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$5;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$5;->b:Landroid/widget/TimePicker;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$5;->a:Landroid/widget/ViewFlipper;

    invoke-static {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;Landroid/widget/TimePicker;Landroid/widget/ViewFlipper;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$5;->b:Landroid/widget/TimePicker;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$5;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;)Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 343
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$5;->b:Landroid/widget/TimePicker;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$5;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;)Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$5;->e:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$5;->a:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$5;->c:Landroid/view/View;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$5;->d:Landroid/view/View;

    invoke-static {v0, v1, v2, v3}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;Landroid/widget/ViewFlipper;Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method
