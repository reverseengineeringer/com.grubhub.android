.class Lcom/facebook/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p1, p0, Lcom/facebook/l;->a:I

    .line 74
    iput p2, p0, Lcom/facebook/l;->b:I

    .line 75
    return-void
.end method

.method synthetic constructor <init>(IILcom/facebook/j$1;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/facebook/l;-><init>(II)V

    return-void
.end method


# virtual methods
.method a(I)Z
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/facebook/l;->a:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/facebook/l;->b:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
