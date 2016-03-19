.class Landroid/support/v7/widget/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/q;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/q;)V
    .locals 0

    .prologue
    .line 1482
    iput-object p1, p0, Landroid/support/v7/widget/s;->a:Landroid/support/v7/widget/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/q;Landroid/support/v7/widget/o$1;)V
    .locals 0

    .prologue
    .line 1482
    invoke-direct {p0, p1}, Landroid/support/v7/widget/s;-><init>(Landroid/support/v7/widget/q;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1485
    iget-object v0, p0, Landroid/support/v7/widget/s;->a:Landroid/support/v7/widget/q;

    invoke-static {v0}, Landroid/support/v7/widget/q;->b(Landroid/support/v7/widget/q;)V

    .line 1486
    return-void
.end method
