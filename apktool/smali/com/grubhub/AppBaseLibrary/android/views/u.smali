.class Lcom/grubhub/AppBaseLibrary/android/views/u;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private a:Lcom/grubhub/AppBaseLibrary/android/views/s;

.field private b:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;)V
    .locals 0

    .prologue
    .line 558
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 559
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/u;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    .line 560
    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/views/s;)V
    .locals 0

    .prologue
    .line 568
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/u;->a:Lcom/grubhub/AppBaseLibrary/android/views/s;

    .line 569
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 573
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 575
    :pswitch_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/u;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    if-eqz v0, :cond_1

    .line 576
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/u;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSLoadingViewFlipper;->a()V

    .line 579
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 580
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/u;->a:Lcom/grubhub/AppBaseLibrary/android/views/s;

    if-eqz v1, :cond_0

    .line 581
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/u;->a:Lcom/grubhub/AppBaseLibrary/android/views/s;

    invoke-interface {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/views/s;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 573
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
