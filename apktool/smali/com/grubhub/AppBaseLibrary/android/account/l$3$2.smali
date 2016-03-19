.class Lcom/grubhub/AppBaseLibrary/android/account/l$3$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/account/l$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/account/l$3;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/l$3;)V
    .locals 0

    .prologue
    .line 836
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/l$3$2;->a:Lcom/grubhub/AppBaseLibrary/android/account/l$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 839
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/l$3$2;->a:Lcom/grubhub/AppBaseLibrary/android/account/l$3;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/l$3;->a:Lcom/grubhub/AppBaseLibrary/android/account/l;

    iget-object v0, v0, Lcom/grubhub/AppBaseLibrary/android/account/l;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/a;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/a;

    .line 840
    return-void
.end method
