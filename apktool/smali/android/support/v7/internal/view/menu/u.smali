.class public Landroid/support/v7/internal/view/menu/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/w;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# static fields
.field static final a:I


# instance fields
.field b:Z

.field private final c:Landroid/content/Context;

.field private final d:Landroid/view/LayoutInflater;

.field private final e:Landroid/support/v7/internal/view/menu/i;

.field private final f:Landroid/support/v7/internal/view/menu/v;

.field private final g:Z

.field private final h:I

.field private final i:I

.field private final j:I

.field private k:Landroid/view/View;

.field private l:Landroid/support/v7/widget/o;

.field private m:Landroid/view/ViewTreeObserver;

.field private n:Landroid/support/v7/internal/view/menu/x;

.field private o:Landroid/view/ViewGroup;

.field private p:Z

.field private q:I

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    sget v0, Landroid/support/v7/a/i;->abc_popup_menu_item_layout:I

    sput v0, Landroid/support/v7/internal/view/menu/u;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/i;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 84
    const/4 v4, 0x0

    sget v5, Landroid/support/v7/a/b;->popupMenuStyle:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/internal/view/menu/u;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/i;Landroid/view/View;ZI)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/i;Landroid/view/View;ZI)V
    .locals 7

    .prologue
    .line 89
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/internal/view/menu/u;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/i;Landroid/view/View;ZII)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/i;Landroid/view/View;ZII)V
    .locals 3

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/internal/view/menu/u;->r:I

    .line 94
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/u;->c:Landroid/content/Context;

    .line 95
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/u;->d:Landroid/view/LayoutInflater;

    .line 96
    iput-object p2, p0, Landroid/support/v7/internal/view/menu/u;->e:Landroid/support/v7/internal/view/menu/i;

    .line 97
    new-instance v0, Landroid/support/v7/internal/view/menu/v;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/u;->e:Landroid/support/v7/internal/view/menu/i;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/view/menu/v;-><init>(Landroid/support/v7/internal/view/menu/u;Landroid/support/v7/internal/view/menu/i;)V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/u;->f:Landroid/support/v7/internal/view/menu/v;

    .line 98
    iput-boolean p4, p0, Landroid/support/v7/internal/view/menu/u;->g:Z

    .line 99
    iput p5, p0, Landroid/support/v7/internal/view/menu/u;->i:I

    .line 100
    iput p6, p0, Landroid/support/v7/internal/view/menu/u;->j:I

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Landroid/support/v7/a/e;->abc_config_prefDialogWidth:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/view/menu/u;->h:I

    .line 106
    iput-object p3, p0, Landroid/support/v7/internal/view/menu/u;->k:Landroid/view/View;

    .line 109
    invoke-virtual {p2, p0, p1}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/support/v7/internal/view/menu/w;Landroid/content/Context;)V

    .line 110
    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/view/menu/u;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/u;->g:Z

    return v0
.end method

.method static synthetic b(Landroid/support/v7/internal/view/menu/u;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/u;->d:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/internal/view/menu/u;)Landroid/support/v7/internal/view/menu/i;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/u;->e:Landroid/support/v7/internal/view/menu/i;

    return-object v0
.end method

