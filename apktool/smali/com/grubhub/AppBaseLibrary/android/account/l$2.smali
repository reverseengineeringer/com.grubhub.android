.class Lcom/grubhub/AppBaseLibrary/android/account/l$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/account/l;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/account/l;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/l;)V
    .locals 0

    .prologue
    .line 864
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/l$2;->a:Lcom/grubhub/AppBaseLibrary/android/account/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 867
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/l$2;->a:Lcom/grubhub/AppBaseLibrary/android/account/l;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/l;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;Ljava/lang/String;)V

    .line 868
    return-void
.end method
