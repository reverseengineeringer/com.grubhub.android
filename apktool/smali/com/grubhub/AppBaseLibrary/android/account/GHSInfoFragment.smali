.class public abstract Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->a(Landroid/view/View;Landroid/widget/ScrollView;)V

    .line 67
    return-void
.end method

.method protected a(Landroid/view/View;Landroid/widget/ScrollView;)V
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->a(Landroid/view/View;Landroid/widget/ScrollView;I)V

    .line 77
    return-void
.end method

.method protected a(Landroid/view/View;Landroid/widget/ScrollView;I)V
    .locals 1

    .prologue
    .line 87
    const v0, 0x7f020042

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    if-eqz p2, :cond_0

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p2, v0, p3}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 40
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/q;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300aa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 42
    const v0, 0x7f0f0316

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 43
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    if-eqz p2, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/q;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0042

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 52
    :goto_0
    new-instance v0, Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 54
    const/16 v1, 0x37

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 55
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 57
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 58
    return-void

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/q;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0057

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method protected d()V
    .locals 3

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    .line 107
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/account/GHSInfoFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 108
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 109
    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 110
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 112
    :cond_0
    return-void
.end method

.method protected abstract d_()V
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 27
    const v0, 0x7f0f0369

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 31
    :cond_0
    return-void
.end method
