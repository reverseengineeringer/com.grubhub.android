.class final Lcom/grubhub/AppBaseLibrary/android/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 72
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/c$2;->a:Lcom/grubhub/AppBaseLibrary/android/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/c$2;->a:Lcom/grubhub/AppBaseLibrary/android/d;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/c$2;->a:Lcom/grubhub/AppBaseLibrary/android/d;

    invoke-interface {v0, p1, p2}, Lcom/grubhub/AppBaseLibrary/android/d;->b(Landroid/content/DialogInterface;I)V

    .line 78
    :cond_0
    return-void
.end method
