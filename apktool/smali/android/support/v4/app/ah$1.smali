.class final Landroid/support/v4/app/ah$1;
.super Landroid/transition/Transition$EpicenterCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/ah;->a(Ljava/lang/Object;Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Landroid/support/v4/app/ah$1;->a:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Landroid/support/v4/app/ah$1;->a:Landroid/graphics/Rect;

    return-object v0
.end method
