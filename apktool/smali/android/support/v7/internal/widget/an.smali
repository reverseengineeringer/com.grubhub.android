.class Landroid/support/v7/internal/widget/an;
.super Landroid/support/v7/widget/o;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/widget/ao;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/SpinnerCompat;

.field private c:Ljava/lang/CharSequence;

.field private d:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/widget/SpinnerCompat;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 981
    iput-object p1, p0, Landroid/support/v7/internal/widget/an;->a:Landroid/support/v7/internal/widget/SpinnerCompat;

    .line 982
    invoke-direct {p0, p2, p3, p4}, Landroid/support/v7/widget/o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 984
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/an;->a(Landroid/view/View;)V

    .line 985
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/an;->a(Z)V

    .line 986
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/an;->a(I)V

    .line 988
    new-instance v0, Landroid/support/v7/internal/widget/an$1;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/internal/widget/an$1;-><init>(Landroid/support/v7/internal/widget/an;Landroid/support/v7/internal/widget/SpinnerCompat;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/an;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 999
    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/an;)Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 974
    iget-object v0, p0, Landroid/support/v7/internal/widget/an;->d:Landroid/widget/ListAdapter;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/widget/ListAdapter;)V
    .locals 0

    .prologue
    .line 1003
    invoke-super {p0, p1}, Landroid/support/v7/widget/o;->a(Landroid/widget/ListAdapter;)V

    .line 1004
    iput-object p1, p0, Landroid/support/v7/internal/widget/an;->d:Landroid/widget/ListAdapter;

    .line 1005
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1013
    iput-object p1, p0, Landroid/support/v7/internal/widget/an;->c:Ljava/lang/CharSequence;

    .line 1014
    return-void
.end method
