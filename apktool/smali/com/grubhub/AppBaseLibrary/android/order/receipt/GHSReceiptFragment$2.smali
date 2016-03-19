.class Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/LinearLayout;

.field final synthetic b:Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment$2;->b:Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment;

    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment$2;->a:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 294
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 295
    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 309
    :goto_0
    return v0

    .line 297
    :pswitch_0
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment$2;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 301
    :pswitch_1
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment$2;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->requestDisallowInterceptTouchEvent(Z)V

    move v0, v1

    .line 302
    goto :goto_0

    .line 305
    :pswitch_2
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/order/receipt/GHSReceiptFragment$2;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 295
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
