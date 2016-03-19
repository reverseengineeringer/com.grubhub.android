.class public Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;
.super Landroid/widget/ListView;
.source "SourceFile"


# instance fields
.field private a:Lcom/grubhub/AppBaseLibrary/android/views/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method


# virtual methods
.method protected onOverScrolled(IIZZ)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->a:Lcom/grubhub/AppBaseLibrary/android/views/i;

    if-eqz v0, :cond_0

    if-ltz p2, :cond_0

    .line 39
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->a:Lcom/grubhub/AppBaseLibrary/android/views/i;

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/views/i;->e()V

    .line 41
    :cond_0
    return-void
.end method

.method public setOverScrollListener(Lcom/grubhub/AppBaseLibrary/android/views/i;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/GHSOverScrollListView;->a:Lcom/grubhub/AppBaseLibrary/android/views/i;

    .line 34
    return-void
.end method