.method private g()I
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 200
    .line 204
    iget-object v6, p0, Landroid/support/v7/internal/view/menu/u;->f:Landroid/support/v7/internal/view/menu/v;

    .line 205
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 206
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 207
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    move v5, v0

    move v2, v0

    move-object v4, v3

    move v1, v0

    .line 208
    :goto_0
    if-ge v5, v9, :cond_1

    .line 209
    invoke-interface {v6, v5}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 210
    if-eq v0, v2, :cond_3

    move v2, v0

    move-object v0, v3

    .line 215
    :goto_1
    iget-object v4, p0, Landroid/support/v7/internal/view/menu/u;->o:Landroid/view/ViewGroup;

    if-nez v4, :cond_0

    .line 216
    new-instance v4, Landroid/widget/FrameLayout;

    iget-object v10, p0, Landroid/support/v7/internal/view/menu/u;->c:Landroid/content/Context;

    invoke-direct {v4, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroid/support/v7/internal/view/menu/u;->o:Landroid/view/ViewGroup;

    .line 219
    :cond_0
    iget-object v4, p0, Landroid/support/v7/internal/view/menu/u;->o:Landroid/view/ViewGroup;

    invoke-interface {v6, v5, v0, v4}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 220
    invoke-virtual {v4, v7, v8}, Landroid/view/View;->measure(II)V

    .line 222
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 223
    iget v10, p0, Landroid/support/v7/internal/view/menu/u;->h:I

    if-lt v0, v10, :cond_2

    .line 224
    iget v1, p0, Landroid/support/v7/internal/view/menu/u;->h:I

    .line 230
    :cond_1
    return v1

    .line 225
    :cond_2
    if-le v0, v1, :cond_4

    .line 208
    :goto_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v0

    goto :goto_0

    :cond_3
    move-object v0, v4

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/u;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 121
    iput p1, p0, Landroid/support/v7/internal/view/menu/u;->r:I

    .line 122
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/i;)V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/i;Z)V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/u;->e:Landroid/support/v7/internal/view/menu/i;

    if-eq p1, v0, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/u;->e()V

    .line 303
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/u;->n:Landroid/support/v7/internal/view/menu/x;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/u;->n:Landroid/support/v7/internal/view/menu/x;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/view/menu/x;->a(Landroid/support/v7/internal/view/menu/i;Z)V

    goto :goto_0
.end method

.method public a(Landroid/support/v7/internal/view/menu/x;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/u;->n:Landroid/support/v7/internal/view/menu/x;

    .line 268
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/u;->k:Landroid/view/View;

    .line 114
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 117
    iput-boolean p1, p0, Landroid/support/v7/internal/view/menu/u;->b:Z

    .line 118
    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/ac;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 272
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/ac;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    new-instance v3, Landroid/support/v7/internal/view/menu/u;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/u;->c:Landroid/content/Context;

    iget-object v4, p0, Landroid/support/v7/internal/view/menu/u;->k:Landroid/view/View;

    invoke-direct {v3, v0, p1, v4}, Landroid/support/v7/internal/view/menu/u;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/i;Landroid/view/View;)V

    .line 274
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/u;->n:Landroid/support/v7/internal/view/menu/x;

    invoke-virtual {v3, v0}, Landroid/support/v7/internal/view/menu/u;->a(Landroid/support/v7/internal/view/menu/x;)V

    .line 277
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/ac;->size()I

    move-result v4

    move v0, v2

    .line 278
    :goto_0
    if-ge v0, v4, :cond_3

    .line 279
    invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/ac;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 280
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    move v0, v1

    .line 285
    :goto_1
    invoke-virtual {v3, v0}, Landroid/support/v7/internal/view/menu/u;->a(Z)V

    .line 287
    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/u;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/u;->n:Landroid/support/v7/internal/view/menu/x;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/u;->n:Landroid/support/v7/internal/view/menu/x;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/view/menu/x;->a(Landroid/support/v7/internal/view/menu/i;)Z

    .line 294
    :cond_0
    :goto_2
    return v1

    .line 278
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 294
    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public a(Landroid/support/v7/internal/view/menu/i;Landroid/support/v7/internal/view/menu/m;)Z
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x0

    return v0
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/u;->p:Z

    .line 260
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/u;->f:Landroid/support/v7/internal/view/menu/v;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/u;->f:Landroid/support/v7/internal/view/menu/v;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/v;->notifyDataSetChanged()V

    .line 263
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/support/v7/internal/view/menu/i;Landroid/support/v7/internal/view/menu/m;)Z
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public c()Landroid/support/v7/widget/o;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/u;->l:Landroid/support/v7/widget/o;

    return-object v0
.end method

