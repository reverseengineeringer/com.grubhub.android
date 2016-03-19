.class Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 215
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 218
    if-eqz p2, :cond_0

    .line 219
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->b(Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->c(Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 224
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->b(Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->b(Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->d(Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
