.class Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->b(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment$7;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 268
    if-eqz p2, :cond_0

    .line 269
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment$7;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->g(Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f08006f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment$7;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->g(Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f08006e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
