.class public Lcom/grubhub/AppBaseLibrary/android/c/b/a;
.super Lcom/grubhub/AppBaseLibrary/android/c/b/b;
.source "SourceFile"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/c/b/e;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/f/b;

    invoke-direct {v0, p5}, Lcom/grubhub/AppBaseLibrary/android/utils/f/b;-><init>(Z)V

    invoke-direct {p0, p1, p2, v0}, Lcom/grubhub/AppBaseLibrary/android/c/b/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/c/b/e;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/utils/f/a;)V

    .line 18
    iput-object p3, p0, Lcom/grubhub/AppBaseLibrary/android/c/b/a;->b:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/grubhub/AppBaseLibrary/android/c/b/a;->c:Landroid/graphics/drawable/Drawable;

    .line 20
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/c/b/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/c/b/a;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
