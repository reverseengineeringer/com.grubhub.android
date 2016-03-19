.class public Landroid/support/v7/internal/widget/aq;
.super Landroid/widget/Button;
.source "SourceFile"


# static fields
.field private static final a:[I


# instance fields
.field private final b:Landroid/support/v7/internal/widget/av;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/internal/widget/aq;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100d4
        0x1010034
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 42
    const v0, 0x1010048

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/aq;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    sget-object v0, Landroid/support/v7/internal/widget/aq;->a:[I

    invoke-static {p1, p2, v0, p3, v2}, Landroid/support/v7/internal/widget/bc;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/bc;

    move-result-object v0

    .line 50
    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/bc;->d(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/bc;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/aq;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/bc;->c()Landroid/support/v7/internal/widget/av;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/aq;->b:Landroid/support/v7/internal/widget/av;

    .line 56
    return-void
.end method


# virtual methods
.method public setBackgroundResource(I)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Landroid/support/v7/internal/widget/aq;->b:Landroid/support/v7/internal/widget/av;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/av;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/aq;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    return-void
.end method
