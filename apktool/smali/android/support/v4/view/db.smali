.class public Landroid/support/v4/view/db;
.super Landroid/view/ViewGroup$LayoutParams;
.source "SourceFile"


# instance fields
.field childIndex:I

.field public gravity:I

.field public isDecor:Z

.field needsMeasure:Z

.field position:I

.field widthFactor:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2955
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2936
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/view/db;->widthFactor:F

    .line 2956
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 2959
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2936
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/view/db;->widthFactor:F

    .line 2961
    invoke-static {}, Landroid/support/v4/view/ViewPager;->g()[I

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2962
    const/4 v1, 0x0

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/db;->gravity:I

    .line 2963
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2964
    return-void
.end method
