.class public Lcom/grubhub/AppBaseLibrary/android/utils/f/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/grubhub/AppBaseLibrary/android/utils/f/a;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/f/b;->a:Z

    .line 24
    return-void
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/c/b/b;Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const v5, 0x7f0f0307

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 37
    check-cast p1, Lcom/grubhub/AppBaseLibrary/android/c/b/a;

    .line 40
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/c/b/a;->f()I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 41
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 44
    const v3, 0x7f03009e

    invoke-virtual {v0, v3, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 45
    const v0, 0x7f0f0306

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/c/b/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/c/b/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/c/b/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/c/b/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :goto_0
    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/c/b/a;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    const v0, 0x7f0f0305

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/grubhub/AppBaseLibrary/android/c/b/a;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    :cond_0
    const v0, 0x7f0f0308

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 64
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/utils/f/b;->a:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    move-object v0, v3

    .line 71
    :goto_2
    return-object v0

    .line 54
    :cond_1
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 64
    goto :goto_1

    .line 68
    :cond_3
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_2
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/grubhub/AppBaseLibrary/android/utils/f/b;->a:Z

    .line 33
    return-void
.end method
