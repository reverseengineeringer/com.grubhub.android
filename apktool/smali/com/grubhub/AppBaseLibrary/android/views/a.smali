.class public Lcom/grubhub/AppBaseLibrary/android/views/a;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/views/a;->a(Landroid/content/Context;Z)V

    .line 32
    return-void
.end method

.method private a(Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 40
    const v1, 0x7f03002e

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 42
    const v0, 0x7f0f00bf

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/a;->e:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f0f00c1

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/a;->f:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f0f00c4

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/a;->g:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0f00c6

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/a;->h:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f0f00c0

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/a;->a:Landroid/widget/ImageView;

    .line 48
    const v0, 0x7f0f00c2

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/a;->b:Landroid/widget/ImageView;

    .line 49
    const v0, 0x7f0f00c5

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/a;->c:Landroid/widget/ImageView;

    .line 50
    const v0, 0x7f0f00c7

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/a;->d:Landroid/widget/ImageView;

    .line 52
    const v0, 0x7f0f00c3

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/views/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 54
    if-eqz p2, :cond_0

    .line 55
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    :goto_0
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/views/a;->requestLayout()V

    .line 61
    return-void

    .line 57
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 67
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 68
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/a;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 69
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/a;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 70
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/a;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 72
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 73
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 74
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 75
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 76
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 82
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 83
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/a;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 84
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/a;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 85
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/a;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 87
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 88
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 89
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 90
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 91
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 97
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 98
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/a;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 99
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/a;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 100
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/a;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 102
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 103
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 104
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 105
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 106
    return-void
.end method