.method public d()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 135
    new-instance v2, Landroid/support/v7/widget/o;

    iget-object v3, p0, Landroid/support/v7/internal/view/menu/u;->c:Landroid/content/Context;

    const/4 v4, 0x0

    iget v5, p0, Landroid/support/v7/internal/view/menu/u;->i:I

    iget v6, p0, Landroid/support/v7/internal/view/menu/u;->j:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/support/v7/widget/o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v2, p0, Landroid/support/v7/internal/view/menu/u;->l:Landroid/support/v7/widget/o;

    .line 136
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/u;->l:Landroid/support/v7/widget/o;

    invoke-virtual {v2, p0}, Landroid/support/v7/widget/o;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 137
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/u;->l:Landroid/support/v7/widget/o;

    invoke-virtual {v2, p0}, Landroid/support/v7/widget/o;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 138
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/u;->l:Landroid/support/v7/widget/o;

    iget-object v3, p0, Landroid/support/v7/internal/view/menu/u;->f:Landroid/support/v7/internal/view/menu/v;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/o;->a(Landroid/widget/ListAdapter;)V

    .line 139
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/u;->l:Landroid/support/v7/widget/o;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/o;->a(Z)V

    .line 141
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/u;->k:Landroid/view/View;

    .line 142
    if-eqz v2, :cond_3

    .line 143
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/u;->m:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_0

    move v0, v1

    .line 144
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/internal/view/menu/u;->m:Landroid/view/ViewTreeObserver;

    .line 145
    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/u;->m:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 146
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/u;->l:Landroid/support/v7/widget/o;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/o;->a(Landroid/view/View;)V

    .line 147
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/u;->l:Landroid/support/v7/widget/o;

    iget v2, p0, Landroid/support/v7/internal/view/menu/u;->r:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/o;->b(I)V

    .line 152
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/u;->p:Z

    if-nez v0, :cond_2

    .line 153
    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/u;->g()I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/view/menu/u;->q:I

    .line 154
    iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/u;->p:Z

    .line 157
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/u;->l:Landroid/support/v7/widget/o;

    iget v2, p0, Landroid/support/v7/internal/view/menu/u;->q:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/o;->d(I)V

    .line 158
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/u;->l:Landroid/support/v7/widget/o;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/o;->e(I)V

    .line 159
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/u;->l:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->c()V

    .line 160
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/u;->l:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->g()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 161
    :goto_0
    return v1

    :cond_3
    move v1, v0

    .line 149
    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/u;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/u;->l:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->a()V

    .line 168
    :cond_0
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/u;->l:Landroid/support/v7/widget/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/u;->l:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 171
    iput-object v1, p0, Landroid/support/v7/internal/view/menu/u;->l:Landroid/support/v7/widget/o;

    .line 172
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/u;->e:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->close()V

    .line 173
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/u;->m:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/u;->m:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/u;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/u;->m:Landroid/view/ViewTreeObserver;

    .line 175
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/u;->m:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 176
    iput-object v1, p0, Landroid/support/v7/internal/view/menu/u;->m:Landroid/view/ViewTreeObserver;

    .line 178
    :cond_1
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 235
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/u;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/u;->k:Landroid/view/View;

    .line 237
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 238
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/u;->e()V

    .line 244
    :cond_1
    :goto_0
    return-void

    .line 239
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/u;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/u;->l:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->c()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/u;->f:Landroid/support/v7/internal/view/menu/v;

    .line 187
    invoke-static {v0}, Landroid/support/v7/internal/view/menu/v;->a(Landroid/support/v7/internal/view/menu/v;)Landroid/support/v7/internal/view/menu/i;

    move-result-object v1

    invoke-virtual {v0, p3}, Landroid/support/v7/internal/view/menu/v;->a(I)Landroid/support/v7/internal/view/menu/m;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/view/MenuItem;I)Z

    .line 188
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 191
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/16 v1, 0x52

    if-ne p2, v1, :cond_0

    .line 192
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/u;->e()V

    .line 195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
