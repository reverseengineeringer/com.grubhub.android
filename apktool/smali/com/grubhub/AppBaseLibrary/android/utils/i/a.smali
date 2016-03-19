.class public Lcom/grubhub/AppBaseLibrary/android/utils/i/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/grubhub/AppBaseLibrary/android/utils/i/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static a()Lcom/grubhub/AppBaseLibrary/android/utils/i/a;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/i/a;->a:Lcom/grubhub/AppBaseLibrary/android/utils/i/a;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/grubhub/AppBaseLibrary/android/utils/i/a;

    invoke-direct {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/i/a;-><init>()V

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/i/a;->a:Lcom/grubhub/AppBaseLibrary/android/utils/i/a;

    .line 20
    :cond_0
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/utils/i/a;->a:Lcom/grubhub/AppBaseLibrary/android/utils/i/a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/grubhub/AppBaseLibrary/android/GHSApplication;)V
    .locals 0

    .prologue
    .line 26
    return-void
.end method
