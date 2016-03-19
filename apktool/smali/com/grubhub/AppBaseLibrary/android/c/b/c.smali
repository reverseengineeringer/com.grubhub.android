.class public Lcom/grubhub/AppBaseLibrary/android/c/b/c;
.super Lcom/grubhub/AppBaseLibrary/android/c/b/b;
.source "SourceFile"


# instance fields
.field private b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/c/b/e;->NAV_DRAWER_LIST_OFFSET_LOG_OUT:Lcom/grubhub/AppBaseLibrary/android/c/b/e;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/utils/f/c;

    invoke-direct {v1}, Lcom/grubhub/AppBaseLibrary/android/utils/f/c;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lcom/grubhub/AppBaseLibrary/android/c/b/b;-><init>(Lcom/grubhub/AppBaseLibrary/android/c/b/e;Ljava/lang/String;Lcom/grubhub/AppBaseLibrary/android/utils/f/a;)V

    .line 16
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/c/b/c;->b:Landroid/graphics/drawable/Drawable;

    .line 17
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/c/b/c;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
