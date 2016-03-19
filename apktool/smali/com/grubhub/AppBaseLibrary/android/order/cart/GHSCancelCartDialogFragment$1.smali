.class Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;->a(Landroid/widget/Button;Landroid/widget/Button;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment$1;->a:Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/order/cart/GHSCancelCartDialogFragment;->dismiss()V

    .line 202
    return-void
.end method
