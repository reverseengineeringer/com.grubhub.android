.class Lcom/grubhub/AppBaseLibrary/android/views/m$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/views/m;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/views/m;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/views/m;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/views/m$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/m;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->a(Lcom/grubhub/AppBaseLibrary/android/views/m;)Lcom/grubhub/AppBaseLibrary/android/views/p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/views/m$1;->a:Lcom/grubhub/AppBaseLibrary/android/views/m;

    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/views/m;->a(Lcom/grubhub/AppBaseLibrary/android/views/m;)Lcom/grubhub/AppBaseLibrary/android/views/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/views/p;->d()V

    .line 146
    :cond_0
    return-void
.end method
