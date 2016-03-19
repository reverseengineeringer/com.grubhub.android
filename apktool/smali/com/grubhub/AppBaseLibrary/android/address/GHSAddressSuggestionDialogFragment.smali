.class public Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Dialog;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/grubhub/AppBaseLibrary/android/address/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 145
    return-void
.end method

.method public static a(Ljava/util/ArrayList;)Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;",
            ">;)",
            "Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    const-string v1, "addresses_key"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 39
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;

    invoke-direct {v1}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;-><init>()V

    .line 40
    invoke-virtual {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 41
    return-object v1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;)Lcom/grubhub/AppBaseLibrary/android/address/a;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;->d:Lcom/grubhub/AppBaseLibrary/android/address/a;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;->c:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 123
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 124
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;

    .line 126
    if-eqz v0, :cond_0

    .line 127
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/order/a;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_0
    const/4 v0, 0x6

    if-lt v1, v0, :cond_3

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;->c:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 137
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;->c:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 138
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;->c:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 140
    :cond_2
    return-void

    .line 124
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;->a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    return-void
.end method

.method private a(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V
    .locals 6

    .prologue
    .line 105
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;->d:Lcom/grubhub/AppBaseLibrary/android/address/a;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;->d:Lcom/grubhub/AppBaseLibrary/android/address/a;

    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/address/a;->b(Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;)V

    .line 110
    :cond_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "address verification"

    const-string v3, "suggested addresses-do you mean modal_CTA"

    const-string v4, "selected suggested address"

    const-string v5, "1"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 115
    return-void
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;->b:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 48
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/grubhub/AppBaseLibrary/android/address/a;

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/address/a;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;->d:Lcom/grubhub/AppBaseLibrary/android/address/a;

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    instance-of v0, p1, Lcom/grubhub/AppBaseLibrary/android/address/a;

    if-eqz v0, :cond_0

    .line 51
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/address/a;

    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;->d:Lcom/grubhub/AppBaseLibrary/android/address/a;

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 6

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 92
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "address verification"

    const-string v3, "suggested addresses-do you mean modal_CTA"

    const-string v4, "modal dismissed"

    const-string v5, "1"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 97
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "addresses_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;->b:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    const v2, 0x1090003

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;->c:Landroid/widget/ArrayAdapter;

    .line 60
    invoke-direct {p0}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;->a()V

    .line 61
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 66
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v2, "address verification"

    const-string v3, "suggested addresses-do you mean modal_impression"

    const-string v4, "modal displayed"

    const-string v5, "1"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    .line 72
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 73
    const v1, 0x7f0800a6

    invoke-virtual {p0, v1}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;->c:Landroid/widget/ArrayAdapter;

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;)V

    .line 74
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 81
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;->a:Landroid/app/Dialog;

    .line 82
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;->a:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 84
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/address/GHSAddressSuggestionDialogFragment;->a:Landroid/app/Dialog;

    return-object v0
.end method
