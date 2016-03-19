.class public Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Landroid/widget/EditText;

.field private e:Lcom/grubhub/AppBaseLibrary/android/address/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 166
    return-void
.end method

.method public static a(Ljava/lang/String;ZZ)Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;
    .locals 3

    .prologue
    .line 49
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;-><init>()V

    .line 50
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 51
    const-string v2, "address_text"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v2, "show_pickup_option"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 53
    const-string v2, "show_retry_text"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 56
    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;->a:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;->e:Lcom/grubhub/AppBaseLibrary/android/address/b;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;->e:Lcom/grubhub/AppBaseLibrary/android/address/b;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/address/b;->a(Ljava/lang/String;)V

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;->dismiss()V

    .line 161
    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;->a()V

    return-void
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;)Lcom/grubhub/AppBaseLibrary/android/address/b;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;->e:Lcom/grubhub/AppBaseLibrary/android/address/b;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 63
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/grubhub/AppBaseLibrary/android/address/b;

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/address/b;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;->e:Lcom/grubhub/AppBaseLibrary/android/address/b;

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/address/b;

    if-eqz v0, :cond_0

    .line 66
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/address/b;

    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;->e:Lcom/grubhub/AppBaseLibrary/android/address/b;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "address_text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;->a:Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "show_pickup_option"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;->b:Z

    .line 76
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "show_retry_text"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;->c:Z

    .line 77
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03004a

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 82
    const v0, 0x7f0f013f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;->d:Landroid/widget/EditText;

    .line 83
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;->d:Landroid/widget/EditText;

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 99
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;->d:Landroid/widget/EditText;

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 110
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;->d:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 112
    const v0, 0x7f0f013e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 113
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;->c:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 115
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 116
    const v0, 0x7f0800c9

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 117
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;->b:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0800c6

    :goto_1
    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment$3;

    invoke-direct {v4, p0}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;)V

    .line 118
    invoke-virtual {v2, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0800e1

    .line 124
    invoke-virtual {v0, v2, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 125
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;->b:Z

    if-eqz v0, :cond_0

    .line 126
    const v0, 0x7f0800c7

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment$4;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment$4;-><init>(Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;)V

    invoke-virtual {v3, v0, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 135
    :cond_0
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 136
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 137
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 138
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 141
    return-object v0

    .line 113
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 117
    :cond_2
    const v0, 0x7f0803e5

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressValidationDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 149
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
