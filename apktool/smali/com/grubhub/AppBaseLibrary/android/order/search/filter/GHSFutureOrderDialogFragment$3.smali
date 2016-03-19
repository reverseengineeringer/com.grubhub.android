.class Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;->a(Landroid/widget/TimePicker;Landroid/widget/ViewFlipper;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TimePicker;

.field final synthetic b:Landroid/widget/ViewFlipper;

.field final synthetic c:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;Landroid/widget/TimePicker;Landroid/widget/ViewFlipper;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$3;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$3;->a:Landroid/widget/TimePicker;

    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$3;->b:Landroid/widget/ViewFlipper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 5

    .prologue
    const/16 v4, 0xc

    const/16 v3, 0xb

    .line 277
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$3;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$3;->a:Landroid/widget/TimePicker;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$3;->b:Landroid/widget/ViewFlipper;

    invoke-static {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;Landroid/widget/TimePicker;Landroid/widget/ViewFlipper;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$3;->a:Landroid/widget/TimePicker;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$3;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 279
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$3;->a:Landroid/widget/TimePicker;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$3;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;->a(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$3;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$3;->a:Landroid/widget/TimePicker;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$3;->b:Landroid/widget/ViewFlipper;

    invoke-static {v0, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;Landroid/widget/TimePicker;Landroid/widget/ViewFlipper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$3;->a:Landroid/widget/TimePicker;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$3;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 282
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$3;->a:Landroid/widget/TimePicker;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment$3;->c:Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;->b(Lcom/grubhub/AppBaseLibrary/android/order/search/filter/GHSFutureOrderDialogFragment;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    goto :goto_0
.end method
