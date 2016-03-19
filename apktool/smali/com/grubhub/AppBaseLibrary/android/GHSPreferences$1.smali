.class Lcom/grubhub/AppBaseLibrary/android/GHSPreferences$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->onResume()V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences$1;->a:Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences$1;->a:Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;

    invoke-virtual {v0, p2}, Lcom/grubhub/AppBaseLibrary/android/GHSPreferences;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
