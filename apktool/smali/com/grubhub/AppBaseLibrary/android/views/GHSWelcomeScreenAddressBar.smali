.class public Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;
.super Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;
.source "SourceFile"


# instance fields
.field private i:Lcom/grubhub/AppBaseLibrary/android/views/aa;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const v3, 0x7f0d0051

    const/16 v2, 0x8

    .line 54
    invoke-super {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 57
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    const v1, 0x7f08053e

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->setHint(I)V

    .line 60
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->setTextColor(I)V

    .line 61
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->setHintTextColor(I)V

    .line 62
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->setBackgroundResource(I)V

    .line 65
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar$1;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 87
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;->b:Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar$2;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;->c:Landroid/widget/ImageView;

    const v1, 0x7f0200b0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;->d:Landroid/widget/ImageView;

    const v1, 0x7f02010f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;->a:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 116
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;->a:Landroid/view/View;

    const v1, 0x7f0f00b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;->a:Landroid/view/View;

    const v1, 0x7f0f00ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 120
    :cond_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;->e:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 122
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;->e:Landroid/view/View;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar$3;

    invoke-direct {v1, p0}, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    :cond_4
    return-void
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;->i:Lcom/grubhub/AppBaseLibrary/android/views/aa;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;->i:Lcom/grubhub/AppBaseLibrary/android/views/aa;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/views/aa;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 152
    :goto_0
    return v0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;->i:Lcom/grubhub/AppBaseLibrary/android/views/aa;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/views/aa;->b()V

    .line 149
    const/4 v0, 0x1

    goto :goto_0

    .line 152
    :cond_1
    invoke-super {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSAddressBar;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setListener(Lcom/grubhub/AppBaseLibrary/android/views/aa;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSWelcomeScreenAddressBar;->i:Lcom/grubhub/AppBaseLibrary/android/views/aa;

    .line 50
    return-void
.end method
