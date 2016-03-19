.class Lio/card/payment/CardIOActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/card/payment/CardIOActivity;->nextActivity()V
.end annotation


# instance fields
.field final synthetic this$0:Lio/card/payment/CardIOActivity;


# direct methods
.method constructor <init>(Lio/card/payment/CardIOActivity;)V
    .locals 0

    .prologue
    .line 755
    iput-object p1, p0, Lio/card/payment/CardIOActivity$2;->this$0:Lio/card/payment/CardIOActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 758
    # getter for: Lio/card/payment/CardIOActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lio/card/payment/CardIOActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CardIOActivity.nextActivity().post(Runnable)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-object v0, p0, Lio/card/payment/CardIOActivity$2;->this$0:Lio/card/payment/CardIOActivity;

    invoke-virtual {v0}, Lio/card/payment/CardIOActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 761
    iget-object v0, p0, Lio/card/payment/CardIOActivity$2;->this$0:Lio/card/payment/CardIOActivity;

    invoke-virtual {v0}, Lio/card/payment/CardIOActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 763
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/card/payment/CardIOActivity$2;->this$0:Lio/card/payment/CardIOActivity;

    const-class v2, Lio/card/payment/DataEntryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 765
    iget-object v1, p0, Lio/card/payment/CardIOActivity$2;->this$0:Lio/card/payment/CardIOActivity;

    # getter for: Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;
    invoke-static {v1}, Lio/card/payment/CardIOActivity;->access$200(Lio/card/payment/CardIOActivity;)Lio/card/payment/OverlayView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 766
    iget-object v1, p0, Lio/card/payment/CardIOActivity$2;->this$0:Lio/card/payment/CardIOActivity;

    # getter for: Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;
    invoke-static {v1}, Lio/card/payment/CardIOActivity;->access$200(Lio/card/payment/CardIOActivity;)Lio/card/payment/OverlayView;

    move-result-object v1

    invoke-virtual {v1}, Lio/card/payment/OverlayView;->markupCard()V

    .line 767
    sget-object v1, Lio/card/payment/CardIOActivity;->markedCardImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    sget-object v1, Lio/card/payment/CardIOActivity;->markedCardImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 768
    sget-object v1, Lio/card/payment/CardIOActivity;->markedCardImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 770
    :cond_0
    iget-object v1, p0, Lio/card/payment/CardIOActivity$2;->this$0:Lio/card/payment/CardIOActivity;

    # getter for: Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;
    invoke-static {v1}, Lio/card/payment/CardIOActivity;->access$200(Lio/card/payment/CardIOActivity;)Lio/card/payment/OverlayView;

    move-result-object v1

    invoke-virtual {v1}, Lio/card/payment/OverlayView;->getCardImage()Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lio/card/payment/CardIOActivity;->markedCardImage:Landroid/graphics/Bitmap;

    .line 772
    :cond_1
    iget-object v1, p0, Lio/card/payment/CardIOActivity$2;->this$0:Lio/card/payment/CardIOActivity;

    # getter for: Lio/card/payment/CardIOActivity;->mDetectedCard:Lio/card/payment/CreditCard;
    invoke-static {v1}, Lio/card/payment/CardIOActivity;->access$300(Lio/card/payment/CardIOActivity;)Lio/card/payment/CreditCard;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 773
    const-string v1, "io.card.payment.scanResult"

    iget-object v2, p0, Lio/card/payment/CardIOActivity$2;->this$0:Lio/card/payment/CardIOActivity;

    # getter for: Lio/card/payment/CardIOActivity;->mDetectedCard:Lio/card/payment/CreditCard;
    invoke-static {v2}, Lio/card/payment/CardIOActivity;->access$300(Lio/card/payment/CardIOActivity;)Lio/card/payment/CreditCard;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 774
    iget-object v1, p0, Lio/card/payment/CardIOActivity$2;->this$0:Lio/card/payment/CardIOActivity;

    const/4 v2, 0x0

    # setter for: Lio/card/payment/CardIOActivity;->mDetectedCard:Lio/card/payment/CreditCard;
    invoke-static {v1, v2}, Lio/card/payment/CardIOActivity;->access$302(Lio/card/payment/CardIOActivity;Lio/card/payment/CreditCard;)Lio/card/payment/CreditCard;

    .line 785
    :goto_0
    iget-object v1, p0, Lio/card/payment/CardIOActivity$2;->this$0:Lio/card/payment/CardIOActivity;

    invoke-virtual {v1}, Lio/card/payment/CardIOActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 787
    const/high16 v1, 0x40810000    # 4.03125f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 789
    iget-object v1, p0, Lio/card/payment/CardIOActivity$2;->this$0:Lio/card/payment/CardIOActivity;

    # getter for: Lio/card/payment/CardIOActivity;->REQUEST_DATA_ENTRY:I
    invoke-static {}, Lio/card/payment/CardIOActivity;->access$400()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lio/card/payment/CardIOActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 790
    return-void

    .line 782
    :cond_2
    const-string v1, "io.card.payment.manualEntryScanResult"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method
