.class Lcom/grubhub/AppBaseLibrary/android/account/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/g;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/account/g;->b:Ljava/lang/String;

    .line 551
    iput p3, p0, Lcom/grubhub/AppBaseLibrary/android/account/g;->c:I

    .line 552
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/g;)I
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/g;->c:I

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const v3, 0x1080027

    .line 556
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/g;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->d(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/g;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->g(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/g;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->g(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/g;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/g;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    const v2, 0x7f0803e3

    .line 558
    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/g;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    const v2, 0x7f0803e2

    .line 559
    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/g;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    const v2, 0x7f0803e0

    .line 560
    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/account/g$1;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/account/g$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/g;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 566
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 567
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 644
    :goto_0
    return-void

    .line 570
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/g;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/g;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    const v2, 0x7f08013b

    .line 571
    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/g;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;

    const v2, 0x7f08013a

    .line 572
    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedAddressListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/account/g$3;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/account/g$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/g;)V

    .line 573
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/account/g$2;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/account/g$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/g;)V

    .line 634
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 640
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 641
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
