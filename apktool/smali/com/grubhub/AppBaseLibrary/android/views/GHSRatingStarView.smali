.class public Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field protected a:I

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->b:Landroid/widget/ImageView;

    .line 20
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->c:Landroid/widget/ImageView;

    .line 21
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->d:Landroid/widget/ImageView;

    .line 22
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->e:Landroid/widget/ImageView;

    .line 23
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->f:Landroid/widget/ImageView;

    .line 24
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->g:Landroid/view/View;

    .line 30
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->a(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->b:Landroid/widget/ImageView;

    .line 20
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->c:Landroid/widget/ImageView;

    .line 21
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->d:Landroid/widget/ImageView;

    .line 22
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->e:Landroid/widget/ImageView;

    .line 23
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->f:Landroid/widget/ImageView;

    .line 24
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->g:Landroid/view/View;

    .line 35
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->a(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->b:Landroid/widget/ImageView;

    .line 20
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->c:Landroid/widget/ImageView;

    .line 21
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->d:Landroid/widget/ImageView;

    .line 22
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->e:Landroid/widget/ImageView;

    .line 23
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->f:Landroid/widget/ImageView;

    .line 24
    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->g:Landroid/view/View;

    .line 40
    invoke-direct {p0, p1}, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->a(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 50
    const v1, 0x7f0300b4

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 52
    const v0, 0x7f0f0322

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->b:Landroid/widget/ImageView;

    .line 53
    const v0, 0x7f0f0323

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->c:Landroid/widget/ImageView;

    .line 54
    const v0, 0x7f0f0324

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->d:Landroid/widget/ImageView;

    .line 55
    const v0, 0x7f0f0325

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->e:Landroid/widget/ImageView;

    .line 56
    const v0, 0x7f0f0326

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->f:Landroid/widget/ImageView;

    .line 57
    return-void
.end method


# virtual methods
.method public getRatings()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->a:I

    return v0
.end method

.method public setRatings(I)V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->f:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iput p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->a:I

    .line 79
    const v0, 0x7f020162

    .line 80
    const v1, 0x7f020161

    .line 82
    iget v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->a:I

    packed-switch v2, :pswitch_data_0

    .line 127
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 128
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 129
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 130
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 131
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 84
    :pswitch_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 85
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 86
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 87
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 88
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 91
    :pswitch_1
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 92
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 93
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 94
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 95
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 98
    :pswitch_2
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 99
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 100
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 101
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 102
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 105
    :pswitch_3
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 106
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 107
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 108
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 109
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 112
    :pswitch_4
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 113
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 114
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 115
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 116
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 119
    :pswitch_5
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 120
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 121
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 122
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 123
    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSRatingStarView;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
