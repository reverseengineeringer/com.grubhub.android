.class Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 255
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment$6;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 259
    const-string v0, "CREDIT_CARD_SCAN"

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a/a;->a(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment$6;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;->f(Lcom/grubhub/AppBaseLibrary/android/account/GHSPaymentInfoFragment;)V

    .line 261
    return-void
.end method
