.class public Lcom/grubhub/AppBaseLibrary/android/yummyRummy/GHSYummyRummyFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static a()Lcom/grubhub/AppBaseLibrary/android/yummyRummy/GHSYummyRummyFragment;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/yummyRummy/GHSYummyRummyFragment;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/yummyRummy/GHSYummyRummyFragment;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lcom/grubhub/AppBaseLibrary/android/yummyRummy/GHSYummyRummyFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/yummyRummy/GHSYummyRummyFragment;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/grubhub/AppBaseLibrary/android/yummyRummy/GHSYummyRummyFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/yummyRummy/GHSYummyRummyFragment;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 32
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    .line 37
    const v0, 0x7f03007d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 40
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->I()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/yummyRummy/GHSYummyRummyFragment;->a:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->K()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/yummyRummy/GHSYummyRummyFragment;->b:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/yummyRummy/GHSYummyRummyFragment;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/yummyRummy/GHSYummyRummyFragment;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->a()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/GHSApplication;->b()Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/b/b;->J()Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    move-object v0, v1

    .line 79
    :goto_0
    return-object v0

    .line 49
    :cond_1
    const v0, 0x7f0f02ad

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 50
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/yummyRummy/GHSYummyRummyFragment$1;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/yummyRummy/GHSYummyRummyFragment$1;-><init>(Lcom/grubhub/AppBaseLibrary/android/yummyRummy/GHSYummyRummyFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v0, 0x7f0f02ae

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/views/GHSButton;

    .line 59
    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/yummyRummy/GHSYummyRummyFragment$2;

    invoke-direct {v2, p0}, Lcom/grubhub/AppBaseLibrary/android/yummyRummy/GHSYummyRummyFragment$2;-><init>(Lcom/grubhub/AppBaseLibrary/android/yummyRummy/GHSYummyRummyFragment;)V

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/views/GHSButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a()Lcom/grubhub/AppBaseLibrary/android/utils/c/h;

    move-result-object v0

    new-instance v2, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;

    const-string v3, "on-site marketing"

    const-string v4, "yummy rummy"

    const-string v5, "play now_impression"

    invoke-direct {v2, v3, v4, v5}, Lcom/grubhub/AppBaseLibrary/android/utils/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/grubhub/AppBaseLibrary/android/utils/c/h;->a(Lcom/grubhub/AppBaseLibrary/android/utils/c/c;)V

    move-object v0, v1

    .line 79
    goto :goto_0
.end method
