.class Lcom/grubhub/AppBaseLibrary/android/account/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

.field private b:Ljava/lang/String;

.field private c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 799
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/account/l;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 800
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/account/l;->b:Ljava/lang/String;

    .line 801
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/account/l;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    .line 802
    iput-object p4, p0, Lcom/grubhub/AppBaseLibrary/android/account/l;->d:Ljava/lang/String;

    .line 803
    iput-object p5, p0, Lcom/grubhub/AppBaseLibrary/android/account/l;->e:Ljava/lang/String;

    .line 804
    iput-object p6, p0, Lcom/grubhub/AppBaseLibrary/android/account/l;->f:Ljava/lang/String;

    .line 805
    iput-object p7, p0, Lcom/grubhub/AppBaseLibrary/android/account/l;->g:Ljava/lang/String;

    .line 806
    iput-object p8, p0, Lcom/grubhub/AppBaseLibrary/android/account/l;->h:Ljava/lang/String;

    .line 807
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/account/l;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/l;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .locals 5

    .prologue
    .line 879
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/l;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/l;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/account/l$4;

    invoke-direct {v4, p0}, Lcom/grubhub/AppBaseLibrary/android/account/l$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/l;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;-><init>(Landroid/content/Context;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/i;)V

    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    .line 888
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/l;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->j(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/l$5;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/l$5;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/l;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/e;)V

    .line 895
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/l;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->j(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/account/l$6;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/account/l$6;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/l;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/net/d;)V

    .line 902
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/l;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->j(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/a/f/c;->a()V

    .line 903
    return-void
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/account/l;)Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/l;->c:Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel$PaymentTypes;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 910
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/l;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->b(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)Lcom/grubhub/AppBaseLibrary/android/account/o;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/l;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->a(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/account/o;->a(Ljava/util/List;)V

    .line 911
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/l;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/l;->h:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 912
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/l;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/account/l;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-static {v2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->b(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)Lcom/grubhub/AppBaseLibrary/android/account/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/grubhub/AppBaseLibrary/android/account/o;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->b(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;Z)V

    .line 913
    return-void
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/account/l;)V
    .locals 0

    .prologue
    .line 789
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/l;->a()V

    return-void
.end method

.method static synthetic d(Lcom/grubhub/AppBaseLibrary/android/account/l;)V
    .locals 0

    .prologue
    .line 789
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/account/l;->b()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const v3, 0x1080027

    .line 811
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/l;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->c(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/account/l;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/l;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-static {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->f(Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/l;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/l;->e:Ljava/lang/String;

    .line 813
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/l;->g:Ljava/lang/String;

    .line 814
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/l;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    const v2, 0x7f0803e0

    .line 815
    invoke-virtual {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/account/l$1;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/account/l$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/l;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 819
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 820
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 873
    :goto_0
    return-void

    .line 823
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/l;->a:Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;

    invoke-virtual {v1}, Lcom/grubhub/AppBaseLibrary/android/account/GHSSavedPaymentListFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/l;->d:Ljava/lang/String;

    .line 824
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/account/l;->f:Ljava/lang/String;

    .line 825
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/account/l$3;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/account/l$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/l;)V

    .line 826
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/account/l$2;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/account/l$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/account/l;)V

    .line 864
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 870
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 871
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
