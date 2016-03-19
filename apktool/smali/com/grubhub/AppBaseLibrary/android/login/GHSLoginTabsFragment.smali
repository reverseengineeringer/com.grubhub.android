.class public Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/support/v4/view/ViewPager;

.field private b:Landroid/support/v4/app/ac;

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Lcom/grubhub/AppBaseLibrary/android/login/c;

.field private g:Landroid/app/ActionBar$TabListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 229
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment$3;

    invoke-direct {v0, p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment$3;-><init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->g:Landroid/app/ActionBar$TabListener;

    return-void
.end method

.method public static a(IZ)Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    const-string v1, "initial_tab_position"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    const-string v1, "prefill_login_email"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 68
    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;

    invoke-direct {v1}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;-><init>()V

    .line 69
    invoke-virtual {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 71
    return-object v1
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;Lcom/grubhub/AppBaseLibrary/android/login/c;)Lcom/grubhub/AppBaseLibrary/android/login/c;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->f:Lcom/grubhub/AppBaseLibrary/android/login/c;

    return-object p1
.end method

.method private a(I)V
    .locals 5

    .prologue
    .line 213
    packed-switch p1, :pswitch_data_0

    .line 227
    :goto_0
    return-void

    .line 215
    :pswitch_0
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CORE_ORDERING_EXP:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->USER_AUTHENTICATION:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v4, "create account"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    goto :goto_0

    .line 220
    :pswitch_1
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/e;->CORE_ORDERING_EXP:Lcom/grubhub/AppBaseLibrary/android/utils/c/e;

    sget-object v3, Lcom/grubhub/AppBaseLibrary/android/utils/c/f;->USER_AUTHENTICATION:Lcom/grubhub/AppBaseLibrary/android/utils/c/f;

    const-string v4, "login"

    invoke-direct {v1, v2, v3, v4}, Lcom/grubhub/AppBaseLibrary/android/utils/c/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/utils/c/e;Lcom/grubhub/AppBaseLibrary/android/utils/c/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/b;)V

    goto :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->a:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic c(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;)Lcom/grubhub/AppBaseLibrary/android/login/c;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->f:Lcom/grubhub/AppBaseLibrary/android/login/c;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    if-eqz p1, :cond_0

    .line 79
    const-string v0, "initial_tab_position"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->c:I

    .line 84
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->setHasOptionsMenu(Z)V

    .line 85
    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "initial_tab_position"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->c:I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 89
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 91
    const v0, 0x7f030059

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 92
    const v0, 0x7f0f019c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->a:Landroid/support/v4/view/ViewPager;

    .line 94
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment$1;

    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->getChildFragmentManager()Landroid/support/v4/app/w;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;Landroid/support/v4/app/w;)V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->b:Landroid/support/v4/app/ac;

    .line 113
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->a:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment$2;

    invoke-direct {v3, p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;)V

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/de;)V

    .line 130
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->a:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->b:Landroid/support/v4/app/ac;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/bi;)V

    .line 133
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->d:Z

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->a:Landroid/support/v4/view/ViewPager;

    iget v3, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->c:I

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/q;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0201c6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    return-object v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x21

    const/4 v6, 0x0

    .line 171
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 173
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/q;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_2

    .line 177
    iput-boolean v6, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->d:Z

    .line 178
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 180
    invoke-virtual {v0}, Landroid/app/ActionBar;->getTabCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->getActivity()Landroid/support/v4/app/q;

    move-result-object v1

    const v2, 0x7f08039e

    invoke-virtual {p0, v2}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/h;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 183
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0084

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 185
    new-instance v3, Landroid/text/SpannableString;

    const v4, 0x7f080079

    invoke-virtual {p0, v4}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 186
    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/views/GHSTypefaceSpan;

    invoke-direct {v4, v8, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTypefaceSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;I)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {v3, v4, v6, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 187
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    iget-object v4, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->g:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    const v4, 0x7f0801ac

    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 189
    new-instance v3, Landroid/text/SpannableString;

    const v4, 0x7f080082

    invoke-virtual {p0, v4}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 190
    new-instance v4, Lcom/grubhub/AppBaseLibrary/android/views/GHSTypefaceSpan;

    invoke-direct {v4, v8, v1, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSTypefaceSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;I)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v3, v4, v6, v1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 191
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->g:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    const v2, 0x7f0801ad

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 194
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->a:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->a:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->c:I

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 200
    :cond_0
    iget v1, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->c:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 203
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->d:Z

    .line 205
    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 164
    const-string v1, "initial_tab_position"

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->a:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 166
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 167
    return-void

    .line 164
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 147
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->e:Z

    if-nez v0, :cond_2

    .line 150
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->c:I

    if-nez v0, :cond_0

    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->a(I)V

    .line 154
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->e:Z

    .line 160
    :cond_1
    :goto_0
    return-void

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->a:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/login/GHSLoginTabsFragment;->a(I)V

    goto :goto_0
.end method
