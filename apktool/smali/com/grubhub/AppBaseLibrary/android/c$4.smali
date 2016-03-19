.class final Lcom/grubhub/AppBaseLibrary/android/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/grubhub/AppBaseLibrary/android/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/d;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/grubhub/AppBaseLibrary/android/d;


# direct methods
.method constructor <init>(Lcom/grubhub/AppBaseLibrary/android/d;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/c$4;->a:Lcom/grubhub/AppBaseLibrary/android/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/c$4;->a:Lcom/grubhub/AppBaseLibrary/android/d;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/c$4;->a:Lcom/grubhub/AppBaseLibrary/android/d;

    invoke-interface {v0, p1}, Lcom/grubhub/AppBaseLibrary/android/d;->a(Landroid/content/DialogInterface;)V

    .line 99
    :cond_0
    return-void
.end method
