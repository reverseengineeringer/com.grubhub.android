.class public Landroid/support/v7/widget/af;
.super Landroid/support/v7/app/b;
.source "SourceFile"


# instance fields
.field b:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 1827
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/b;-><init>(II)V

    .line 1820
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/af;->b:I

    .line 1828
    const v0, 0x800013

    iput v0, p0, Landroid/support/v7/widget/af;->a:I

    .line 1829
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 1823
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1820
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/af;->b:I

    .line 1824
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/app/b;)V
    .locals 1

    .prologue
    .line 1847
    invoke-direct {p0, p1}, Landroid/support/v7/app/b;-><init>(Landroid/support/v7/app/b;)V

    .line 1820
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/af;->b:I

    .line 1848
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/af;)V
    .locals 1

    .prologue
    .line 1841
    invoke-direct {p0, p1}, Landroid/support/v7/app/b;-><init>(Landroid/support/v7/app/b;)V

    .line 1820
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/af;->b:I

    .line 1843
    iget v0, p1, Landroid/support/v7/widget/af;->b:I

    iput v0, p0, Landroid/support/v7/widget/af;->b:I

    .line 1844
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 1858
    invoke-direct {p0, p1}, Landroid/support/v7/app/b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1820
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/af;->b:I

    .line 1859
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .prologue
    .line 1851
    invoke-direct {p0, p1}, Landroid/support/v7/app/b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1820
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/af;->b:I

    .line 1854
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/af;->a(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1855
    return-void
.end method


# virtual methods
.method a(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .prologue
    .line 1862
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Landroid/support/v7/widget/af;->leftMargin:I

    .line 1863
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Landroid/support/v7/widget/af;->topMargin:I

    .line 1864
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Landroid/support/v7/widget/af;->rightMargin:I

    .line 1865
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Landroid/support/v7/widget/af;->bottomMargin:I

    .line 1866
    return-void
.end method
